.class Lcom/peripheral/ble/BluetoothPeripheral$1$3;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral$1;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

.field final synthetic val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field final synthetic val$gattStatus:Lcom/peripheral/ble/GattStatus;

.field final synthetic val$value:[B


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral$1;[BLandroid/bluetooth/BluetoothGattDescriptor;Lcom/peripheral/ble/GattStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$3;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$3;->val$value:[B

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$3;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iput-object p4, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$3;->val$gattStatus:Lcom/peripheral/ble/GattStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$3;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$3;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$3;->val$value:[B

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$3;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$3;->val$gattStatus:Lcom/peripheral/ble/GattStatus;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/peripheral/ble/BluetoothPeripheralCallback;->onDescriptorWrite(Lcom/peripheral/ble/BluetoothPeripheral;[BLandroid/bluetooth/BluetoothGattDescriptor;Lcom/peripheral/ble/GattStatus;)V

    return-void
.end method
