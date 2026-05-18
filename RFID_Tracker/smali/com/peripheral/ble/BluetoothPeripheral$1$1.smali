.class Lcom/peripheral/ble/BluetoothPeripheral$1$1;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral$1;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral$1;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$1;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$1;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$1$1;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$1;

    iget-object v1, v1, Lcom/peripheral/ble/BluetoothPeripheral$1;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v0, v1}, Lcom/peripheral/ble/BluetoothPeripheralCallback;->onServicesDiscovered(Lcom/peripheral/ble/BluetoothPeripheral;)V

    return-void
.end method
