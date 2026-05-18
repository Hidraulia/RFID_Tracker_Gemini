.class Lcom/peripheral/ble/BluetoothPeripheral$12;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral;->createBond()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheral;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$12;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 835
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$12;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$2502(Lcom/peripheral/ble/BluetoothPeripheral;Z)Z

    .line 836
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$12;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$2600(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 837
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$12;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v3}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "bonding failed for %s"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$12;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    goto :goto_0

    .line 840
    :cond_0
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$12;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v3}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "manually bonding %s"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$12;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$2708(Lcom/peripheral/ble/BluetoothPeripheral;)I

    :goto_0
    return-void
.end method
