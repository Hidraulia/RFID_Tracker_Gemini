.class Lcom/peripheral/ble/BluetoothPeripheralManager$2$1;
.super Ljava/lang/Object;
.source "BluetoothPeripheralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheralManager$2;->onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$2;

.field final synthetic val$settingsInEffect:Landroid/bluetooth/le/AdvertiseSettings;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheralManager$2;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 446
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$2$1;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$2;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$2$1;->val$settingsInEffect:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$2$1;->this$1:Lcom/peripheral/ble/BluetoothPeripheralManager$2;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheralManager$2;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$2$1;->val$settingsInEffect:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-virtual {v0, v1}, Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;->onAdvertisingStarted(Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method
