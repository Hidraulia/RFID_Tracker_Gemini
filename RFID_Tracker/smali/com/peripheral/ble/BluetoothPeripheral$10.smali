.class Lcom/peripheral/ble/BluetoothPeripheral$10;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral;->handleBondStateChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheral;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$10;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$10;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->getState()Lcom/peripheral/ble/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/peripheral/ble/ConnectionState;->CONNECTED:Lcom/peripheral/ble/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 693
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$10;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$700(Lcom/peripheral/ble/BluetoothPeripheral;)V

    :cond_0
    return-void
.end method
