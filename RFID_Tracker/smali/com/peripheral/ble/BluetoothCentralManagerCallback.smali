.class public abstract Lcom/peripheral/ble/BluetoothCentralManagerCallback;
.super Ljava/lang/Object;
.source "BluetoothCentralManagerCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothAdapterStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onConnectedPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    return-void
.end method

.method public onConnectingPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    return-void
.end method

.method public onConnectionFailed(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V
    .locals 0

    return-void
.end method

.method public onDisconnectedPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V
    .locals 0

    return-void
.end method

.method public onDisconnectingPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    return-void
.end method

.method public onDiscoveredPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    return-void
.end method

.method public onScanFailed(Lcom/peripheral/ble/ScanFailure;)V
    .locals 0

    return-void
.end method
