package com.rfidtracker.data.repository

import com.rfidtracker.data.local.AssetDao
import com.rfidtracker.data.local.RfidTagDao
import com.rfidtracker.data.local.ScanSessionDao
import com.rfidtracker.data.model.Asset
import com.rfidtracker.data.model.AssetStatus
import com.rfidtracker.data.model.RfidTag
import com.rfidtracker.data.model.ScanSession
import com.rfidtracker.rfid.RfidReader
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.onEach
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class RfidRepository @Inject constructor(
    private val rfidReader: RfidReader,
    private val tagDao: RfidTagDao,
    private val sessionDao: ScanSessionDao,
    private val assetDao: AssetDao
) {
    // ── Lector ────────────────────────────────────────────────────────────────

    val readerState = rfidReader.state

    suspend fun initReader() = rfidReader.initialize()

    fun startContinuousScan(): Flow<RfidTag> = rfidReader.startScan().onEach { tag ->
        // Persistir automáticamente cada lectura
        saveTag(tag)
        // Actualizar el activo vinculado si existe
        assetDao.getAssetByEpc(tag.epc)?.let { asset ->
            assetDao.update(
                asset.copy(
                    lastSeenTimestamp = tag.timestamp,
                    status = AssetStatus.IN_STOCK
                )
            )
        }
    }

    suspend fun stopScan() = rfidReader.stopScan()

    suspend fun singleScan(timeoutMs: Long = 2000L) = rfidReader.singleScan(timeoutMs).also { result ->
        result.getOrNull()?.forEach { saveTag(it) }
    }

    suspend fun setPower(dBm: Int) = rfidReader.setPower(dBm)
    suspend fun getPower() = rfidReader.getPower()
    suspend fun releaseReader() = rfidReader.release()

    // ── Tags ──────────────────────────────────────────────────────────────────

    suspend fun saveTag(tag: RfidTag) = tagDao.insert(tag)
    fun getAllTags(): Flow<List<RfidTag>> = tagDao.getAllTags()
    fun getTagCount(): Flow<Int> = tagDao.getTagCount()
    suspend fun clearAllTags() = tagDao.clearAll()

    // ── Sesiones ──────────────────────────────────────────────────────────────

    suspend fun startSession(location: String? = null, operator: String? = null): Long =
        sessionDao.insert(ScanSession(location = location, operatorName = operator))

    suspend fun endSession(sessionId: Long, totalTags: Int, uniqueTags: Int) {
        sessionDao.getSessionById(sessionId)?.let { session ->
            sessionDao.update(
                session.copy(
                    endTime = System.currentTimeMillis(),
                    totalTagsRead = totalTags,
                    uniqueTagsRead = uniqueTags
                )
            )
        }
    }

    fun getAllSessions(): Flow<List<ScanSession>> = sessionDao.getAllSessions()

    // ── Activos ───────────────────────────────────────────────────────────────

    suspend fun saveAsset(asset: Asset) = assetDao.insert(asset)
    fun getAllAssets(): Flow<List<Asset>> = assetDao.getAllAssets()
    fun searchAssets(query: String): Flow<List<Asset>> = assetDao.searchAssets(query)
    suspend fun getAssetByEpc(epc: String): Asset? = assetDao.getAssetByEpc(epc)
}
