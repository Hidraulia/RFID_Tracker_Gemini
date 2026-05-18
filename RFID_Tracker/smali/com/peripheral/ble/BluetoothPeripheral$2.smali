.class Lcom/peripheral/ble/BluetoothPeripheral$2;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral;->delayedDiscoverServices(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheral;

.field final synthetic val$delay:J


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 484
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$2;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iput-wide p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$2;->val$delay:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 487
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$2;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v2}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$2;->val$delay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "discovering services of \'%s\' with delay of %d ms"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$2;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$2;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$2;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0, v3}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1902(Lcom/peripheral/ble/BluetoothPeripheral;Z)Z

    goto :goto_0

    .line 491
    :cond_0
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "discoverServices failed to start"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$2;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$2002(Lcom/peripheral/ble/BluetoothPeripheral;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
