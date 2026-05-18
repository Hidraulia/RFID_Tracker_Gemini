.class Lcom/peripheral/ble/BluetoothPeripheral$19;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral;->setNotify(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheral;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field final synthetic val$enable:Z

.field final synthetic val$finalValue:[B


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral;Landroid/bluetooth/BluetoothGattCharacteristic;Z[BLandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1421
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-boolean p3, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->val$enable:Z

    iput-object p4, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->val$finalValue:[B

    iput-object p5, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1425
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-boolean v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->val$enable:Z

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1426
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "setCharacteristicNotification failed for characteristic: %s"

    invoke-static {v0, v1, v2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1427
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    return-void

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->val$finalValue:[B

    invoke-static {v0, v3}, Lcom/peripheral/ble/BluetoothPeripheral;->access$902(Lcom/peripheral/ble/BluetoothPeripheral;[B)[B

    .line 1433
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->val$finalValue:[B

    invoke-static {v0, v3, v4}, Lcom/peripheral/ble/BluetoothPeripheral;->access$3100(Lcom/peripheral/ble/BluetoothPeripheral;Landroid/bluetooth/BluetoothGattDescriptor;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1434
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$2708(Lcom/peripheral/ble/BluetoothPeripheral;)I

    goto :goto_0

    .line 1436
    :cond_1
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "writeDescriptor failed for descriptor: %s"

    invoke-static {v0, v1, v2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1437
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$19;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    :goto_0
    return-void
.end method
