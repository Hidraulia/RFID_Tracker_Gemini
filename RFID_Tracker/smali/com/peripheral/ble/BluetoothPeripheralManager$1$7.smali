.class Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;
.super Ljava/lang/Object;
.source "BluetoothPeripheralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheralManager$1;->onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

.field final synthetic val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$offset:I

.field final synthetic val$preparedWrite:Z

.field final synthetic val$requestId:I

.field final synthetic val$responseNeeded:Z

.field final synthetic val$safeValue:[B


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheralManager$1;Landroid/bluetooth/BluetoothGattDescriptor;[BLandroid/bluetooth/BluetoothGattCharacteristic;ZLcom/peripheral/ble/BluetoothCentral;IZLandroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 282
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$safeValue:[B

    iput-object p4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-boolean p5, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$preparedWrite:Z

    iput-object p6, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    iput p7, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$offset:I

    iput-boolean p8, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$responseNeeded:Z

    iput-object p9, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput p10, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$requestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 285
    sget-object v0, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    .line 286
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v2, Lcom/peripheral/ble/BluetoothPeripheralManager;->CCC_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$safeValue:[B

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {v0, v1, v4}, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->access$1300(Lcom/peripheral/ble/BluetoothPeripheralManager$1;[BLandroid/bluetooth/BluetoothGattCharacteristic;)Lcom/peripheral/ble/GattStatus;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_0
    iget-boolean v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$preparedWrite:Z

    if-nez v1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v5, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$safeValue:[B

    invoke-virtual {v0, v1, v4, v5}, Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;->onDescriptorWrite(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattDescriptor;[B)Lcom/peripheral/ble/GattStatus;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_1
    iget v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$offset:I

    if-nez v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v5, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$safeValue:[B

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_3

    .line 297
    iget v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$offset:I

    array-length v5, v1

    if-ne v4, v5, :cond_3

    .line 298
    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v4, v4, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v4}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    const/4 v6, 0x2

    new-array v6, v6, [[B

    aput-object v1, v6, v3

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$safeValue:[B

    aput-object v1, v6, v2

    invoke-static {v6}, Lcom/peripheral/ble/BluetoothBytesParser;->mergeArrays([[B)[B

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 300
    :cond_3
    sget-object v0, Lcom/peripheral/ble/GattStatus;->INVALID_OFFSET:Lcom/peripheral/ble/GattStatus;

    .line 306
    :goto_0
    sget-object v1, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    if-ne v0, v1, :cond_4

    iget-boolean v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$preparedWrite:Z

    if-nez v1, :cond_4

    .line 307
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-ge v1, v4, :cond_4

    .line 308
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$safeValue:[B

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 312
    :cond_4
    iget-boolean v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$responseNeeded:Z

    if-eqz v1, :cond_5

    .line 313
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$200(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v4

    iget-object v5, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget v6, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$requestId:I

    iget v7, v0, Lcom/peripheral/ble/GattStatus;->value:I

    iget v8, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$offset:I

    iget-object v9, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$safeValue:[B

    invoke-virtual/range {v4 .. v9}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    .line 316
    :cond_5
    sget-object v1, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    if-ne v0, v1, :cond_9

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v4, Lcom/peripheral/ble/BluetoothPeripheralManager;->CCC_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 317
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$safeValue:[B

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$safeValue:[B

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 318
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 329
    :cond_6
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "notifying disabled for <%s>"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    invoke-virtual {v0, v1, v2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->removeCentralWantingIndications(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/BluetoothCentral;)V

    .line 331
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    invoke-virtual {v0, v1, v2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->removeCentralWantingNotifications(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/BluetoothCentral;)V

    .line 332
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1, v2}, Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;->onNotifyingDisabled(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_3

    .line 320
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$safeValue:[B

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 321
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    invoke-virtual {v0, v1, v4}, Lcom/peripheral/ble/BluetoothPeripheralManager;->addCentralWantingIndications(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/BluetoothCentral;)V

    goto :goto_2

    .line 323
    :cond_8
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    invoke-virtual {v0, v1, v4}, Lcom/peripheral/ble/BluetoothPeripheralManager;->addCentralWantingNotifications(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/BluetoothCentral;)V

    .line 326
    :goto_2
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "notifying enabled for <%s>"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1, v2}, Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;->onNotifyingEnabled(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_3

    .line 334
    :cond_9
    sget-object v1, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$preparedWrite:Z

    if-nez v0, :cond_a

    .line 335
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$7;->val$safeValue:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;->onDescriptorWriteCompleted(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattDescriptor;[B)V

    :cond_a
    :goto_3
    return-void
.end method
