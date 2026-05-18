.class Lcom/peripheral/ble/BluetoothCentralManager$3;
.super Ljava/lang/Object;
.source "BluetoothCentralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothCentralManager;->sendScanResult(Landroid/bluetooth/le/ScanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothCentralManager;

.field final synthetic val$result:Landroid/bluetooth/le/ScanResult;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothCentralManager;Landroid/bluetooth/le/ScanResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$3;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager$3;->val$result:Landroid/bluetooth/le/ScanResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$3;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-virtual {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$3;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$3;->val$result:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/peripheral/ble/BluetoothCentralManager;->getPeripheral(Ljava/lang/String;)Lcom/peripheral/ble/BluetoothPeripheral;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$3;->val$result:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/peripheral/ble/BluetoothPeripheral;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 146
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$3;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$300(Lcom/peripheral/ble/BluetoothCentralManager;)Lcom/peripheral/ble/BluetoothCentralManagerCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothCentralManager$3;->val$result:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v1, v0, v2}, Lcom/peripheral/ble/BluetoothCentralManagerCallback;->onDiscoveredPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;Landroid/bluetooth/le/ScanResult;)V

    :cond_0
    return-void
.end method
