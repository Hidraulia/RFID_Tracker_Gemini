.class Lcom/peripheral/ble/BluetoothPeripheralManager$1$9;
.super Ljava/lang/Object;
.source "BluetoothPeripheralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheralManager$1;->onNotificationSent(Landroid/bluetooth/BluetoothDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

.field final synthetic val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$status:I

.field final synthetic val$value:[B


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheralManager$1;Lcom/peripheral/ble/BluetoothCentral;[BLandroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$9;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$9;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$9;->val$value:[B

    iput-object p4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$9;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput p5, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$9;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 418
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$9;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$9;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$9;->val$value:[B

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$9;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget v4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$9;->val$status:I

    invoke-static {v4}, Lcom/peripheral/ble/GattStatus;->fromValue(I)Lcom/peripheral/ble/GattStatus;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;->onNotificationSent(Lcom/peripheral/ble/BluetoothCentral;[BLandroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/GattStatus;)V

    return-void
.end method
