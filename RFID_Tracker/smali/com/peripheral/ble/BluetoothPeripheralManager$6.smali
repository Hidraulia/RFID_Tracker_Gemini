.class Lcom/peripheral/ble/BluetoothPeripheralManager$6;
.super Ljava/lang/Object;
.source "BluetoothPeripheralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheralManager;->nextCommand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

.field final synthetic val$bluetoothCommand:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheralManager;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 751
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$6;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$6;->val$bluetoothCommand:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$6;->val$bluetoothCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 757
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "command exception"

    invoke-static {v1, v2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-static {}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$6;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$800(Lcom/peripheral/ble/BluetoothPeripheralManager;)V

    :goto_0
    return-void
.end method
