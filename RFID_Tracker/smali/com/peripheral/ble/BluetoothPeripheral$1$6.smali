.class Lcom/peripheral/ble/BluetoothPeripheral$1$6;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral$1;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

.field final synthetic val$gattStatus:Lcom/peripheral/ble/GattStatus;

.field final synthetic val$mtu:I


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral$1;ILcom/peripheral/ble/GattStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$6;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

    iput p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$6;->val$mtu:I

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$6;->val$gattStatus:Lcom/peripheral/ble/GattStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$6;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$6;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$6;->val$mtu:I

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$6;->val$gattStatus:Lcom/peripheral/ble/GattStatus;

    invoke-virtual {v0, v1, v2, v3}, Lcom/peripheral/ble/BluetoothPeripheralCallback;->onMtuChanged(Lcom/peripheral/ble/BluetoothPeripheral;ILcom/peripheral/ble/GattStatus;)V

    return-void
.end method
