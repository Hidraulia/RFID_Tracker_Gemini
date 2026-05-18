.class Lcom/peripheral/ble/BluetoothPeripheral$22;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral;->requestConnectionPriority(Lcom/peripheral/ble/ConnectionPriority;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheral;

.field final synthetic val$priority:Lcom/peripheral/ble/ConnectionPriority;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/ConnectionPriority;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1511
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$22;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$22;->val$priority:Lcom/peripheral/ble/ConnectionPriority;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1514
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$22;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$22;->val$priority:Lcom/peripheral/ble/ConnectionPriority;

    iget v1, v1, Lcom/peripheral/ble/ConnectionPriority;->value:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$22;->val$priority:Lcom/peripheral/ble/ConnectionPriority;

    aput-object v3, v1, v2

    const-string v2, "requesting connection priority %s"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1517
    :cond_0
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "could not request connection priority"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    :goto_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$22;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/peripheral/ble/BluetoothPeripheral$22$1;

    invoke-direct {v1, p0}, Lcom/peripheral/ble/BluetoothPeripheral$22$1;-><init>(Lcom/peripheral/ble/BluetoothPeripheral$22;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
