.class public abstract Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;
.super Ljava/lang/Object;
.source "BluetoothPeripheralManagerCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvertiseFailure(Lcom/peripheral/ble/AdvertiseError;)V
    .locals 0

    return-void
.end method

.method public onAdvertisingStarted(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0

    return-void
.end method

.method public onAdvertisingStopped()V
    .locals 0

    return-void
.end method

.method public onCentralConnected(Lcom/peripheral/ble/BluetoothCentral;)V
    .locals 0

    return-void
.end method

.method public onCentralDisconnected(Lcom/peripheral/ble/BluetoothCentral;)V
    .locals 0

    return-void
.end method

.method public onCharacteristicRead(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/peripheral/ble/ReadResponse;
    .locals 1

    .line 58
    new-instance p1, Lcom/peripheral/ble/ReadResponse;

    sget-object p2, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p1, p2, v0}, Lcom/peripheral/ble/ReadResponse;-><init>(Lcom/peripheral/ble/GattStatus;[B)V

    return-object p1
.end method

.method public onCharacteristicWrite(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lcom/peripheral/ble/GattStatus;
    .locals 0

    .line 76
    sget-object p1, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    return-object p1
.end method

.method public onCharacteristicWriteCompleted(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 0

    return-void
.end method

.method public onDescriptorRead(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattDescriptor;)Lcom/peripheral/ble/ReadResponse;
    .locals 1

    .line 103
    new-instance p1, Lcom/peripheral/ble/ReadResponse;

    sget-object p2, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p1, p2, v0}, Lcom/peripheral/ble/ReadResponse;-><init>(Lcom/peripheral/ble/GattStatus;[B)V

    return-object p1
.end method

.method public onDescriptorWrite(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattDescriptor;[B)Lcom/peripheral/ble/GattStatus;
    .locals 0

    .line 121
    sget-object p1, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    return-object p1
.end method

.method public onDescriptorWriteCompleted(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattDescriptor;[B)V
    .locals 0

    return-void
.end method

.method public onNotificationSent(Lcom/peripheral/ble/BluetoothCentral;[BLandroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/GattStatus;)V
    .locals 0

    return-void
.end method

.method public onNotifyingDisabled(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    return-void
.end method

.method public onNotifyingEnabled(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    return-void
.end method

.method public onServiceAdded(Lcom/peripheral/ble/GattStatus;Landroid/bluetooth/BluetoothGattService;)V
    .locals 0

    return-void
.end method
