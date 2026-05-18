.class Lcom/peripheral/ble/BluetoothCentralManager$9$1;
.super Ljava/lang/Object;
.source "BluetoothCentralManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothCentralManager$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothCentralManager$9;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothCentralManager$9;)V
    .locals 0

    .line 941
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager$9$1;->this$1:Lcom/peripheral/ble/BluetoothCentralManager$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager$9$1;->this$1:Lcom/peripheral/ble/BluetoothCentralManager$9;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothCentralManager$9;->this$0:Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothCentralManager;->access$1000(Lcom/peripheral/ble/BluetoothCentralManager;)V

    return-void
.end method
