package com.rfidtracker.data.model

import androidx.room.Entity
import androidx.room.PrimaryKey

/**
 * Representa una etiqueta RFID leída.
 *
 * @property epc  Electronic Product Code — identificador único de la etiqueta
 * @property rssi Potencia de señal recibida (dBm). Más cercano a 0 = más fuerte.
 * @property tid  Tag Identifier (solo lectura, chip-level UID). Puede ser null si el lector no lo devuelve.
 * @property antennaId Antena por la que se detectó (útil en lectores multi-antena)
 * @property timestamp Momento exacto de la lectura (epoch millis)
 */
@Entity(tableName = "rfid_tags")
data class RfidTag(
    @PrimaryKey
    val epc: String,
    val rssi: Int,
    val tid: String? = null,
    val antennaId: Int = 1,
    val timestamp: Long = System.currentTimeMillis(),
    val readCount: Int = 1
)
