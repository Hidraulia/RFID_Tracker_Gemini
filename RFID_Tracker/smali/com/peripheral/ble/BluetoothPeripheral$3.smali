.class Lcom/peripheral/ble/BluetoothPeripheral$3;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral;->successfullyDisconnected(I)V
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

    .line 522
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$3;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$3;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$3;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    const/4 v1, 0x0

    sget-object v2, Lcom/peripheral/ble/HciStatus;->AUTHENTICATION_FAILURE:Lcom/peripheral/ble/HciStatus;

    invoke-static {v0, v1, v2}, Lcom/peripheral/ble/BluetoothPeripheral;->access$2100(Lcom/peripheral/ble/BluetoothPeripheral;ZLcom/peripheral/ble/HciStatus;)V

    .line 528
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$3;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$500(Lcom/peripheral/ble/BluetoothPeripheral;)Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral$3;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    sget-object v2, Lcom/peripheral/ble/HciStatus;->AUTHENTICATION_FAILURE:Lcom/peripheral/ble/HciStatus;

    invoke-interface {v0, v1, v2}, Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;->connectFailed(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V

    goto :goto_0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$3;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    const/4 v1, 0x1

    sget-object v2, Lcom/peripheral/ble/HciStatus;->AUTHENTICATION_FAILURE:Lcom/peripheral/ble/HciStatus;

    invoke-static {v0, v1, v2}, Lcom/peripheral/ble/BluetoothPeripheral;->access$2100(Lcom/peripheral/ble/BluetoothPeripheral;ZLcom/peripheral/ble/HciStatus;)V

    :goto_0
    return-void
.end method
