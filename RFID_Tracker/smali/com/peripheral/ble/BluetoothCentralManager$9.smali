.class Lcom/peripheral/ble/BluetoothCentralManager$9;
.super Ljava/lang/Object;
.source "BluetoothCentralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothCentralManager;->setAutoConnectTimer()V
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

    .line 932
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$9;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 935
    invoke-static {}, Lcom/peripheral/ble/BluetoothCentralManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "autoconnect scan timeout, restarting scan"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$9;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$600(Lcom/peripheral/ble/BluetoothCentralManager;)V

    .line 941
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$9;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1800(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/peripheral/ble/BluetoothCentralManager$9$1;

    invoke-direct {v1, p0}, Lcom/peripheral/ble/BluetoothCentralManager$9$1;-><init>(Lcom/peripheral/ble/BluetoothCentralManager$9;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
