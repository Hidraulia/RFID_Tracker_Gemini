.class Lcom/peripheral/ble/BluetoothPeripheralManager$1$3;
.super Ljava/lang/Object;
.source "BluetoothPeripheralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheralManager$1;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

.field final synthetic val$service:Landroid/bluetooth/BluetoothGattService;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheralManager$1;ILandroid/bluetooth/BluetoothGattService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$3;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iput p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$3;->val$status:I

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$3;->val$service:Landroid/bluetooth/BluetoothGattService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$3;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    move-result-object v0

    iget v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$3;->val$status:I

    invoke-static {v1}, Lcom/peripheral/ble/GattStatus;->fromValue(I)Lcom/peripheral/ble/GattStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$3;->val$service:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0, v1, v2}, Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;->onServiceAdded(Lcom/peripheral/ble/GattStatus;Landroid/bluetooth/BluetoothGattService;)V

    return-void
.end method
