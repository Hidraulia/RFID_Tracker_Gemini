.class Lcom/peripheral/ble/BluetoothPeripheral$16;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/peripheral/ble/WriteType;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheral;

.field final synthetic val$bytesToWrite:[B

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$writeType:Lcom/peripheral/ble/WriteType;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral;[BLcom/peripheral/ble/WriteType;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1242
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->val$bytesToWrite:[B

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->val$writeType:Lcom/peripheral/ble/WriteType;

    iput-object p4, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1245
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->val$bytesToWrite:[B

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->val$writeType:Lcom/peripheral/ble/WriteType;

    invoke-static {v0, v1, v2}, Lcom/peripheral/ble/BluetoothPeripheral;->access$2900(Lcom/peripheral/ble/BluetoothPeripheral;[BLcom/peripheral/ble/WriteType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value byte array is longer than allowed by MTU, write will fail if peripheral does not support long writes"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->val$bytesToWrite:[B

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->val$writeType:Lcom/peripheral/ble/WriteType;

    invoke-static {v0, v1, v2, v3}, Lcom/peripheral/ble/BluetoothPeripheral;->access$3000(Lcom/peripheral/ble/BluetoothPeripheral;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/peripheral/ble/WriteType;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1256
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->val$bytesToWrite:[B

    invoke-static {v4}, Lcom/peripheral/ble/BluetoothBytesParser;->asHexString([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "writing <%s> to characteristic <%s>"

    invoke-static {v0, v1, v3}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1257
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$2708(Lcom/peripheral/ble/BluetoothPeripheral;)I

    goto :goto_0

    .line 1259
    :cond_1
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "writeCharacteristic failed for characteristic: %s"

    invoke-static {v0, v1, v2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1260
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$16;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    :goto_0
    return-void
.end method
