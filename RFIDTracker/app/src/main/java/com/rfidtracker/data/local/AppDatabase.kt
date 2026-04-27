package com.rfidtracker.data.local

import androidx.room.Database
import androidx.room.RoomDatabase
import com.rfidtracker.data.model.Asset
import com.rfidtracker.data.model.RfidTag
import com.rfidtracker.data.model.ScanSession

@Database(
    entities = [RfidTag::class, ScanSession::class, Asset::class],
    version = 1,
    exportSchema = true
)
abstract class AppDatabase : RoomDatabase() {
    abstract fun rfidTagDao(): RfidTagDao
    abstract fun scanSessionDao(): ScanSessionDao
    abstract fun assetDao(): AssetDao

    companion object {
        const val DATABASE_NAME = "rfid_tracker.db"
    }
}
