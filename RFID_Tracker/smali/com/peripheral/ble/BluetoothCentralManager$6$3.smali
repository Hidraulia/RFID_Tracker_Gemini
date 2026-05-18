.class Lcom/peripheral/ble/BluetoothCentralManager$6$3;
.super Ljava/lang/Object;
.source "BluetoothCentralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothCentralManager$6;->connectFailed(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothCentralManager$6;

.field final synthetic val$peripheral:Lcom/peripheral/ble/BluetoothPeripheral;

.field final synthetic val$status:Lcom/peripheral/ble/HciStatus;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothCentralManager$6;Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$6$3;->this$1:Lcom/peripheral/ble/BluetoothCentralManager$6;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager$6$3;->val$peripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothCentralManager$6$3;->val$status:Lcom/peripheral/ble/HciStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$6$3;->this$1:Lcom/peripheral/ble/BluetoothCentralManager$6;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothCentralManager$6;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$300(Lcom/peripheral/ble/BluetoothCentralManager;)Lcom/peripheral/ble/BluetoothCentralManagerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$6$3;->val$peripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothCentralManager$6$3;->val$status:Lcom/peripheral/ble/HciStatus;

    invoke-virtual {v0, v1, v2}, Lcom/peripheral/ble/BluetoothCentralManagerCallback;->onConnectionFailed(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V

    return-void
.end method
