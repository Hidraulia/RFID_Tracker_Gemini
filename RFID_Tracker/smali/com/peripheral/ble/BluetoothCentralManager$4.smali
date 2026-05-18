.class Lcom/peripheral/ble/BluetoothCentralManager$4;
.super Ljava/lang/Object;
.source "BluetoothCentralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothCentralManager;->sendScanFailed(Lcom/peripheral/ble/ScanFailure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothCentralManager;

.field final synthetic val$scanFailure:Lcom/peripheral/ble/ScanFailure;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothCentralManager;Lcom/peripheral/ble/ScanFailure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$4;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager$4;->val$scanFailure:Lcom/peripheral/ble/ScanFailure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 158
    invoke-static {}, Lcom/peripheral/ble/BluetoothCentralManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothCentralManager$4;->val$scanFailure:Lcom/peripheral/ble/ScanFailure;

    iget v2, v2, Lcom/peripheral/ble/ScanFailure;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothCentralManager$4;->val$scanFailure:Lcom/peripheral/ble/ScanFailure;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "scan failed with error code %d (%s)"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$4;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$300(Lcom/peripheral/ble/BluetoothCentralManager;)Lcom/peripheral/ble/BluetoothCentralManagerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$4;->val$scanFailure:Lcom/peripheral/ble/ScanFailure;

    invoke-virtual {v0, v1}, Lcom/peripheral/ble/BluetoothCentralManagerCallback;->onScanFailed(Lcom/peripheral/ble/ScanFailure;)V

    return-void
.end method
