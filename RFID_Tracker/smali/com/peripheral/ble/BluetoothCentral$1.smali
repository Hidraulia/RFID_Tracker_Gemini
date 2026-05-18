.class synthetic Lcom/peripheral/ble/BluetoothCentral$1;
.super Ljava/lang/Object;
.source "BluetoothCentral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peripheral/ble/BluetoothCentral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$peripheral$ble$WriteType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    invoke-static {}, Lcom/peripheral/ble/WriteType;->values()[Lcom/peripheral/ble/WriteType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/peripheral/ble/BluetoothCentral$1;->$SwitchMap$com$peripheral$ble$WriteType:[I

    :try_start_0
    sget-object v1, Lcom/peripheral/ble/WriteType;->WITH_RESPONSE:Lcom/peripheral/ble/WriteType;

    invoke-virtual {v1}, Lcom/peripheral/ble/WriteType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/peripheral/ble/BluetoothCentral$1;->$SwitchMap$com$peripheral$ble$WriteType:[I

    sget-object v1, Lcom/peripheral/ble/WriteType;->SIGNED:Lcom/peripheral/ble/WriteType;

    invoke-virtual {v1}, Lcom/peripheral/ble/WriteType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
