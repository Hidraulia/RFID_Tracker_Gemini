.class Lcom/peripheral/ble/BluetoothPeripheral$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothPeripheral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peripheral/ble/BluetoothPeripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheral;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method private failureThatShouldTriggerBonding(Lcom/peripheral/ble/GattStatus;)Z
    .locals 1

    .line 345
    sget-object v0, Lcom/peripheral/ble/GattStatus;->AUTHORIZATION_FAILED:Lcom/peripheral/ble/GattStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/peripheral/ble/GattStatus;->INSUFFICIENT_AUTHENTICATION:Lcom/peripheral/ble/GattStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/peripheral/ble/GattStatus;->INSUFFICIENT_ENCRYPTION:Lcom/peripheral/ble/GattStatus;

    if-ne p1, v0, :cond_1

    .line 352
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_1

    .line 353
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "operation will be retried after bonding, bonding should be in progress"

    invoke-static {p1, v0}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 296
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/peripheral/ble/BluetoothPeripheral$1;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    :cond_0
    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 2

    .line 284
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {p1, p3}, Lcom/peripheral/ble/BluetoothPeripheral;->nonnullOf([B)[B

    move-result-object p1

    .line 288
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object p3, p3, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    sget-object v1, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/peripheral/ble/BluetoothPeripheralCallback;->onCharacteristicUpdate(Lcom/peripheral/ble/BluetoothPeripheral;[BLandroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/GattStatus;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    .line 320
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 321
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/peripheral/ble/BluetoothPeripheral$1;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 3

    .line 302
    invoke-static {p4}, Lcom/peripheral/ble/GattStatus;->fromValue(I)Lcom/peripheral/ble/GattStatus;

    move-result-object p1

    .line 303
    sget-object p4, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    if-eq p1, p4, :cond_0

    .line 304
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "read failed for characteristic <%s>, status \'%s\'"

    invoke-static {p4, v1, v0}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral$1;->failureThatShouldTriggerBonding(Lcom/peripheral/ble/GattStatus;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object p4, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {p4, p3}, Lcom/peripheral/ble/BluetoothPeripheral;->nonnullOf([B)[B

    move-result-object p3

    .line 312
    iget-object p4, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object p4, p4, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {p4, v0, p3, p2, p1}, Lcom/peripheral/ble/BluetoothPeripheralCallback;->onCharacteristicUpdate(Lcom/peripheral/ble/BluetoothPeripheral;[BLandroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/GattStatus;)V

    .line 315
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4

    .line 327
    invoke-static {p3}, Lcom/peripheral/ble/GattStatus;->fromValue(I)Lcom/peripheral/ble/GattStatus;

    move-result-object p1

    .line 328
    sget-object p3, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    .line 329
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v2}, Lcom/peripheral/ble/BluetoothPeripheral;->access$900(Lcom/peripheral/ble/BluetoothPeripheral;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/peripheral/ble/BluetoothBytesParser;->asHexString([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string v2, "writing <%s> to characteristic <%s> failed, status \'%s\'"

    invoke-static {p3, v2, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral$1;->failureThatShouldTriggerBonding(Lcom/peripheral/ble/GattStatus;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p3}, Lcom/peripheral/ble/BluetoothPeripheral;->access$900(Lcom/peripheral/ble/BluetoothPeripheral;)[B

    move-result-object p3

    .line 334
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    new-array v0, v0, [B

    invoke-static {v1, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$902(Lcom/peripheral/ble/BluetoothPeripheral;[B)[B

    .line 338
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v0, v1, p3, p2, p1}, Lcom/peripheral/ble/BluetoothPeripheralCallback;->onCharacteristicWrite(Lcom/peripheral/ble/BluetoothPeripheral;[BLandroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/GattStatus;)V

    .line 341
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$000(Lcom/peripheral/ble/BluetoothPeripheral;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$100(Lcom/peripheral/ble/BluetoothPeripheral;)I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v1, p3}, Lcom/peripheral/ble/BluetoothPeripheral;->access$102(Lcom/peripheral/ble/BluetoothPeripheral;I)I

    .line 167
    invoke-static {p2}, Lcom/peripheral/ble/HciStatus;->fromValue(I)Lcom/peripheral/ble/HciStatus;

    move-result-object p2

    .line 168
    sget-object v1, Lcom/peripheral/ble/HciStatus;->SUCCESS:Lcom/peripheral/ble/HciStatus;

    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_4

    const/4 p2, 0x0

    if-eq p3, p1, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    .line 185
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string p2, "unknown state received"

    invoke-static {p1, p2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p3

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "peripheral \'%s\' is disconnecting"

    invoke-static {p3, p2, p1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$500(Lcom/peripheral/ble/BluetoothPeripheral;)Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-interface {p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;->disconnecting(Lcom/peripheral/ble/BluetoothPeripheral;)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    goto :goto_0

    .line 181
    :cond_3
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p3

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "peripheral \'%s\' is connecting"

    invoke-static {p3, p2, p1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$500(Lcom/peripheral/ble/BluetoothPeripheral;)Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-interface {p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;->connecting(Lcom/peripheral/ble/BluetoothPeripheral;)V

    goto :goto_0

    .line 174
    :cond_4
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$300(Lcom/peripheral/ble/BluetoothPeripheral;I)V

    goto :goto_0

    .line 189
    :cond_5
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1, p2, v0, p3}, Lcom/peripheral/ble/BluetoothPeripheral;->access$600(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;II)V

    :goto_0
    return-void
.end method

.method public onConnectionUpdated(Landroid/bluetooth/BluetoothGatt;IIII)V
    .locals 6

    .line 443
    invoke-static {p5}, Lcom/peripheral/ble/GattStatus;->fromValue(I)Lcom/peripheral/ble/GattStatus;

    move-result-object v5

    .line 444
    sget-object p1, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-ne v5, p1, :cond_0

    .line 445
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float v2, p2

    const/high16 v3, 0x3fa00000    # 1.25f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, v1, v0

    const/4 p5, 0x2

    div-int/lit8 v0, p4, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p5

    const-string p5, "connection parameters: interval=%.1fms latency=%d timeout=%ds"

    invoke-static {p1, p5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, p1}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_0
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, p5

    const-string p5, "connection parameters update failed with status \'%s\'"

    invoke-static {p1, p5, v0}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    :goto_0
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v0, p1, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/peripheral/ble/BluetoothPeripheralCallback;->onConnectionUpdated(Lcom/peripheral/ble/BluetoothPeripheral;IIILcom/peripheral/ble/GattStatus;)V

    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 278
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/peripheral/ble/BluetoothPeripheral$1;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I[B)V

    :cond_0
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I[B)V
    .locals 3

    .line 259
    invoke-static {p3}, Lcom/peripheral/ble/GattStatus;->fromValue(I)Lcom/peripheral/ble/GattStatus;

    move-result-object p1

    .line 260
    sget-object p3, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    if-eq p1, p3, :cond_0

    .line 261
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v2}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string v1, "reading descriptor <%s> failed for device \'%s, status \'%s\'"

    invoke-static {p3, v1, v0}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral$1;->failureThatShouldTriggerBonding(Lcom/peripheral/ble/GattStatus;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {p3, p4}, Lcom/peripheral/ble/BluetoothPeripheral;->nonnullOf([B)[B

    move-result-object p3

    .line 266
    iget-object p4, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p4}, Lcom/peripheral/ble/BluetoothPeripheral;->access$800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/os/Handler;

    move-result-object p4

    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$1$4;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/peripheral/ble/BluetoothPeripheral$1$4;-><init>(Lcom/peripheral/ble/BluetoothPeripheral$1;[BLandroid/bluetooth/BluetoothGattDescriptor;Lcom/peripheral/ble/GattStatus;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 5

    .line 218
    invoke-static {p3}, Lcom/peripheral/ble/GattStatus;->fromValue(I)Lcom/peripheral/ble/GattStatus;

    move-result-object p1

    .line 219
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    .line 220
    sget-object v0, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 221
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v3}, Lcom/peripheral/ble/BluetoothPeripheral;->access$900(Lcom/peripheral/ble/BluetoothPeripheral;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/peripheral/ble/BluetoothBytesParser;->asHexString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v4}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const-string v3, "failed to write <%s> to descriptor of characteristic <%s> for device: \'%s\', status \'%s\' "

    invoke-static {v0, v3, v2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral$1;->failureThatShouldTriggerBonding(Lcom/peripheral/ble/GattStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$900(Lcom/peripheral/ble/BluetoothPeripheral;)[B

    move-result-object v0

    .line 226
    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    new-array v1, v1, [B

    invoke-static {v2, v1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$902(Lcom/peripheral/ble/BluetoothPeripheral;[B)[B

    .line 229
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1000()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    sget-object p2, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    if-ne p1, p2, :cond_3

    .line 231
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    .line 232
    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 235
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p2}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1100(Lcom/peripheral/ble/BluetoothPeripheral;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p2}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1100(Lcom/peripheral/ble/BluetoothPeripheral;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p2}, Lcom/peripheral/ble/BluetoothPeripheral;->access$800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$1$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/peripheral/ble/BluetoothPeripheral$1$2;-><init>(Lcom/peripheral/ble/BluetoothPeripheral$1;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/GattStatus;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 246
    :cond_4
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p3}, Lcom/peripheral/ble/BluetoothPeripheral;->access$800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/os/Handler;

    move-result-object p3

    new-instance v1, Lcom/peripheral/ble/BluetoothPeripheral$1$3;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/peripheral/ble/BluetoothPeripheral$1$3;-><init>(Lcom/peripheral/ble/BluetoothPeripheral$1;[BLandroid/bluetooth/BluetoothGattDescriptor;Lcom/peripheral/ble/GattStatus;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    :goto_2
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4

    .line 378
    invoke-static {p3}, Lcom/peripheral/ble/GattStatus;->fromValue(I)Lcom/peripheral/ble/GattStatus;

    move-result-object p1

    .line 379
    sget-object p3, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p3, :cond_0

    .line 380
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p3

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string v3, "change MTU failed, status \'%s\'"

    invoke-static {p3, v3, v2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    :cond_0
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p3, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1302(Lcom/peripheral/ble/BluetoothPeripheral;I)I

    .line 384
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p3}, Lcom/peripheral/ble/BluetoothPeripheral;->access$800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/os/Handler;

    move-result-object p3

    new-instance v2, Lcom/peripheral/ble/BluetoothPeripheral$1$6;

    invoke-direct {v2, p0, p2, p1}, Lcom/peripheral/ble/BluetoothPeripheral$1$6;-><init>(Lcom/peripheral/ble/BluetoothPeripheral$1;ILcom/peripheral/ble/GattStatus;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1400(Lcom/peripheral/ble/BluetoothPeripheral;)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 393
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1402(Lcom/peripheral/ble/BluetoothPeripheral;I)I

    .line 394
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    :cond_1
    return-void
.end method

.method public onPhyRead(Landroid/bluetooth/BluetoothGatt;III)V
    .locals 4

    .line 400
    invoke-static {p4}, Lcom/peripheral/ble/GattStatus;->fromValue(I)Lcom/peripheral/ble/GattStatus;

    move-result-object p1

    .line 401
    sget-object p4, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p4, :cond_0

    .line 402
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "read Phy failed, status \'%s\'"

    invoke-static {p4, v1, v0}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 404
    :cond_0
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/peripheral/ble/PhyType;->fromValue(I)Lcom/peripheral/ble/PhyType;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p3}, Lcom/peripheral/ble/PhyType;->fromValue(I)Lcom/peripheral/ble/PhyType;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "updated Phy: tx = %s, rx = %s"

    invoke-static {p4, v0, v2}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :goto_0
    iget-object p4, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p4}, Lcom/peripheral/ble/BluetoothPeripheral;->access$800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/os/Handler;

    move-result-object p4

    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$1$7;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/peripheral/ble/BluetoothPeripheral$1$7;-><init>(Lcom/peripheral/ble/BluetoothPeripheral$1;IILcom/peripheral/ble/GattStatus;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    return-void
.end method

.method public onPhyUpdate(Landroid/bluetooth/BluetoothGatt;III)V
    .locals 5

    .line 418
    invoke-static {p4}, Lcom/peripheral/ble/GattStatus;->fromValue(I)Lcom/peripheral/ble/GattStatus;

    move-result-object p1

    .line 419
    sget-object p4, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, p4, :cond_0

    .line 420
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v3, "update Phy failed, status \'%s\'"

    invoke-static {p4, v3, v0}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 422
    :cond_0
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p4

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/peripheral/ble/PhyType;->fromValue(I)Lcom/peripheral/ble/PhyType;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p3}, Lcom/peripheral/ble/PhyType;->fromValue(I)Lcom/peripheral/ble/PhyType;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "updated Phy: tx = %s, rx = %s"

    invoke-static {p4, v0, v3}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    :goto_0
    iget-object p4, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p4}, Lcom/peripheral/ble/BluetoothPeripheral;->access$800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/os/Handler;

    move-result-object p4

    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$1$8;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/peripheral/ble/BluetoothPeripheral$1$8;-><init>(Lcom/peripheral/ble/BluetoothPeripheral$1;IILcom/peripheral/ble/GattStatus;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1400(Lcom/peripheral/ble/BluetoothPeripheral;)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 434
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1, v2}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1402(Lcom/peripheral/ble/BluetoothPeripheral;I)I

    .line 435
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    :cond_1
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    .line 362
    invoke-static {p3}, Lcom/peripheral/ble/GattStatus;->fromValue(I)Lcom/peripheral/ble/GattStatus;

    move-result-object p1

    .line 363
    sget-object p3, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    if-eq p1, p3, :cond_0

    .line 364
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "reading RSSI failed, status \'%s\'"

    invoke-static {p3, v1, v0}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :cond_0
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p3}, Lcom/peripheral/ble/BluetoothPeripheral;->access$800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$1$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/peripheral/ble/BluetoothPeripheral$1$5;-><init>(Lcom/peripheral/ble/BluetoothPeripheral$1;ILcom/peripheral/ble/GattStatus;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    return-void
.end method

.method public onServiceChanged(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    .line 461
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceChangedCalled"

    invoke-static {p1, v0}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1500(Lcom/peripheral/ble/BluetoothPeripheral;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 465
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1602(Lcom/peripheral/ble/BluetoothPeripheral;Z)Z

    .line 466
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1700(Lcom/peripheral/ble/BluetoothPeripheral;J)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    .line 195
    invoke-static {p2}, Lcom/peripheral/ble/GattStatus;->fromValue(I)Lcom/peripheral/ble/GattStatus;

    move-result-object p2

    .line 196
    sget-object v0, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_0

    .line 197
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string p2, "service discovery failed due to internal error \'%s\', disconnecting"

    invoke-static {p1, p2, v0}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$700(Lcom/peripheral/ble/BluetoothPeripheral;)V

    return-void

    .line 202
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    .line 203
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "discovered %d services for \'%s\'"

    invoke-static {p2, p1, v0}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$500(Lcom/peripheral/ble/BluetoothPeripheral;)Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-interface {p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;->connected(Lcom/peripheral/ble/BluetoothPeripheral;)V

    .line 208
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/peripheral/ble/BluetoothPeripheral$1$1;

    invoke-direct {p2, p0}, Lcom/peripheral/ble/BluetoothPeripheral$1$1;-><init>(Lcom/peripheral/ble/BluetoothPeripheral$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
