.class Lcom/peripheral/ble/BluetoothCentralManager$8;
.super Ljava/lang/Object;
.source "BluetoothCentralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothCentralManager;->setScanTimer()V
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

    .line 893
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$8;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 896
    invoke-static {}, Lcom/peripheral/ble/BluetoothCentralManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scanning timeout, restarting scan"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$8;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1400(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v0

    .line 898
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$8;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1500(Lcom/peripheral/ble/BluetoothCentralManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager$8;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v1}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1500(Lcom/peripheral/ble/BluetoothCentralManager;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 899
    :goto_0
    iget-object v2, p0, Lcom/peripheral/ble/BluetoothCentralManager$8;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-virtual {v2}, Lcom/peripheral/ble/BluetoothCentralManager;->stopScan()V

    .line 902
    iget-object v2, p0, Lcom/peripheral/ble/BluetoothCentralManager$8;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v2}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1100(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/peripheral/ble/BluetoothCentralManager$8$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/peripheral/ble/BluetoothCentralManager$8$1;-><init>(Lcom/peripheral/ble/BluetoothCentralManager$8;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
