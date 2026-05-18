.class Lcom/peripheral/ble/BluetoothPeripheralManager$3;
.super Ljava/lang/Object;
.source "BluetoothPeripheralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheralManager;->onAdvertisingStopped()V
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

    .line 469
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$3;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager$3;->this$0:Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->access$400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;->onAdvertisingStopped()V

    return-void
.end method
