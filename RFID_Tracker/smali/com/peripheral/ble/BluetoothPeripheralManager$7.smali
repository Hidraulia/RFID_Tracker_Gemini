.class Lcom/peripheral/ble/BluetoothPeripheralManager$7;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPeripheralManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peripheral/ble/BluetoothPeripheralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheralManager;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$7;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 792
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 795
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 796
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 798
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$7;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {p2, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$2000(Lcom/peripheral/ble/BluetoothPeripheralManager;I)V

    :cond_1
    return-void
.end method
