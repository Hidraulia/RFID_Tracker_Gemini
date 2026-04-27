package com.rfidtracker.data.model

import androidx.room.Entity
import androidx.room.PrimaryKey

/**
 * Activo físico asociado a una etiqueta RFID.
 * Permite enriquecer la información cruda del EPC con datos de negocio.
 */
@Entity(tableName = "assets")
data class Asset(
    @PrimaryKey
    val epc: String,                    // Vincula con RfidTag.epc
    val name: String,
    val description: String? = null,
    val category: String? = null,
    val location: String? = null,
    val status: AssetStatus = AssetStatus.UNKNOWN,
    val lastSeenTimestamp: Long? = null
)

enum class AssetStatus {
    IN_STOCK,
    OUT_OF_STOCK,
    IN_TRANSIT,
    LOST,
    UNKNOWN
}
