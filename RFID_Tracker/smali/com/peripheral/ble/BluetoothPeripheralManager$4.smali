.class Lcom/peripheral/ble/BluetoothPeripheralManager$4;
.super Ljava/lang/Object;
.source "BluetoothPeripheralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheralManager;->add(Landroid/bluetooth/BluetoothGattService;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

.field final synthetic val$service:Landroid/bluetooth/BluetoothGattService;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothGattService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 557
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$4;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$4;->val$service:Landroid/bluetooth/BluetoothGattService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 560
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$4;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$200(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$4;->val$service:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattServer;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$4;->val$service:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "adding service %s failed"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$4;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$800(Lcom/peripheral/ble/BluetoothPeripheralManager;)V

    :cond_0
    return-void
.end method
