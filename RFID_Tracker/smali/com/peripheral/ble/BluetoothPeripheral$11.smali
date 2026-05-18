.class Lcom/peripheral/ble/BluetoothPeripheral$11;
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

    .line 702
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$11;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 705
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_0

    return-void

    .line 709
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$11;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v0, -0x80000000

    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    .line 711
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 712
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pairing request received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral$11;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v2, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->access$2400(Lcom/peripheral/ble/BluetoothPeripheral;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_2

    .line 715
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral$11;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p2}, Lcom/peripheral/ble/BluetoothPeripheral;->access$500(Lcom/peripheral/ble/BluetoothPeripheral;)Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

    move-result-object p2

    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$11;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-interface {p2, v0}, Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;->getPincode(Lcom/peripheral/ble/BluetoothPeripheral;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 717
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheral;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "setting PIN code for this peripheral using \'%s\'"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    .line 719
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral$11;->abortBroadcast()V

    :cond_2
    return-void
.end method
