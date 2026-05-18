.class public final enum Lcom/peripheral/ble/CharacteristicWriteType;
.super Ljava/lang/Enum;
.source "CharacteristicWriteType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peripheral/ble/CharacteristicWriteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/peripheral/ble/CharacteristicWriteType;

.field public static final enum UNKNOWN:Lcom/peripheral/ble/CharacteristicWriteType;

.field public static final enum WRITE_TYPE_DEFAULT:Lcom/peripheral/ble/CharacteristicWriteType;

.field public static final enum WRITE_TYPE_NO_RESPONSE:Lcom/peripheral/ble/CharacteristicWriteType;

.field public static final enum WRITE_TYPE_SIGNED:Lcom/peripheral/ble/CharacteristicWriteType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcom/peripheral/ble/CharacteristicWriteType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/peripheral/ble/CharacteristicWriteType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicWriteType;->UNKNOWN:Lcom/peripheral/ble/CharacteristicWriteType;

    .line 6
    new-instance v0, Lcom/peripheral/ble/CharacteristicWriteType;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "WRITE_TYPE_DEFAULT"

    invoke-direct {v0, v4, v3, v2}, Lcom/peripheral/ble/CharacteristicWriteType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicWriteType;->WRITE_TYPE_DEFAULT:Lcom/peripheral/ble/CharacteristicWriteType;

    .line 7
    new-instance v0, Lcom/peripheral/ble/CharacteristicWriteType;

    const-string v4, "WRITE_TYPE_NO_RESPONSE"

    invoke-direct {v0, v4, v2, v3}, Lcom/peripheral/ble/CharacteristicWriteType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicWriteType;->WRITE_TYPE_NO_RESPONSE:Lcom/peripheral/ble/CharacteristicWriteType;

    .line 8
    new-instance v0, Lcom/peripheral/ble/CharacteristicWriteType;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const-string v6, "WRITE_TYPE_SIGNED"

    invoke-direct {v0, v6, v5, v4}, Lcom/peripheral/ble/CharacteristicWriteType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicWriteType;->WRITE_TYPE_SIGNED:Lcom/peripheral/ble/CharacteristicWriteType;

    new-array v4, v4, [Lcom/peripheral/ble/CharacteristicWriteType;

    .line 3
    sget-object v6, Lcom/peripheral/ble/CharacteristicWriteType;->UNKNOWN:Lcom/peripheral/ble/CharacteristicWriteType;

    aput-object v6, v4, v1

    sget-object v1, Lcom/peripheral/ble/CharacteristicWriteType;->WRITE_TYPE_DEFAULT:Lcom/peripheral/ble/CharacteristicWriteType;

    aput-object v1, v4, v3

    sget-object v1, Lcom/peripheral/ble/CharacteristicWriteType;->WRITE_TYPE_NO_RESPONSE:Lcom/peripheral/ble/CharacteristicWriteType;

    aput-object v1, v4, v2

    aput-object v0, v4, v5

    sput-object v4, Lcom/peripheral/ble/CharacteristicWriteType;->$VALUES:[Lcom/peripheral/ble/CharacteristicWriteType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/peripheral/ble/CharacteristicWriteType;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/peripheral/ble/CharacteristicWriteType;
    .locals 5

    .line 18
    invoke-static {}, Lcom/peripheral/ble/CharacteristicWriteType;->values()[Lcom/peripheral/ble/CharacteristicWriteType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 19
    iget v4, v3, Lcom/peripheral/ble/CharacteristicWriteType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_1
    sget-object p0, Lcom/peripheral/ble/CharacteristicWriteType;->UNKNOWN:Lcom/peripheral/ble/CharacteristicWriteType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peripheral/ble/CharacteristicWriteType;
    .locals 1

    .line 3
    const-class v0, Lcom/peripheral/ble/CharacteristicWriteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peripheral/ble/CharacteristicWriteType;

    return-object p0
.end method

.method public static values()[Lcom/peripheral/ble/CharacteristicWriteType;
    .locals 1

    .line 3
    sget-object v0, Lcom/peripheral/ble/CharacteristicWriteType;->$VALUES:[Lcom/peripheral/ble/CharacteristicWriteType;

    invoke-virtual {v0}, [Lcom/peripheral/ble/CharacteristicWriteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peripheral/ble/CharacteristicWriteType;

    return-object v0
.end method
