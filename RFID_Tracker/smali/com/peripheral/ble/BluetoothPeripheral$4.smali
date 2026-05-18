.class Lcom/peripheral/ble/BluetoothPeripheral$4;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPeripheral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peripheral/ble/BluetoothPeripheral;
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

    .line 575
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$4;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 578
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 580
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_1

    return-void

    .line 584
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$4;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 586
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    .line 587
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    .line 588
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 589
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$4;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p2, v0, p1}, Lcom/peripheral/ble/BluetoothPeripheral;->access$2200(Lcom/peripheral/ble/BluetoothPeripheral;II)V

    :cond_3
    return-void
.end method
