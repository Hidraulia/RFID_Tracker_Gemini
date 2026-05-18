.class Lcom/peripheral/ble/BluetoothPeripheral$18;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheral;

.field final synthetic val$bytesToWrite:[B

.field final synthetic val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral;Landroid/bluetooth/BluetoothGattDescriptor;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1339
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$18;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$18;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheral$18;->val$bytesToWrite:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1342
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$18;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$18;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$18;->val$bytesToWrite:[B

    invoke-static {v0, v1, v2}, Lcom/peripheral/ble/BluetoothPeripheral;->access$3100(Lcom/peripheral/ble/BluetoothPeripheral;Landroid/bluetooth/BluetoothGattDescriptor;[B)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1343
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheral$18;->val$bytesToWrite:[B

    invoke-static {v4}, Lcom/peripheral/ble/BluetoothBytesParser;->asHexString([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$18;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "writing <%s> to descriptor <%s>"

    invoke-static {v0, v1, v3}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1344
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$18;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$2708(Lcom/peripheral/ble/BluetoothPeripheral;)I

    goto :goto_0

    .line 1346
    :cond_0
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$18;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "writeDescriptor failed for descriptor: %s"

    invoke-static {v0, v1, v2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$18;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    :goto_0
    return-void
.end method
