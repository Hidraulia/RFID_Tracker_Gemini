.class Lcom/peripheral/ble/BleDevice$1;
.super Lcom/peripheral/ble/BluetoothPeripheralCallback;
.source "BleDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peripheral/ble/BleDevice;
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

    .line 35
    iput-object p1, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheralCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicUpdate(Lcom/peripheral/ble/BluetoothPeripheral;[BLandroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/GattStatus;)V
    .locals 2

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "read-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_0
    iget-object p1, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {p1}, Lcom/peripheral/ble/BleDevice;->access$200(Lcom/peripheral/ble/BleDevice;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    :try_start_1
    array-length p3, p2

    iget-object p4, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {p4}, Lcom/peripheral/ble/BleDevice;->access$300(Lcom/peripheral/ble/BleDevice;)Lcom/gg/reader/api/utils/RingBuffer;

    move-result-object p4

    invoke-virtual {p4}, Lcom/gg/reader/api/utils/RingBuffer;->getDataCount()I

    move-result p4

    add-int/2addr p3, p4

    const/high16 p4, 0x100000

    if-le p3, p4, :cond_0

    .line 61
    iget-object p3, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {p3}, Lcom/peripheral/ble/BleDevice;->access$400(Lcom/peripheral/ble/BleDevice;)Ljava/lang/Object;

    move-result-object p3

    const-wide/16 v0, 0x2710

    invoke-virtual {p3, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p3, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {p3}, Lcom/peripheral/ble/BleDevice;->access$500(Lcom/peripheral/ble/BleDevice;)Lcom/gg/reader/api/utils/RingBuffer;

    move-result-object p3

    const/4 p4, 0x0

    array-length v0, p2

    invoke-virtual {p3, p2, p4, v0}, Lcom/gg/reader/api/utils/RingBuffer;->WriteBuffer([BII)V

    .line 64
    iget-object p2, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {p2}, Lcom/peripheral/ble/BleDevice;->access$600(Lcom/peripheral/ble/BleDevice;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 65
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onConnectionUpdated(Lcom/peripheral/ble/BluetoothPeripheral;IIILcom/peripheral/ble/GattStatus;)V
    .locals 0

    .line 78
    iget-object p2, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {p2}, Lcom/peripheral/ble/BleDevice;->access$100(Lcom/peripheral/ble/BleDevice;)Lcom/peripheral/ble/BleServiceCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 79
    iget-object p2, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {p2}, Lcom/peripheral/ble/BleDevice;->access$100(Lcom/peripheral/ble/BleDevice;)Lcom/peripheral/ble/BleServiceCallback;

    move-result-object p2

    invoke-virtual {p2, p1, p5}, Lcom/peripheral/ble/BleServiceCallback;->onConnectionUpdated(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/GattStatus;)V

    .line 83
    :cond_0
    sget-object p1, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    if-ne p5, p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-virtual {p1}, Lcom/peripheral/ble/BleDevice;->isNotifying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/peripheral/ble/BleDevice;->setNotify(Z)Z

    :cond_1
    return-void
.end method

.method public onServicesDiscovered(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {v0}, Lcom/peripheral/ble/BleDevice;->access$000(Lcom/peripheral/ble/BleDevice;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getServices()Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 41
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {v3}, Lcom/peripheral/ble/BleDevice;->access$000(Lcom/peripheral/ble/BleDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-virtual {v2, v1}, Lcom/peripheral/ble/BleDevice;->findCharacteristic(Landroid/bluetooth/BluetoothGattService;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {v0}, Lcom/peripheral/ble/BleDevice;->access$100(Lcom/peripheral/ble/BleDevice;)Lcom/peripheral/ble/BleServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-static {v0}, Lcom/peripheral/ble/BleDevice;->access$100(Lcom/peripheral/ble/BleDevice;)Lcom/peripheral/ble/BleServiceCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/peripheral/ble/BleServiceCallback;->onServicesDiscovered(Lcom/peripheral/ble/BluetoothPeripheral;)V

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/peripheral/ble/BleDevice$1;->this$0:Lcom/peripheral/ble/BleDevice;

    invoke-virtual {p1}, Lcom/peripheral/ble/BleDevice;->setDataDispose()V

    return-void
.end method
