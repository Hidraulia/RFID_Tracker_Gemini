.class Lcom/peripheral/ble/BluetoothPeripheralManager$1;
.super Landroid/bluetooth/BluetoothGattServerCallback;
.source "BluetoothPeripheralManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peripheral/ble/BluetoothPeripheralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheralManager;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServerCallback;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/peripheral/ble/BluetoothPeripheralManager$1;[BLandroid/bluetooth/BluetoothGattCharacteristic;)Lcom/peripheral/ble/GattStatus;
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->checkCccDescriptorValue([BLandroid/bluetooth/BluetoothGattCharacteristic;)Lcom/peripheral/ble/GattStatus;

    move-result-object p0

    return-object p0
.end method

.method private checkCccDescriptorValue([BLandroid/bluetooth/BluetoothGattCharacteristic;)Lcom/peripheral/ble/GattStatus;
    .locals 3

    .line 343
    sget-object v0, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    .line 345
    array-length v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 346
    sget-object v0, Lcom/peripheral/ble/GattStatus;->INVALID_ATTRIBUTE_VALUE_LENGTH:Lcom/peripheral/ble/GattStatus;

    goto :goto_0

    .line 347
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 348
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    .line 349
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 350
    sget-object v0, Lcom/peripheral/ble/GattStatus;->VALUE_NOT_ALLOWED:Lcom/peripheral/ble/GattStatus;

    goto :goto_0

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v1, p2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1500(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    sget-object v0, Lcom/peripheral/ble/GattStatus;->REQUEST_NOT_SUPPORTED:Lcom/peripheral/ble/GattStatus;

    goto :goto_0

    .line 353
    :cond_2
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v1, p2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1600(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 354
    sget-object v0, Lcom/peripheral/ble/GattStatus;->REQUEST_NOT_SUPPORTED:Lcom/peripheral/ble/GattStatus;

    :cond_3
    :goto_0
    return-object v0
.end method

.method private handleDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 142
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/peripheral/ble/BluetoothPeripheralManager;->notNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Central \'%s\' (%s) connected"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    new-instance v0, Lcom/peripheral/ble/BluetoothCentral;

    invoke-direct {v0, p1}, Lcom/peripheral/ble/BluetoothCentral;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 144
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$100(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0}, Lcom/peripheral/ble/BluetoothCentral;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$500(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/peripheral/ble/BluetoothPeripheralManager$1$1;

    invoke-direct {v1, p0, v0}, Lcom/peripheral/ble/BluetoothPeripheralManager$1$1;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager$1;Lcom/peripheral/ble/BluetoothCentral;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$600(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;)Lcom/peripheral/ble/BluetoothCentral;

    move-result-object v0

    .line 155
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/peripheral/ble/BluetoothCentral;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lcom/peripheral/ble/BluetoothCentral;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "Central \'%s\' (%s) disconnected"

    invoke-static {v1, v3, v2}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v0}, Lcom/peripheral/ble/BluetoothCentral;->getBondState()Lcom/peripheral/ble/BondState;

    move-result-object v1

    sget-object v2, Lcom/peripheral/ble/BondState;->BONDED:Lcom/peripheral/ble/BondState;

    if-eq v1, v2, :cond_0

    .line 158
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-virtual {v1, v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->removeCentralFromWantingAnything(Lcom/peripheral/ble/BluetoothCentral;)V

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$500(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/peripheral/ble/BluetoothPeripheralManager$1$2;

    invoke-direct {v2, p0, v0}, Lcom/peripheral/ble/BluetoothPeripheralManager$1$2;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager$1;Lcom/peripheral/ble/BluetoothCentral;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$700(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method


# virtual methods
.method public onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 9

    .line 182
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "read request for characteristic <%s> with offset %d"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$600(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;)Lcom/peripheral/ble/BluetoothCentral;

    move-result-object v4

    .line 185
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$500(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move-object v5, p4

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager$1;ILcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 13

    move-object v10, p0

    .line 208
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p5, :cond_0

    const-string v2, "WITH_RESPONSE"

    goto :goto_0

    :cond_0
    const-string v2, "WITHOUT_RESPONSE"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static/range {p7 .. p7}, Lcom/peripheral/ble/BluetoothBytesParser;->asHexString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "write characteristic %s request <%s> offset %d for <%s>"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, v10, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1100(Lcom/peripheral/ble/BluetoothPeripheralManager;[B)[B

    move-result-object v5

    .line 211
    iget-object v0, v10, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    move-object v8, p1

    invoke-static {v0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$600(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;)Lcom/peripheral/ble/BluetoothCentral;

    move-result-object v3

    .line 212
    iget-object v0, v10, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$500(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Lcom/peripheral/ble/BluetoothPeripheralManager$1$5;

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p4

    move-object/from16 v4, p3

    move/from16 v6, p6

    move/from16 v7, p5

    move v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/peripheral/ble/BluetoothPeripheralManager$1$5;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager$1;ZLcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;[BIZLandroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p2, :cond_4

    if-ne p3, v1, :cond_2

    .line 111
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$000(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothCentralManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 112
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$000(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothCentralManager;

    move-result-object p2

    iget-object p2, p2, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$100(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 125
    :cond_1
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$200(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothGattServer;->connect(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 128
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->handleDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_2
    if-nez p3, :cond_5

    .line 131
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$100(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    .line 133
    :cond_3
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->handleDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 136
    :cond_4
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$300()Ljava/lang/String;

    move-result-object p3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/peripheral/ble/BluetoothPeripheralManager;->notNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Device \'%s\' disconnected with status %d"

    invoke-static {p3, p2, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->handleDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 9

    .line 250
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "read request for descriptor <%s> with offset %d"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$600(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;)Lcom/peripheral/ble/BluetoothCentral;

    move-result-object v4

    .line 253
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$500(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/peripheral/ble/BluetoothPeripheralManager$1$6;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move-object v5, p4

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/peripheral/ble/BluetoothPeripheralManager$1$6;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager$1;ILcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattDescriptor;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 14

    move-object v11, p0

    .line 276
    iget-object v0, v11, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1100(Lcom/peripheral/ble/BluetoothPeripheralManager;[B)[B

    move-result-object v3

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    const-string v2, "Descriptor does not have characteristic"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 279
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p5, :cond_0

    const-string v5, "WITH_RESPONSE"

    goto :goto_0

    :cond_0
    const-string v5, "WITHOUT_RESPONSE"

    :goto_0
    const/4 v6, 0x0

    aput-object v5, v2, v6

    const/4 v5, 0x1

    invoke-static/range {p7 .. p7}, Lcom/peripheral/ble/BluetoothBytesParser;->asHexString([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    const/4 v1, 0x2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    const/4 v1, 0x3

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v1, "write descriptor %s request <%s> offset %d for <%s>"

    invoke-static {v0, v1, v2}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object v0, v11, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    move-object v9, p1

    invoke-static {v0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$600(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;)Lcom/peripheral/ble/BluetoothCentral;

    move-result-object v6

    .line 282
    iget-object v0, v11, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$500(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/os/Handler;

    move-result-object v12

    new-instance v13, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p3

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p5

    move/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager$1;Landroid/bluetooth/BluetoothGattDescriptor;[BLandroid/bluetooth/BluetoothGattCharacteristic;ZLcom/peripheral/ble/BluetoothCentral;IZLandroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    .locals 6

    .line 361
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$600(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;)Lcom/peripheral/ble/BluetoothCentral;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 363
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p3}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$500(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/os/Handler;

    move-result-object p3

    new-instance v1, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager$1;Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 403
    :cond_0
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p3}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1200(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 404
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p3}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 405
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p3}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$200(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    sget-object p3, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    iget v3, p3, Lcom/peripheral/ble/GattStatus;->value:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    :goto_0
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4

    .line 426
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "new MTU: %d"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$600(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;)Lcom/peripheral/ble/BluetoothCentral;

    move-result-object p1

    .line 428
    invoke-virtual {p1, p2}, Lcom/peripheral/ble/BluetoothCentral;->setCurrentMtu(I)V

    return-void
.end method

.method public onNotificationSent(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7

    .line 411
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$600(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;)Lcom/peripheral/ble/BluetoothCentral;

    move-result-object v3

    .line 412
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1700(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 413
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1800(Lcom/peripheral/ble/BluetoothPeripheralManager;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [B

    .line 414
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {p1, v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1802(Lcom/peripheral/ble/BluetoothPeripheralManager;[B)[B

    .line 415
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$500(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$9;

    move-object v1, v0

    move-object v2, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/peripheral/ble/BluetoothPeripheralManager$1$9;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager$1;Lcom/peripheral/ble/BluetoothCentral;[BLandroid/bluetooth/BluetoothGattCharacteristic;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$800(Lcom/peripheral/ble/BluetoothPeripheralManager;)V

    return-void
.end method

.method public onPhyRead(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 0

    .line 438
    invoke-super {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattServerCallback;->onPhyRead(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method public onPhyUpdate(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 0

    .line 433
    invoke-super {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattServerCallback;->onPhyUpdate(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method public onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$500(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/peripheral/ble/BluetoothPeripheralManager$1$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheralManager$1$3;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager$1;ILandroid/bluetooth/BluetoothGattService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$800(Lcom/peripheral/ble/BluetoothPeripheralManager;)V

    return-void
.end method
