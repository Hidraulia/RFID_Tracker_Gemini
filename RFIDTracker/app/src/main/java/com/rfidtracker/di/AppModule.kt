package com.rfidtracker.di

import android.content.Context
import androidx.room.Room
import com.rfidtracker.BuildConfig
import com.rfidtracker.data.local.AppDatabase
import com.rfidtracker.data.local.AssetDao
import com.rfidtracker.data.local.RfidTagDao
import com.rfidtracker.data.local.ScanSessionDao
import com.rfidtracker.rfid.RfidReader
import com.rfidtracker.rfid.impl.PdaRfidReader
import com.rfidtracker.rfid.mock.MockRfidReader
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object AppModule {

    // ── Base de datos ──────────────────────────────────────────────────────────

    @Provides
    @Singleton
    fun provideDatabase(@ApplicationContext context: Context): AppDatabase =
        Room.databaseBuilder(
            context,
            AppDatabase::class.java,
            AppDatabase.DATABASE_NAME
        ).build()

    @Provides
    fun provideRfidTagDao(db: AppDatabase): RfidTagDao = db.rfidTagDao()

    @Provides
    fun provideScanSessionDao(db: AppDatabase): ScanSessionDao = db.scanSessionDao()

    @Provides
    fun provideAssetDao(db: AppDatabase): AssetDao = db.assetDao()

    // ── Lector RFID ───────────────────────────────────────────────────────────
    //
    // El flavor de compilación determina qué implementación se inyecta:
    //   - mock  → MockRfidReader  (desarrollo, sin hardware)
    //   - pda   → PdaRfidReader   (dispositivo real con SDK)
    //
    // Para cambiar a la implementación real: compila con el flavor 'pda'
    // y completa PdaRfidReader con el SDK del fabricante.

    @Provides
    @Singleton
    fun provideRfidReader(
        mockReader: MockRfidReader,
        pdaReader: PdaRfidReader
    ): RfidReader = if (BuildConfig.USE_MOCK_READER) mockReader else pdaReader
}
