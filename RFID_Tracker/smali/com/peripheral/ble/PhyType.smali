.class public final enum Lcom/peripheral/ble/PhyType;
.super Ljava/lang/Enum;
.source "PhyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peripheral/ble/PhyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/peripheral/ble/PhyType;

.field public static final enum LE_1M:Lcom/peripheral/ble/PhyType;

.field public static final enum LE_2M:Lcom/peripheral/ble/PhyType;

.field public static final enum LE_CODED:Lcom/peripheral/ble/PhyType;

.field public static final enum UNKNOWN_PHY_TYPE:Lcom/peripheral/ble/PhyType;


# instance fields
.field public final mask:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 34
    new-instance v0, Lcom/peripheral/ble/PhyType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "LE_1M"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/peripheral/ble/PhyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/peripheral/ble/PhyType;->LE_1M:Lcom/peripheral/ble/PhyType;

    .line 39
    new-instance v0, Lcom/peripheral/ble/PhyType;

    const/4 v3, 0x2

    const-string v4, "LE_2M"

    invoke-direct {v0, v4, v2, v3, v3}, Lcom/peripheral/ble/PhyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/peripheral/ble/PhyType;->LE_2M:Lcom/peripheral/ble/PhyType;

    .line 44
    new-instance v0, Lcom/peripheral/ble/PhyType;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const-string v6, "LE_CODED"

    invoke-direct {v0, v6, v3, v5, v4}, Lcom/peripheral/ble/PhyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/peripheral/ble/PhyType;->LE_CODED:Lcom/peripheral/ble/PhyType;

    .line 49
    new-instance v0, Lcom/peripheral/ble/PhyType;

    const/4 v6, -0x1

    const-string v7, "UNKNOWN_PHY_TYPE"

    invoke-direct {v0, v7, v5, v6, v6}, Lcom/peripheral/ble/PhyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/peripheral/ble/PhyType;->UNKNOWN_PHY_TYPE:Lcom/peripheral/ble/PhyType;

    new-array v4, v4, [Lcom/peripheral/ble/PhyType;

    .line 30
    sget-object v6, Lcom/peripheral/ble/PhyType;->LE_1M:Lcom/peripheral/ble/PhyType;

    aput-object v6, v4, v1

    sget-object v1, Lcom/peripheral/ble/PhyType;->LE_2M:Lcom/peripheral/ble/PhyType;

    aput-object v1, v4, v2

    sget-object v1, Lcom/peripheral/ble/PhyType;->LE_CODED:Lcom/peripheral/ble/PhyType;

    aput-object v1, v4, v3

    aput-object v0, v4, v5

    sput-object v4, Lcom/peripheral/ble/PhyType;->$VALUES:[Lcom/peripheral/ble/PhyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/peripheral/ble/PhyType;->value:I

    .line 53
    iput p4, p0, Lcom/peripheral/ble/PhyType;->mask:I

    return-void
.end method

.method public static fromValue(I)Lcom/peripheral/ble/PhyType;
    .locals 5

    .line 60
    invoke-static {}, Lcom/peripheral/ble/PhyType;->values()[Lcom/peripheral/ble/PhyType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 61
    iget v4, v3, Lcom/peripheral/ble/PhyType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    sget-object p0, Lcom/peripheral/ble/PhyType;->UNKNOWN_PHY_TYPE:Lcom/peripheral/ble/PhyType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peripheral/ble/PhyType;
    .locals 1

    .line 30
    const-class v0, Lcom/peripheral/ble/PhyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peripheral/ble/PhyType;

    return-object p0
.end method

.method public static values()[Lcom/peripheral/ble/PhyType;
    .locals 1

    .line 30
    sget-object v0, Lcom/peripheral/ble/PhyType;->$VALUES:[Lcom/peripheral/ble/PhyType;

    invoke-virtual {v0}, [Lcom/peripheral/ble/PhyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peripheral/ble/PhyType;

    return-object v0
.end method
