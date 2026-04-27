package com.rfidtracker.data.model

import androidx.room.Entity
import androidx.room.PrimaryKey

/**
 * Sesión de escaneo: agrupa todas las lecturas realizadas en una misma operación.
 */
@Entity(tableName = "scan_sessions")
data class ScanSession(
    @PrimaryKey(autoGenerate = true)
    val id: Long = 0,
    val startTime: Long = System.currentTimeMillis(),
    val endTime: Long? = null,
    val totalTagsRead: Int = 0,
    val uniqueTagsRead: Int = 0,
    val location: String? = null,
    val operatorName: String? = null,
    val notes: String? = null
)
