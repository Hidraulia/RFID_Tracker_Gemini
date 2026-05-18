.class Lcom/peripheral/ble/BluetoothCentralManager$11;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothCentralManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peripheral/ble/BluetoothCentralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothCentralManager;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothCentralManager;)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$11;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1083
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 1086
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 1087
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1088
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager$11;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {p2, p1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$2000(Lcom/peripheral/ble/BluetoothCentralManager;I)V

    .line 1089
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager$11;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {p2}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1100(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/peripheral/ble/BluetoothCentralManager$11$1;

    invoke-direct {v0, p0, p1}, Lcom/peripheral/ble/BluetoothCentralManager$11$1;-><init>(Lcom/peripheral/ble/BluetoothCentralManager$11;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
