.class Lcom/peripheral/ble/BluetoothPeripheral$25$1;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothPeripheral$25;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral$25;)V
    .locals 0

    .line 1927
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$25$1;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1930
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$25$1;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$25;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheral$25;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1931
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$25$1;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$25;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheral$25;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$2800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$25$1;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$25;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheral$25;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sget-object v2, Lcom/peripheral/ble/HciStatus;->CONNECTION_FAILED_ESTABLISHMENT:Lcom/peripheral/ble/HciStatus;

    iget v2, v2, Lcom/peripheral/ble/HciStatus;->value:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    :cond_0
    return-void
.end method
