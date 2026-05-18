.class Lcom/peripheral/ble/BluetoothPeripheral$22$1;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peripheral/ble/BluetoothPeripheral$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/peripheral/ble/BluetoothPeripheral$22;


# direct methods
.method constructor <init>(Lcom/peripheral/ble/BluetoothPeripheral$22;)V
    .locals 0

    .line 1521
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral$22$1;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral$22$1;->this$1:Lcom/peripheral/ble/BluetoothPeripheral$22;

    iget-object v0, v0, Lcom/peripheral/ble/BluetoothPeripheral$22;->this$0:Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothPeripheral;->access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V

    return-void
.end method
