.class Lcom/peripheral/ble/BluetoothCentralManager$7;
.super Ljava/lang/Object;
.source "BluetoothCentralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothCentralManager;->cancelConnection(Lcom/peripheral/ble/BluetoothPeripheral;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothCentralManager;

.field final synthetic val$peripheral:Lcom/peripheral/ble/BluetoothPeripheral;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothCentralManager;Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 736
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$7;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager$7;->val$peripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$7;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$300(Lcom/peripheral/ble/BluetoothCentralManager;)Lcom/peripheral/ble/BluetoothCentralManagerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$7;->val$peripheral:Lcom/peripheral/ble/BluetoothPeripheral;

    sget-object v2, Lcom/peripheral/ble/HciStatus;->SUCCESS:Lcom/peripheral/ble/HciStatus;

    invoke-virtual {v0, v1, v2}, Lcom/peripheral/ble/BluetoothCentralManagerCallback;->onDisconnectedPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V

    return-void
.end method
