.class Lcom/peripheral/ble/BluetoothCentralManager$6;
.super Ljava/lang/Object;
.source "BluetoothCentralManager.java"

# interfaces
.implements Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;


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

    .line 205
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectFailed(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V
    .locals 6

    .line 232
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1200(Lcom/peripheral/ble/BluetoothCentralManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 239
    :goto_0
    iget-object v3, p0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v3, v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$900(Lcom/peripheral/ble/BluetoothCentralManager;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v1, v4, :cond_1

    .line 242
    sget-object v5, Lcom/peripheral/ble/HciStatus;->CONNECTION_FAILED_ESTABLISHMENT:Lcom/peripheral/ble/HciStatus;

    if-eq p2, v5, :cond_1

    .line 243
    invoke-static {}, Lcom/peripheral/ble/BluetoothCentralManager;->access$400()Ljava/lang/String;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object v0, v3, v4

    const-string v2, "retrying connection to \'%s\' (%s)"

    invoke-static {p2, v2, v3}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/2addr v1, v4

    .line 245
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {p2}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1200(Lcom/peripheral/ble/BluetoothCentralManager;)Ljava/util/Map;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    iget-object p2, p2, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->connect()V

    goto :goto_1

    .line 249
    :cond_1
    invoke-static {}, Lcom/peripheral/ble/BluetoothCentralManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object v0, v3, v4

    const-string v0, "connection to \'%s\' (%s) failed"

    invoke-static {v1, v0, v3}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1100(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/peripheral/ble/BluetoothCentralManager$6$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/peripheral/ble/BluetoothCentralManager$6$3;-><init>(Lcom/peripheral/ble/BluetoothCentralManager$6;Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public connected(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 2

    .line 218
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v1, v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$900(Lcom/peripheral/ble/BluetoothCentralManager;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1100(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/peripheral/ble/BluetoothCentralManager$6$2;

    invoke-direct {v1, p0, p1}, Lcom/peripheral/ble/BluetoothCentralManager$6$2;-><init>(Lcom/peripheral/ble/BluetoothCentralManager$6;Lcom/peripheral/ble/BluetoothPeripheral;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public connecting(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1100(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/peripheral/ble/BluetoothCentralManager$6$1;

    invoke-direct {v1, p0, p1}, Lcom/peripheral/ble/BluetoothCentralManager$6$1;-><init>(Lcom/peripheral/ble/BluetoothCentralManager$6;Lcom/peripheral/ble/BluetoothPeripheral;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public disconnected(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$900(Lcom/peripheral/ble/BluetoothCentralManager;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1100(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/peripheral/ble/BluetoothCentralManager$6$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/peripheral/ble/BluetoothCentralManager$6$5;-><init>(Lcom/peripheral/ble/BluetoothCentralManager$6;Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public disconnecting(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1100(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/peripheral/ble/BluetoothCentralManager$6$4;

    invoke-direct {v1, p0, p1}, Lcom/peripheral/ble/BluetoothCentralManager$6$4;-><init>(Lcom/peripheral/ble/BluetoothCentralManager$6;Lcom/peripheral/ble/BluetoothPeripheral;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getPincode(Lcom/peripheral/ble/BluetoothPeripheral;)Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1300(Lcom/peripheral/ble/BluetoothCentralManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
