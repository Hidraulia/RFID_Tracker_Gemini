.class interface abstract Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peripheral/ble/BluetoothPeripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "InternalCallback"
.end annotation


# virtual methods
.method public abstract connectFailed(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V
.end method

.method public abstract connected(Lcom/peripheral/ble/BluetoothPeripheral;)V
.end method

.method public abstract connecting(Lcom/peripheral/ble/BluetoothPeripheral;)V
.end method

.method public abstract disconnected(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V
.end method

.method public abstract disconnecting(Lcom/peripheral/ble/BluetoothPeripheral;)V
.end method

.method public abstract getPincode(Lcom/peripheral/ble/BluetoothPeripheral;)Ljava/lang/String;
.end method
