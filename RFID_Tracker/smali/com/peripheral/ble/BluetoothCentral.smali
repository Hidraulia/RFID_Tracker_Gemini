.class public Lcom/peripheral/ble/BluetoothCentral;
.super Ljava/lang/Object;
.source "BluetoothCentral.java"


# instance fields
.field private currentMtu:I

.field protected final device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    .line 40
    iput v0, p0, Lcom/peripheral/ble/BluetoothCentral;->currentMtu:I

    .line 43
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentral;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public createBond()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    check-cast p1, Lcom/peripheral/ble/BluetoothCentral;

    .line 93
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/peripheral/ble/BluetoothCentral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBondState()Lcom/peripheral/ble/BondState;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    invoke-static {v0}, Lcom/peripheral/ble/BondState;->fromValue(I)Lcom/peripheral/ble/BondState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMtu()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/peripheral/ble/BluetoothCentral;->currentMtu:I

    return v0
.end method

.method public getMaximumWriteValueLength(Lcom/peripheral/ble/WriteType;)I
    .locals 1

    const-string v0, "writetype is null"

    .line 76
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/peripheral/ble/BluetoothCentral$1;->$SwitchMap$com$peripheral$ble$WriteType:[I

    invoke-virtual {p1}, Lcom/peripheral/ble/WriteType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 84
    iget p1, p0, Lcom/peripheral/ble/BluetoothCentral;->currentMtu:I

    add-int/lit8 p1, p1, -0x3

    return p1

    .line 82
    :cond_0
    iget p1, p0, Lcom/peripheral/ble/BluetoothCentral;->currentMtu:I

    add-int/lit8 p1, p1, -0xf

    return p1

    :cond_1
    const/16 p1, 0x200

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentral;->device:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected setCurrentMtu(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/peripheral/ble/BluetoothCentral;->currentMtu:I

    return-void
.end method

.method public setPairingConfirmation(Ljava/lang/Boolean;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    move-result p1

    return p1
.end method
