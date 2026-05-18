.class Lcom/peripheral/ble/BluetoothCentralManager$6$2;
.super Ljava/lang/Object;
.source "BluetoothCentralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothCentralManager$6;->connected(Lcom/peripheral/ble/BluetoothPeripheral;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothCentralManager$6;

.field final synthetic val$peripheral:Lcom/peripheral/ble/BluetoothPeripheral;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothCentralManager$6;Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$6$2;->this$1:Lcom/peripheral/ble/BluetoothCentralManager$6;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager$6$2;->val$peripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$6$2;->this$1:Lcom/peripheral/ble/BluetoothCentralManager$6;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$300(Lcom/peripheral/ble/BluetoothCentralManager;)Lcom/peripheral/ble/BluetoothCentralManagerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$6$2;->val$peripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v0, v1}, Lcom/peripheral/ble/BluetoothCentralManagerCallback;->onConnectedPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;)V

    return-void
.end method
