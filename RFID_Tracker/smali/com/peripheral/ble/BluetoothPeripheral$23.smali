.class Lcom/peripheral/ble/BluetoothPeripheral$23;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral;->setPreferredPhy(Lcom/peripheral/ble/PhyType;Lcom/peripheral/ble/PhyType;Lcom/peripheral/ble/PhyOptions;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheral;

.field final synthetic val$phyOptions:Lcom/peripheral/ble/PhyOptions;

.field final synthetic val$rxPhy:Lcom/peripheral/ble/PhyType;

.field final synthetic val$txPhy:Lcom/peripheral/ble/PhyType;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/PhyType;Lcom/peripheral/ble/PhyType;Lcom/peripheral/ble/PhyOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1554
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$23;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$23;->val$txPhy:Lcom/peripheral/ble/PhyType;

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheral$23;->val$rxPhy:Lcom/peripheral/ble/PhyType;

    iput-object p4, p0, Lcom/peripheral/ble/BluetoothPeripheral$23;->val$phyOptions:Lcom/peripheral/ble/PhyOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1557
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$23;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1402(Lcom/peripheral/ble/BluetoothPeripheral;I)I

    .line 1559
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$23;->val$txPhy:Lcom/peripheral/ble/PhyType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/peripheral/ble/BluetoothPeripheral$23;->val$rxPhy:Lcom/peripheral/ble/PhyType;

    aput-object v5, v2, v3

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$23;->val$phyOptions:Lcom/peripheral/ble/PhyOptions;

    aput-object v3, v2, v1

    const-string v1, "setting preferred Phy: tx = %s, rx = %s, options = %s"

    invoke-static {v0, v1, v2}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1560
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$23;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$23;->val$txPhy:Lcom/peripheral/ble/PhyType;

    iget v1, v1, Lcom/peripheral/ble/PhyType;->mask:I

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$23;->val$rxPhy:Lcom/peripheral/ble/PhyType;

    iget v2, v2, Lcom/peripheral/ble/PhyType;->mask:I

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$23;->val$phyOptions:Lcom/peripheral/ble/PhyOptions;

    iget v3, v3, Lcom/peripheral/ble/PhyOptions;->value:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGatt;->setPreferredPhy(III)V

    .line 1562
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$23;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0, v4}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1402(Lcom/peripheral/ble/BluetoothPeripheral;I)I

    .line 1566
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$23;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/peripheral/ble/BluetoothPeripheral$23$1;

    invoke-direct {v1, p0}, Lcom/peripheral/ble/BluetoothPeripheral$23$1;-><init>(Lcom/peripheral/ble/BluetoothPeripheral$23;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
