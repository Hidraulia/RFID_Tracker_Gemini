.class public final enum Lcom/peripheral/ble/PeripheralType;
.super Ljava/lang/Enum;
.source "PeripheralType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peripheral/ble/PeripheralType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/peripheral/ble/PeripheralType;

.field public static final enum CLASSIC:Lcom/peripheral/ble/PeripheralType;

.field public static final enum DUAL:Lcom/peripheral/ble/PeripheralType;

.field public static final enum LE:Lcom/peripheral/ble/PeripheralType;

.field public static final enum UNKNOWN:Lcom/peripheral/ble/PeripheralType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    new-instance v0, Lcom/peripheral/ble/PeripheralType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/peripheral/ble/PeripheralType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/PeripheralType;->UNKNOWN:Lcom/peripheral/ble/PeripheralType;

    .line 43
    new-instance v0, Lcom/peripheral/ble/PeripheralType;

    const/4 v2, 0x1

    const-string v3, "CLASSIC"

    invoke-direct {v0, v3, v2, v2}, Lcom/peripheral/ble/PeripheralType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/PeripheralType;->CLASSIC:Lcom/peripheral/ble/PeripheralType;

    .line 48
    new-instance v0, Lcom/peripheral/ble/PeripheralType;

    const/4 v3, 0x2

    const-string v4, "LE"

    invoke-direct {v0, v4, v3, v3}, Lcom/peripheral/ble/PeripheralType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/PeripheralType;->LE:Lcom/peripheral/ble/PeripheralType;

    .line 53
    new-instance v0, Lcom/peripheral/ble/PeripheralType;

    const/4 v4, 0x3

    const-string v5, "DUAL"

    invoke-direct {v0, v5, v4, v4}, Lcom/peripheral/ble/PeripheralType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/PeripheralType;->DUAL:Lcom/peripheral/ble/PeripheralType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/peripheral/ble/PeripheralType;

    .line 34
    sget-object v6, Lcom/peripheral/ble/PeripheralType;->UNKNOWN:Lcom/peripheral/ble/PeripheralType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/peripheral/ble/PeripheralType;->CLASSIC:Lcom/peripheral/ble/PeripheralType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/peripheral/ble/PeripheralType;->LE:Lcom/peripheral/ble/PeripheralType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/peripheral/ble/PeripheralType;->$VALUES:[Lcom/peripheral/ble/PeripheralType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lcom/peripheral/ble/PeripheralType;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/peripheral/ble/PeripheralType;
    .locals 5

    .line 62
    invoke-static {}, Lcom/peripheral/ble/PeripheralType;->values()[Lcom/peripheral/ble/PeripheralType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    iget v4, v3, Lcom/peripheral/ble/PeripheralType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    sget-object p0, Lcom/peripheral/ble/PeripheralType;->UNKNOWN:Lcom/peripheral/ble/PeripheralType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peripheral/ble/PeripheralType;
    .locals 1

    .line 34
    const-class v0, Lcom/peripheral/ble/PeripheralType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peripheral/ble/PeripheralType;

    return-object p0
.end method

.method public static values()[Lcom/peripheral/ble/PeripheralType;
    .locals 1

    .line 34
    sget-object v0, Lcom/peripheral/ble/PeripheralType;->$VALUES:[Lcom/peripheral/ble/PeripheralType;

    invoke-virtual {v0}, [Lcom/peripheral/ble/PeripheralType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peripheral/ble/PeripheralType;

    return-object v0
.end method
