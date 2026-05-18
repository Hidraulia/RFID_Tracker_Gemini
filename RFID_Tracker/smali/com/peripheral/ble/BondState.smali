.class public final enum Lcom/peripheral/ble/BondState;
.super Ljava/lang/Enum;
.source "BondState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peripheral/ble/BondState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/peripheral/ble/BondState;

.field public static final enum BONDED:Lcom/peripheral/ble/BondState;

.field public static final enum BONDING:Lcom/peripheral/ble/BondState;

.field public static final enum NONE:Lcom/peripheral/ble/BondState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    new-instance v0, Lcom/peripheral/ble/BondState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v1, v3}, Lcom/peripheral/ble/BondState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/BondState;->NONE:Lcom/peripheral/ble/BondState;

    .line 45
    new-instance v0, Lcom/peripheral/ble/BondState;

    const/4 v2, 0x1

    const-string v3, "BONDING"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v2, v4}, Lcom/peripheral/ble/BondState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/BondState;->BONDING:Lcom/peripheral/ble/BondState;

    .line 52
    new-instance v0, Lcom/peripheral/ble/BondState;

    const/4 v3, 0x2

    const-string v4, "BONDED"

    const/16 v5, 0xc

    invoke-direct {v0, v4, v3, v5}, Lcom/peripheral/ble/BondState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/BondState;->BONDED:Lcom/peripheral/ble/BondState;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/peripheral/ble/BondState;

    .line 34
    sget-object v5, Lcom/peripheral/ble/BondState;->NONE:Lcom/peripheral/ble/BondState;

    aput-object v5, v4, v1

    sget-object v1, Lcom/peripheral/ble/BondState;->BONDING:Lcom/peripheral/ble/BondState;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/peripheral/ble/BondState;->$VALUES:[Lcom/peripheral/ble/BondState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/peripheral/ble/BondState;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/peripheral/ble/BondState;
    .locals 5

    .line 62
    invoke-static {}, Lcom/peripheral/ble/BondState;->values()[Lcom/peripheral/ble/BondState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    iget v4, v3, Lcom/peripheral/ble/BondState;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    sget-object p0, Lcom/peripheral/ble/BondState;->NONE:Lcom/peripheral/ble/BondState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peripheral/ble/BondState;
    .locals 1

    .line 34
    const-class v0, Lcom/peripheral/ble/BondState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peripheral/ble/BondState;

    return-object p0
.end method

.method public static values()[Lcom/peripheral/ble/BondState;
    .locals 1

    .line 34
    sget-object v0, Lcom/peripheral/ble/BondState;->$VALUES:[Lcom/peripheral/ble/BondState;

    invoke-virtual {v0}, [Lcom/peripheral/ble/BondState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peripheral/ble/BondState;

    return-object v0
.end method
