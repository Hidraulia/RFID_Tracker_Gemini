package com.rfidtracker.rfid.mock

import com.rfidtracker.data.model.RfidTag
import com.rfidtracker.rfid.ReaderState
import com.rfidtracker.rfid.RfidReader
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.flow
import javax.inject.Inject
import kotlin.random.Random

/**
 * Implementación simulada del lector RFID para desarrollo y pruebas.
 *
 * Genera etiquetas RFID aleatorias de forma periódica, imitando el comportamiento
 * de un lector real. NO requiere ningún hardware.
 *
 * Para sustituir por el SDK real:
 *   → Crea `rfid/impl/PdaRfidReader.kt` implementando [RfidReader]
 *   → Cámbialo en RfidModule (flavor pda)
 */
class MockRfidReader @Inject constructor() : RfidReader {

    private val _state = MutableStateFlow(ReaderState.UNINITIALIZED)
    override val state: Flow<ReaderState> = _state

    private var currentPower = 27 // dBm por defecto
    private var scanning = false

    // Pool de EPCs de ejemplo (formato GS1 EPC-96)
    private val sampleEpcs = listOf(
        "E2000017221101682451B9B7",
        "E2000017221101682451B9C1",
        "E2000017221101682451B9D4",
        "3034257BF40C2C6D1200000A",
        "3034257BF40C2C6D1200000B",
        "3034257BF40C2C6D1200000C",
        "3034257BF40C2C6D1200000D",
        "E28011606000020887A4CCA9",
        "E28011606000020887A4CCB1",
        "E28011606000020887A4CCC5"
    )

    override suspend fun initialize(): Result<Unit> {
        delay(500) // Simular tiempo de inicialización del hardware
        _state.value = ReaderState.READY
        return Result.success(Unit)
    }

    override fun startScan(): Flow<RfidTag> = flow {
        _state.value = ReaderState.SCANNING
        scanning = true
        val seenEpcs = mutableSetOf<String>()

        while (scanning) {
            // Simular 1-3 etiquetas detectadas por ciclo
            val count = Random.nextInt(1, 4)
            repeat(count) {
                val epc = sampleEpcs.random()
                seenEpcs.add(epc)
                emit(
                    RfidTag(
                        epc = epc,
                        rssi = Random.nextInt(-70, -30),
                        tid = if (Random.nextBoolean()) "E2801160${Random.nextInt(1000, 9999)}" else null,
                        antennaId = Random.nextInt(1, 3),
                        timestamp = System.currentTimeMillis(),
                        readCount = 1
                    )
                )
            }
            delay(Random.nextLong(400, 1200)) // Intervalo variable entre lecturas
        }
        _state.value = ReaderState.READY
    }

    override suspend fun stopScan() {
        scanning = false
        if (_state.value == ReaderState.SCANNING) {
            delay(100)
            _state.value = ReaderState.READY
        }
    }

    override suspend fun singleScan(timeoutMs: Long): Result<List<RfidTag>> {
        _state.value = ReaderState.SCANNING
        delay(timeoutMs)
        _state.value = ReaderState.READY

        val count = Random.nextInt(2, 8)
        val tags = sampleEpcs.shuffled().take(count).map { epc ->
            RfidTag(
                epc = epc,
                rssi = Random.nextInt(-65, -35),
                antennaId = 1,
                timestamp = System.currentTimeMillis()
            )
        }
        return Result.success(tags)
    }

    override suspend fun setPower(dBm: Int): Result<Unit> {
        if (dBm !in 0..33) return Result.failure(IllegalArgumentException("Potencia fuera de rango: $dBm dBm"))
        currentPower = dBm
        return Result.success(Unit)
    }

    override suspend fun getPower(): Result<Int> = Result.success(currentPower)

    override suspend fun release() {
        scanning = false
        _state.value = ReaderState.RELEASED
    }
}
