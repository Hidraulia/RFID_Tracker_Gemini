.class Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;
.super Ljava/lang/Object;
.source "BluetoothPeripheralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheralManager$1;->onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

.field final synthetic val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheralManager$1;Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 363
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput p4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->val$requestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 366
    sget-object v0, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    .line 367
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1200(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/16 v2, 0x21

    if-nez v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1200(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_3

    .line 371
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v4, v4, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v4}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1200(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v3, v1, v4}, Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;->onCharacteristicWrite(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lcom/peripheral/ble/GattStatus;

    move-result-object v0

    .line 373
    sget-object v3, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    if-ne v0, v3, :cond_3

    .line 374
    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v3, v3, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v3}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1200(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 375
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v2, :cond_0

    .line 376
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v2, v2, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1200(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 380
    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v2, v2, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    move-result-object v2

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    invoke-virtual {v2, v4, v1, v3}, Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;->onCharacteristicWriteCompleted(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 384
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattDescriptor;

    if-eqz v1, :cond_3

    .line 387
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v4, v4, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v4}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v3, v1, v4}, Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;->onDescriptorWrite(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattDescriptor;[B)Lcom/peripheral/ble/GattStatus;

    move-result-object v0

    .line 389
    sget-object v3, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    if-ne v0, v3, :cond_3

    .line 390
    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v3, v3, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v3}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 391
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v2, :cond_2

    .line 392
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 398
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$200(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v2

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$8;->val$requestId:I

    iget v5, v0, Lcom/peripheral/ble/GattStatus;->value:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    return-void
.end method
