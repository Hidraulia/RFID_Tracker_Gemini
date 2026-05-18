.class public Lcom/peripheral/ble/BleDevice;
.super Lcom/gg/reader/api/dal/communication/CommunicationInterface;
.source "BleDevice.java"


# instance fields
.field private central:Lcom/peripheral/ble/BluetoothCentralManager;

.field private initParam:Ljava/lang/String;

.field private mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

.field private notifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

.field private readCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private scanResult:Landroid/bluetooth/le/ScanResult;

.field private serviceCallback:Lcom/peripheral/ble/BleServiceCallback;

.field private serviceUuid:Ljava/lang/String;

.field private writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method public constructor <init>(Lcom/peripheral/ble/BluetoothCentralManager;Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/peripheral/ble/BleDevice;->serviceUuid:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/peripheral/ble/BleDevice$1;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BleDevice$1;-><init>(Lcom/peripheral/ble/BleDevice;)V

    iput-object v0, p0, Lcom/peripheral/ble/BleDevice;->peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

    .line 94
    iput-object p1, p0, Lcom/peripheral/ble/BleDevice;->central:Lcom/peripheral/ble/BluetoothCentralManager;

    .line 95
    iput-object p2, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    return-void
.end method

.method static synthetic access$000(Lcom/peripheral/ble/BleDevice;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/peripheral/ble/BleDevice;->serviceUuid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/peripheral/ble/BleDevice;)Lcom/peripheral/ble/BleServiceCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/peripheral/ble/BleDevice;->serviceCallback:Lcom/peripheral/ble/BleServiceCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/peripheral/ble/BleDevice;)Ljava/lang/Object;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/peripheral/ble/BleDevice;->lockRingBuffer:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/peripheral/ble/BleDevice;)Lcom/gg/reader/api/utils/RingBuffer;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/peripheral/ble/BleDevice;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/peripheral/ble/BleDevice;)Ljava/lang/Object;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/peripheral/ble/BleDevice;->lockRingBuffer:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/peripheral/ble/BleDevice;)Lcom/gg/reader/api/utils/RingBuffer;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/peripheral/ble/BleDevice;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/peripheral/ble/BleDevice;)Ljava/lang/Object;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/peripheral/ble/BleDevice;->lockRingBuffer:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/peripheral/ble/BleDevice;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/peripheral/ble/BleDevice;->keepReceived:Z

    return p0
.end method

.method static synthetic access$800(Lcom/peripheral/ble/BleDevice;)Lcom/peripheral/ble/BluetoothPeripheral;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    return-object p0
.end method

