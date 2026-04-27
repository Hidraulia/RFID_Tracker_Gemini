package com.rfidtracker.rfid

import com.rfidtracker.data.model.RfidTag
import kotlinx.coroutines.flow.Flow

/**
 * Contrato del lector RFID.
 *
 * Esta interfaz es el punto de integración con el SDK del dispositivo PDA.
 * Para añadir soporte a un nuevo dispositivo:
 *   1. Crea una clase en `rfid/impl/` que implemente esta interfaz
 *   2. Úsala en el módulo de DI (RfidModule) en el flavor `pda`
 *
 * Todas las operaciones son suspend o Flow para no bloquear el hilo principal.
 */
interface RfidReader {

    /**
     * Inicializa el hardware del lector. Llamar antes de cualquier operación.
     * Lanza [RfidException] si el hardware no está disponible.
     */
    suspend fun initialize(): Result<Unit>

    /**
     * Inicia el escaneo continuo. Emite un [RfidTag] por cada etiqueta detectada.
     * El Flow se cancela cuando se llama a [stopScan].
     */
    fun startScan(): Flow<RfidTag>

    /**
     * Detiene el escaneo en curso.
     */
    suspend fun stopScan()

    /**
     * Escaneo de un solo disparo: lee todas las etiquetas en campo y retorna la lista.
     * Útil para inventarios puntuales.
     */
    suspend fun singleScan(timeoutMs: Long = 2000L): Result<List<RfidTag>>

    /**
     * Establece la potencia de transmisión de la antena (dBm).
     * Rango típico: 0–33 dBm. Consulta el manual del dispositivo.
     */
    suspend fun setPower(dBm: Int): Result<Unit>

    /**
     * Obtiene la potencia actual de transmisión.
     */
    suspend fun getPower(): Result<Int>

    /**
     * Libera los recursos del hardware. Llamar en onDestroy.
     */
    suspend fun release()

    /**
     * Estado actual del lector.
     */
    val state: Flow<ReaderState>
}

/** Estados posibles del lector */
enum class ReaderState {
    UNINITIALIZED,
    READY,
    SCANNING,
    ERROR,
    RELEASED
}

/** Excepción específica del lector RFID */
class RfidException(message: String, cause: Throwable? = null) : Exception(message, cause)
