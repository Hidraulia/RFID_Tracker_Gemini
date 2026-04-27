package com.rfidtracker.ui.scan

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rfidtracker.data.model.RfidTag
import com.rfidtracker.data.repository.RfidRepository
import com.rfidtracker.rfid.ReaderState
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import javax.inject.Inject

data class ScanUiState(
    val isInitialized: Boolean = false,
    val isScanning: Boolean = false,
    val readerState: ReaderState = ReaderState.UNINITIALIZED,
    val scannedTags: List<RfidTag> = emptyList(),
    val uniqueTagCount: Int = 0,
    val totalReadCount: Int = 0,
    val error: String? = null,
    val currentSessionId: Long? = null
)

@HiltViewModel
class ScanViewModel @Inject constructor(
    private val repository: RfidRepository
) : ViewModel() {

    private val _uiState = MutableStateFlow(ScanUiState())
    val uiState: StateFlow<ScanUiState> = _uiState.asStateFlow()

    private var scanJob: Job? = null
    private val sessionTags = mutableMapOf<String, RfidTag>() // EPC → último tag

    init {
        observeReaderState()
        initReader()
    }

    private fun observeReaderState() {
        viewModelScope.launch {
            repository.readerState.collect { state ->
                _uiState.update { it.copy(readerState = state) }
            }
        }
    }

    private fun initReader() {
        viewModelScope.launch {
            repository.initReader()
                .onFailure { error ->
                    _uiState.update { it.copy(error = "Error al inicializar el lector: ${error.message}") }
                }
                .onSuccess {
                    _uiState.update { it.copy(isInitialized = true) }
                }
        }
    }

    fun startScan() {
        if (_uiState.value.isScanning) return
        sessionTags.clear()

        viewModelScope.launch {
            val sessionId = repository.startSession()
            _uiState.update { it.copy(isScanning = true, currentSessionId = sessionId, error = null) }
        }

        scanJob = viewModelScope.launch {
            repository.startContinuousScan().collect { tag ->
                sessionTags[tag.epc] = tag
                _uiState.update { state ->
                    state.copy(
                        scannedTags = sessionTags.values.sortedByDescending { it.timestamp },
                        uniqueTagCount = sessionTags.size,
                        totalReadCount = state.totalReadCount + 1
                    )
                }
            }
        }
    }

    fun stopScan() {
        viewModelScope.launch {
            repository.stopScan()
            scanJob?.cancel()
            scanJob = null

            val state = _uiState.value
            state.currentSessionId?.let { sessionId ->
                repository.endSession(sessionId, state.totalReadCount, state.uniqueTagCount)
            }

            _uiState.update { it.copy(isScanning = false) }
        }
    }

    fun clearScan() {
        sessionTags.clear()
        _uiState.update { it.copy(scannedTags = emptyList(), uniqueTagCount = 0, totalReadCount = 0) }
    }

    fun dismissError() = _uiState.update { it.copy(error = null) }

    override fun onCleared() {
        super.onCleared()
        viewModelScope.launch { repository.releaseReader() }
    }
}