.method static synthetic access$900(Lcom/peripheral/ble/BleDevice;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/peripheral/ble/BleDevice;->readCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method


# virtual methods
.method public autoBleOpen()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->central:Lcom/peripheral/ble/BluetoothCentralManager;

    iget-object v1, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v2, p0, Lcom/peripheral/ble/BleDevice;->peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

    invoke-virtual {v0, v1, v2}, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/BluetoothPeripheralCallback;)V

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lcom/peripheral/ble/BleDevice;->keepReceived:Z

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/peripheral/ble/BleDevice;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 265
    iput-object v0, p0, Lcom/peripheral/ble/BleDevice;->notifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 266
    iput-object v0, p0, Lcom/peripheral/ble/BleDevice;->readCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 267
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->cancelConnection()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/peripheral/ble/BleDevice;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public findCharacteristic(Landroid/bluetooth/BluetoothGattService;)V
    .locals 4

    .line 135
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 140
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    invoke-static {v1}, Lcom/peripheral/ble/CharacteristicProperty;->isREAD(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/peripheral/ble/BleDevice;->readCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v1, :cond_1

    .line 142
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "READ"

    invoke-static {v1, v2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iput-object v0, p0, Lcom/peripheral/ble/BleDevice;->readCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 147
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    invoke-static {v1}, Lcom/peripheral/ble/CharacteristicProperty;->isWRITE(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    invoke-static {v1}, Lcom/peripheral/ble/CharacteristicProperty;->isWRITE_NO_RESPONSE(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/peripheral/ble/BleDevice;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v1, :cond_3

    .line 149
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WRITE = >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iput-object v0, p0, Lcom/peripheral/ble/BleDevice;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 154
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    invoke-static {v1}, Lcom/peripheral/ble/CharacteristicProperty;->isNOTIFY(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    invoke-static {v1}, Lcom/peripheral/ble/CharacteristicProperty;->isINDICATE(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    :cond_4
    iget-object v1, p0, Lcom/peripheral/ble/BleDevice;->notifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v1, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NOTIFY,INDICATE"

    invoke-static {v1, v2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iput-object v0, p0, Lcom/peripheral/ble/BleDevice;->notifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto/16 :goto_0

    .line 163
    :cond_5
    iget-object p1, p0, Lcom/peripheral/ble/BleDevice;->initParam:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 164
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BleDevice;->send(Lcom/gg/reader/api/protocol/gx/Message;)V

    :cond_6
    return-void
.end method

.method public getCentral()Lcom/peripheral/ble/BluetoothCentralManager;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->central:Lcom/peripheral/ble/BluetoothCentralManager;

    return-object v0
.end method

.method public getNotifyCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->notifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getReadCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->readCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getScanResult()Landroid/bluetooth/le/ScanResult;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->scanResult:Landroid/bluetooth/le/ScanResult;

    return-object v0
.end method

.method public getServiceCallback()Lcom/peripheral/ble/BleServiceCallback;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->serviceCallback:Lcom/peripheral/ble/BleServiceCallback;

    return-object v0
.end method

.method public getServiceUuid()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->serviceUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWriteCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getmPeripheral()Lcom/peripheral/ble/BluetoothPeripheral;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    return-object v0
.end method

.method public isNotifying()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/peripheral/ble/BleDevice;->notifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0, v1}, Lcom/peripheral/ble/BluetoothPeripheral;->isNotifying(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public open()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->central:Lcom/peripheral/ble/BluetoothCentralManager;

    iget-object v1, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v2, p0, Lcom/peripheral/ble/BleDevice;->peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

    invoke-virtual {v0, v1, v2}, Lcom/peripheral/ble/BluetoothCentralManager;->connectPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/BluetoothPeripheralCallback;)V

    return-void
.end method

.method public open(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 244
    iput-object p1, p0, Lcom/peripheral/ble/BleDevice;->initParam:Ljava/lang/String;

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/peripheral/ble/BleDevice;->central:Lcom/peripheral/ble/BluetoothCentralManager;

    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v1, p0, Lcom/peripheral/ble/BleDevice;->peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

    invoke-virtual {p1, v0, v1}, Lcom/peripheral/ble/BluetoothCentralManager;->connectPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/BluetoothPeripheralCallback;)V

    const/4 p1, 0x0

    return p1
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public open(Ljava/lang/String;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public open(Ljava/net/Socket;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public receive([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public send(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 1

    .line 310
    :try_start_0
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    .line 311
    iget-boolean v0, p0, Lcom/peripheral/ble/BleDevice;->isRs485:Z

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/Message;->toBytes(Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/peripheral/ble/BleDevice;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public send([B)V
    .locals 9

    .line 278
    const-class v0, Lcom/peripheral/ble/BleDevice;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/peripheral/ble/BleDevice;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    if-eqz v1, :cond_4

    .line 281
    iget-object v1, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v1}, Lcom/peripheral/ble/BluetoothPeripheral;->getCurrentMtu()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    .line 282
    array-length v2, p1

    div-int/2addr v2, v1

    .line 283
    array-length v3, p1

    rem-int/2addr v3, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 292
    iget-object v1, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v2, p0, Lcom/peripheral/ble/BleDevice;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v4, p0, Lcom/peripheral/ble/BleDevice;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v4

    if-ne v4, v3, :cond_1

    sget-object v3, Lcom/peripheral/ble/WriteType;->WITH_RESPONSE:Lcom/peripheral/ble/WriteType;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/peripheral/ble/WriteType;->WITHOUT_RESPONSE:Lcom/peripheral/ble/WriteType;

    :goto_0
    invoke-virtual {v1, v2, p1, v3}, Lcom/peripheral/ble/BluetoothPeripheral;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/peripheral/ble/WriteType;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_4

    mul-int v5, v4, v1

    add-int v6, v1, v5

    .line 296
    :try_start_2
    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 298
    iget-object v6, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v7, p0, Lcom/peripheral/ble/BleDevice;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v8, p0, Lcom/peripheral/ble/BleDevice;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v8

    if-ne v8, v3, :cond_3

    sget-object v8, Lcom/peripheral/ble/WriteType;->WITH_RESPONSE:Lcom/peripheral/ble/WriteType;

    goto :goto_2

    :cond_3
    sget-object v8, Lcom/peripheral/ble/WriteType;->WITHOUT_RESPONSE:Lcom/peripheral/ble/WriteType;

    :goto_2
    invoke-virtual {v6, v7, v5, v8}, Lcom/peripheral/ble/BluetoothPeripheral;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/peripheral/ble/WriteType;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 302
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public setBufferSize(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCentral(Lcom/peripheral/ble/BluetoothCentralManager;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/peripheral/ble/BleDevice;->central:Lcom/peripheral/ble/BluetoothCentralManager;

    return-void
.end method

.method public setDataDispose()V
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/peripheral/ble/BleDevice;->keepReceived:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/peripheral/ble/BleDevice;->keepReceived:Z

    .line 130
    invoke-virtual {p0}, Lcom/peripheral/ble/BleDevice;->startProcess()V

    :cond_0
    return-void
.end method

.method public setMtu(I)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Lcom/peripheral/ble/BluetoothPeripheral;->requestMtu(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setNotify(Z)Z
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/peripheral/ble/BleDevice;->notifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0, v1, p1}, Lcom/peripheral/ble/BluetoothPeripheral;->setNotify(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setNotifyCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/peripheral/ble/BleDevice;->notifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method public setReadCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/peripheral/ble/BleDevice;->readCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method public setScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/peripheral/ble/BleDevice;->scanResult:Landroid/bluetooth/le/ScanResult;

    return-void
.end method

.method public setServiceCallback(Lcom/peripheral/ble/BleServiceCallback;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/peripheral/ble/BleDevice;->serviceCallback:Lcom/peripheral/ble/BleServiceCallback;

    return-void
.end method

.method public setServiceUuid(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/peripheral/ble/BleDevice;->serviceUuid:Ljava/lang/String;

    return-void
.end method

.method public setWriteCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/peripheral/ble/BleDevice;->writeCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method public setmPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/peripheral/ble/BleDevice;->mPeripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    return-void
.end method

.method public startReceive()V
    .locals 1

    .line 333
    new-instance v0, Lcom/peripheral/ble/BleDevice$2;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BleDevice$2;-><init>(Lcom/peripheral/ble/BleDevice;)V

    invoke-static {v0}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->run(Ljava/lang/Runnable;)V

    return-void
.end method
