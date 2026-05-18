.class Lcom/peripheral/ble/BluetoothCentralManager$5$1;
.super Ljava/lang/Object;
.source "BluetoothCentralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothCentralManager$5;->onScanFailed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothCentralManager$5;

.field final synthetic val$scanFailure:Lcom/peripheral/ble/ScanFailure;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothCentralManager$5;Lcom/peripheral/ble/ScanFailure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$5$1;->this$1:Lcom/peripheral/ble/BluetoothCentralManager$5;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager$5$1;->val$scanFailure:Lcom/peripheral/ble/ScanFailure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$5$1;->this$1:Lcom/peripheral/ble/BluetoothCentralManager$5;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothCentralManager$5;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$300(Lcom/peripheral/ble/BluetoothCentralManager;)Lcom/peripheral/ble/BluetoothCentralManagerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$5$1;->val$scanFailure:Lcom/peripheral/ble/ScanFailure;

    invoke-virtual {v0, v1}, Lcom/peripheral/ble/BluetoothCentralManagerCallback;->onScanFailed(Lcom/peripheral/ble/ScanFailure;)V

    return-void
.end method
