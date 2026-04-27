# RFID Tracker — Android PDA App

Aplicación Android para rastreo de activos mediante RFID, diseñada para PDAs industriales.

## Arquitectura

```
RFIDTracker/
├── data/
│   ├── model/          → Entidades (RfidTag, ScanEvent, Asset)
│   ├── local/          → Base de datos Room (DAO, Database)
│   └── repository/     → Repositorios (fuente única de verdad)
├── rfid/
│   ├── RfidReader.kt   → Interfaz del lector (contrato del SDK)
│   ├── mock/           → Implementación simulada (sin SDK)
│   └── impl/           → Implementación real del SDK PDA ← (completar aquí)
└── ui/
    ├── dashboard/      → Pantalla principal con estadísticas
    ├── scan/           → Pantalla de escaneo en tiempo real
    ├── history/        → Historial de lecturas
    └── settings/       → Configuración del lector
```

## Integración del SDK real

1. Añade el SDK de tu PDA como dependencia en `app/build.gradle`
2. Implementa `RfidReader` en `rfid/impl/PdaRfidReader.kt`
3. Cambia el binding en `RfidModule.kt` de `MockRfidReader` a `PdaRfidReader`

## Stack tecnológico

- **Lenguaje**: Kotlin
- **UI**: Jetpack Compose + Material 3
- **Base de datos**: Room (SQLite)
- **Inyección de dependencias**: Hilt
- **Concurrencia**: Coroutines + Flow
- **Arquitectura**: MVVM + Clean Architecture
