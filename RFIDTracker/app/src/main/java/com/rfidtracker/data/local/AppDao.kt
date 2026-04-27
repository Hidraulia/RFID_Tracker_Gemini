package com.rfidtracker.data.local

import androidx.room.*
import com.rfidtracker.data.model.Asset
import com.rfidtracker.data.model.RfidTag
import com.rfidtracker.data.model.ScanSession
import kotlinx.coroutines.flow.Flow

// ─── RfidTag DAO ───────────────────────────────────────────────────────────────

@Dao
interface RfidTagDao {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(tag: RfidTag)

    @Query("SELECT * FROM rfid_tags ORDER BY timestamp DESC")
    fun getAllTags(): Flow<List<RfidTag>>

    @Query("SELECT * FROM rfid_tags WHERE epc = :epc LIMIT 1")
    suspend fun getTagByEpc(epc: String): RfidTag?

    @Query("SELECT COUNT(*) FROM rfid_tags")
    fun getTagCount(): Flow<Int>

    @Query("DELETE FROM rfid_tags")
    suspend fun clearAll()

    @Query("SELECT * FROM rfid_tags WHERE timestamp >= :sinceMillis ORDER BY timestamp DESC")
    fun getTagsSince(sinceMillis: Long): Flow<List<RfidTag>>
}

// ─── ScanSession DAO ───────────────────────────────────────────────────────────

@Dao
interface ScanSessionDao {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(session: ScanSession): Long

    @Update
    suspend fun update(session: ScanSession)

    @Query("SELECT * FROM scan_sessions ORDER BY startTime DESC")
    fun getAllSessions(): Flow<List<ScanSession>>

    @Query("SELECT * FROM scan_sessions WHERE id = :id LIMIT 1")
    suspend fun getSessionById(id: Long): ScanSession?

    @Query("SELECT COUNT(*) FROM scan_sessions")
    fun getSessionCount(): Flow<Int>
}

// ─── Asset DAO ─────────────────────────────────────────────────────────────────

@Dao
interface AssetDao {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(asset: Asset)

    @Update
    suspend fun update(asset: Asset)

    @Query("SELECT * FROM assets ORDER BY name ASC")
    fun getAllAssets(): Flow<List<Asset>>

    @Query("SELECT * FROM assets WHERE epc = :epc LIMIT 1")
    suspend fun getAssetByEpc(epc: String): Asset?

    @Query("SELECT * FROM assets WHERE name LIKE '%' || :query || '%' OR description LIKE '%' || :query || '%'")
    fun searchAssets(query: String): Flow<List<Asset>>
}
