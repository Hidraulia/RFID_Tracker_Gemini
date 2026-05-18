.class Lcom/peripheral/ble/BluetoothPeripheral$25;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral;->startConnectionTimer(Lcom/peripheral/ble/BluetoothPeripheral;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheral;

.field final synthetic val$peripheral:Lcom/peripheral/ble/BluetoothPeripheral;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1921
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$25;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$25;->val$peripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1924
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$25;->val$peripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v2}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "connection timout, disconnecting \'%s\'"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1925
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$25;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$700(Lcom/peripheral/ble/BluetoothPeripheral;)V

    .line 1927
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$25;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$3200(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/peripheral/ble/BluetoothPeripheral$25$1;

    invoke-direct {v1, p0}, Lcom/peripheral/ble/BluetoothPeripheral$25$1;-><init>(Lcom/peripheral/ble/BluetoothPeripheral$25;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1936
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$25;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$3302(Lcom/peripheral/ble/BluetoothPeripheral;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
