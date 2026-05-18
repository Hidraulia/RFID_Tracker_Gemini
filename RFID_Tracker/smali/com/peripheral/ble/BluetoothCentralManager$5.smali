.class Lcom/peripheral/ble/BluetoothCentralManager$5;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothCentralManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peripheral/ble/BluetoothCentralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothCentralManager;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothCentralManager;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$5;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 4

    .line 193
    invoke-static {p1}, Lcom/peripheral/ble/ScanFailure;->fromValue(I)Lcom/peripheral/ble/ScanFailure;

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/peripheral/ble/BluetoothCentralManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "autoConnect scan failed with error code %d (%s)"

    invoke-static {v1, p1, v2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$5;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$600(Lcom/peripheral/ble/BluetoothCentralManager;)V

    .line 196
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$5;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1100(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/peripheral/ble/BluetoothCentralManager$5$1;

    invoke-direct {v1, p0, v0}, Lcom/peripheral/ble/BluetoothCentralManager$5$1;-><init>(Lcom/peripheral/ble/BluetoothCentralManager$5;Lcom/peripheral/ble/ScanFailure;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 4

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$5;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$500(Lcom/peripheral/ble/BluetoothCentralManager;)Z

    move-result p1

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/peripheral/ble/BluetoothCentralManager;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "peripheral with address \'%s\' found"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$5;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$600(Lcom/peripheral/ble/BluetoothCentralManager;)V

    .line 173
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 174
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager$5;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    iget-object p2, p2, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/peripheral/ble/BluetoothPeripheral;

    .line 175
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$5;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$700(Lcom/peripheral/ble/BluetoothCentralManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/peripheral/ble/BluetoothPeripheralCallback;

    .line 177
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$5;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$800(Lcom/peripheral/ble/BluetoothCentralManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$5;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$700(Lcom/peripheral/ble/BluetoothCentralManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$5;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v1, p1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$900(Lcom/peripheral/ble/BluetoothCentralManager;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 182
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$5;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-virtual {p1, p2, v0}, Lcom/peripheral/ble/BluetoothCentralManager;->connectPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/BluetoothPeripheralCallback;)V

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$5;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$800(Lcom/peripheral/ble/BluetoothCentralManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 186
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$5;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1000(Lcom/peripheral/ble/BluetoothCentralManager;)V

    .line 188
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
