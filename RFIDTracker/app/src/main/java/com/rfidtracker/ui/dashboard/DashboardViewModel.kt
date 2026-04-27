package com.rfidtracker.ui.dashboard

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.rfidtracker.data.repository.RfidRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.*
import javax.inject.Inject

data class DashboardUiState(
    val totalTags: Int = 0,
    val totalSessions: Int = 0,
    val recentTagsToday: Int = 0,
    val isLoading: Boolean = true
)

@HiltViewModel
class DashboardViewModel @Inject constructor(
    private val repository: RfidRepository
) : ViewModel() {

    val uiState: StateFlow<DashboardUiState> = combine(
        repository.getTagCount(),
        repository.getAllSessions().map { it.size },
        repository.getAllTags().map { tags ->
            val todayStart = System.currentTimeMillis() - 86_400_000L
            tags.count { it.timestamp >= todayStart }
        }
    ) { tagCount, sessionCount, tagsToday ->
        DashboardUiState(
            totalTags = tagCount,
            totalSessions = sessionCount,
            recentTagsToday = tagsToday,
            isLoading = false
        )
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5000),
        initialValue = DashboardUiState()
    )
}
