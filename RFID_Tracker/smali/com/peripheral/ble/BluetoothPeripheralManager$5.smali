.class Lcom/peripheral/ble/BluetoothPeripheralManager$5;
.super Ljava/lang/Object;
.source "BluetoothPeripheralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheralManager;->notifyCharacteristicChanged([BLandroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

.field final synthetic val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$confirm:Z

.field final synthetic val$value:[B


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 653
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$5;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$5;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$5;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$5;->val$value:[B

    iput-boolean p5, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$5;->val$confirm:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 656
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$5;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$5;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$5;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$5;->val$value:[B

    iget-boolean v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$5;->val$confirm:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1900(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$5;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "notifying characteristic changed failed for <%s>"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$5;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$800(Lcom/peripheral/ble/BluetoothPeripheralManager;)V

    :cond_0
    return-void
.end method
