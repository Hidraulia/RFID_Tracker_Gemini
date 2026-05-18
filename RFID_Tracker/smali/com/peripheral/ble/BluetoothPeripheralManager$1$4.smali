.class Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;
.super Ljava/lang/Object;
.source "BluetoothPeripheralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheralManager$1;->onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

.field final synthetic val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$offset:I

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheralManager$1;ILcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iput p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->val$offset:I

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    iput-object p4, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p5, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput p6, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->val$requestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 188
    sget-object v0, Lcom/peripheral/ble/GattStatus;->SUCCESS:Lcom/peripheral/ble/GattStatus;

    .line 191
    iget v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->val$offset:I

    if-nez v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->val$bluetoothCentral:Lcom/peripheral/ble/BluetoothCentral;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1, v2}, Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;->onCharacteristicRead(Lcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/peripheral/ble/ReadResponse;

    move-result-object v0

    const-string v1, "no valid ReadResponse returned"

    .line 193
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    iget-object v1, v0, Lcom/peripheral/ble/ReadResponse;->status:Lcom/peripheral/ble/GattStatus;

    .line 195
    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v2, v2, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    iget-object v0, v0, Lcom/peripheral/ble/ReadResponse;->value:[B

    invoke-static {v2, v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$902(Lcom/peripheral/ble/BluetoothPeripheralManager;[B)[B

    move-object v0, v1

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v2, v2, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$900(Lcom/peripheral/ble/BluetoothPeripheralManager;)[B

    move-result-object v2

    iget v3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->val$offset:I

    invoke-static {v1, v2, v3}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$1000(Lcom/peripheral/ble/BluetoothPeripheralManager;[BI)[B

    move-result-object v9

    .line 201
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheralManager$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$200(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v4

    iget-object v5, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget v6, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->val$requestId:I

    iget v7, v0, Lcom/peripheral/ble/GattStatus;->value:I

    iget v8, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$1$4;->val$offset:I

    invoke-virtual/range {v4 .. v9}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    return-void
.end method
