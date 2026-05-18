.class public abstract Lcom/peripheral/ble/BluetoothPeripheralCallback;
.super Ljava/lang/Object;
.source "BluetoothPeripheralCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/peripheral/ble/BluetoothPeripheralCallback$NULL;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBondLost(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    return-void
.end method

.method public onBondingFailed(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    return-void
.end method

.method public onBondingStarted(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    return-void
.end method

.method public onBondingSucceeded(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    return-void
.end method

.method public onCharacteristicUpdate(Lcom/peripheral/ble/BluetoothPeripheral;[BLandroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/GattStatus;)V
    .locals 0

    return-void
.end method

.method public onCharacteristicWrite(Lcom/peripheral/ble/BluetoothPeripheral;[BLandroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/GattStatus;)V
    .locals 0

    return-void
.end method

.method public onConnectionUpdated(Lcom/peripheral/ble/BluetoothPeripheral;IIILcom/peripheral/ble/GattStatus;)V
    .locals 0

    return-void
.end method

.method public onDescriptorRead(Lcom/peripheral/ble/BluetoothPeripheral;[BLandroid/bluetooth/BluetoothGattDescriptor;Lcom/peripheral/ble/GattStatus;)V
    .locals 0

    return-void
.end method

.method public onDescriptorWrite(Lcom/peripheral/ble/BluetoothPeripheral;[BLandroid/bluetooth/BluetoothGattDescriptor;Lcom/peripheral/ble/GattStatus;)V
    .locals 0

    return-void
.end method

.method public onMtuChanged(Lcom/peripheral/ble/BluetoothPeripheral;ILcom/peripheral/ble/GattStatus;)V
    .locals 0

    return-void
.end method

.method public onNotificationStateUpdate(Lcom/peripheral/ble/BluetoothPeripheral;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/GattStatus;)V
    .locals 0

    return-void
.end method

.method public onPhyUpdate(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/PhyType;Lcom/peripheral/ble/PhyType;Lcom/peripheral/ble/GattStatus;)V
    .locals 0

    return-void
.end method

.method public onReadRemoteRssi(Lcom/peripheral/ble/BluetoothPeripheral;ILcom/peripheral/ble/GattStatus;)V
    .locals 0

    return-void
.end method

.method public onServicesDiscovered(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    return-void
.end method
