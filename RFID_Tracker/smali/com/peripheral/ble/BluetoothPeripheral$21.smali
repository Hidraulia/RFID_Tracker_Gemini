.class Lcom/peripheral/ble/BluetoothPeripheral$21;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral;->requestMtu(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheral;

.field final synthetic val$mtu:I


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1488
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$21;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iput p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$21;->val$mtu:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1491
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$21;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$21;->val$mtu:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$21;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1402(Lcom/peripheral/ble/BluetoothPeripheral;I)I

    .line 1493
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$21;->val$mtu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "requesting MTU of %d"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1495
    :cond_0
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestMtu failed"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$21;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    :goto_0
    return-void
.end method
