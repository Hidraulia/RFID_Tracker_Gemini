.class Lcom/peripheral/ble/BleDevice$2;
.super Ljava/lang/Object;
.source "BleDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BleDevice;->startReceive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BleDevice;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BleDevice;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/peripheral/ble/BleDevice$2;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 336
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice$2;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {v0}, Lcom/peripheral/ble/BleDevice;->access$700(Lcom/peripheral/ble/BleDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice$2;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {v0}, Lcom/peripheral/ble/BleDevice;->access$800(Lcom/peripheral/ble/BleDevice;)Lcom/peripheral/ble/BluetoothPeripheral;

    move-result-object v0

    const-wide/16 v1, 0x32

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/peripheral/ble/BleDevice$2;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {v0}, Lcom/peripheral/ble/BleDevice;->access$900(Lcom/peripheral/ble/BleDevice;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice$2;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {v0}, Lcom/peripheral/ble/BleDevice;->access$800(Lcom/peripheral/ble/BleDevice;)Lcom/peripheral/ble/BluetoothPeripheral;

    move-result-object v0

    iget-object v3, p0, Lcom/peripheral/ble/BleDevice$2;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {v3}, Lcom/peripheral/ble/BleDevice;->access$900(Lcom/peripheral/ble/BleDevice;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/peripheral/ble/BluetoothPeripheral;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 344
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0xbb8

    .line 348
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method
