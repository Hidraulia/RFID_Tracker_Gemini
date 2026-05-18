.class Lcom/peripheral/ble/BluetoothCentralManager$2;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothCentralManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peripheral/ble/BluetoothCentralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothCentralManager;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothCentralManager;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$2;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$2;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-virtual {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->stopScan()V

    .line 135
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$2;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {p1}, Lcom/peripheral/ble/ScanFailure;->fromValue(I)Lcom/peripheral/ble/ScanFailure;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$200(Lcom/peripheral/ble/BluetoothCentralManager;Lcom/peripheral/ble/ScanFailure;)V

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$2;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {p1, p2}, Lcom/peripheral/ble/BluetoothCentralManager;->access$100(Lcom/peripheral/ble/BluetoothCentralManager;Landroid/bluetooth/le/ScanResult;)V

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
