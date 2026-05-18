.class Lcom/peripheral/ble/BluetoothCentralManager$8$1;
.super Ljava/lang/Object;
.source "BluetoothCentralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothCentralManager$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothCentralManager$8;

.field final synthetic val$callback:Landroid/bluetooth/le/ScanCallback;

.field final synthetic val$filters:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothCentralManager$8;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 902
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$8$1;->this$1:Lcom/peripheral/ble/BluetoothCentralManager$8;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager$8$1;->val$callback:Landroid/bluetooth/le/ScanCallback;

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothCentralManager$8$1;->val$filters:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 905
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$8$1;->val$callback:Landroid/bluetooth/le/ScanCallback;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$8$1;->this$1:Lcom/peripheral/ble/BluetoothCentralManager$8;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothCentralManager$8;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$8$1;->val$filters:Ljava/util/List;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothCentralManager$8$1;->this$1:Lcom/peripheral/ble/BluetoothCentralManager$8;

    iget-object v2, v2, Lcom/peripheral/ble/BluetoothCentralManager$8;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v2}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1600(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothCentralManager$8$1;->val$callback:Landroid/bluetooth/le/ScanCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1700(Lcom/peripheral/ble/BluetoothCentralManager;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    :cond_0
    return-void
.end method
