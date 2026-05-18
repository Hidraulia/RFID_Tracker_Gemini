.class Lcom/peripheral/ble/BluetoothPeripheral$1$8;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral$1;->onPhyUpdate(Landroid/bluetooth/BluetoothGatt;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

.field final synthetic val$gattStatus:Lcom/peripheral/ble/GattStatus;

.field final synthetic val$rxPhy:I

.field final synthetic val$txPhy:I


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral$1;IILcom/peripheral/ble/GattStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

    iput p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$8;->val$txPhy:I

    iput p3, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$8;->val$rxPhy:I

    iput-object p4, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$8;->val$gattStatus:Lcom/peripheral/ble/GattStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 428
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$8;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$8;->val$txPhy:I

    invoke-static {v2}, Lcom/peripheral/ble/PhyType;->fromValue(I)Lcom/peripheral/ble/PhyType;

    move-result-object v2

    iget v3, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$8;->val$rxPhy:I

    invoke-static {v3}, Lcom/peripheral/ble/PhyType;->fromValue(I)Lcom/peripheral/ble/PhyType;

    move-result-object v3

    iget-object v4, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$8;->val$gattStatus:Lcom/peripheral/ble/GattStatus;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/peripheral/ble/BluetoothPeripheralCallback;->onPhyUpdate(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/PhyType;Lcom/peripheral/ble/PhyType;Lcom/peripheral/ble/GattStatus;)V

    return-void
.end method
