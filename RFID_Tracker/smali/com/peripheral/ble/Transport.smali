.class public final enum Lcom/peripheral/ble/Transport;
.super Ljava/lang/Enum;
.source "Transport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peripheral/ble/Transport;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/peripheral/ble/Transport;

.field public static final enum AUTO:Lcom/peripheral/ble/Transport;

.field public static final enum BR_EDR:Lcom/peripheral/ble/Transport;

.field public static final enum LE:Lcom/peripheral/ble/Transport;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/peripheral/ble/Transport;

    const/4 v1, 0x0

    const-string v2, "AUTO"

    invoke-direct {v0, v2, v1, v1}, Lcom/peripheral/ble/Transport;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/Transport;->AUTO:Lcom/peripheral/ble/Transport;

    .line 19
    new-instance v0, Lcom/peripheral/ble/Transport;

    const/4 v2, 0x1

    const-string v3, "BR_EDR"

    invoke-direct {v0, v3, v2, v2}, Lcom/peripheral/ble/Transport;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/Transport;->BR_EDR:Lcom/peripheral/ble/Transport;

    .line 24
    new-instance v0, Lcom/peripheral/ble/Transport;

    const/4 v3, 0x2

    const-string v4, "LE"

    invoke-direct {v0, v4, v3, v3}, Lcom/peripheral/ble/Transport;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/Transport;->LE:Lcom/peripheral/ble/Transport;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/peripheral/ble/Transport;

    .line 10
    sget-object v5, Lcom/peripheral/ble/Transport;->AUTO:Lcom/peripheral/ble/Transport;

    aput-object v5, v4, v1

    sget-object v1, Lcom/peripheral/ble/Transport;->BR_EDR:Lcom/peripheral/ble/Transport;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/peripheral/ble/Transport;->$VALUES:[Lcom/peripheral/ble/Transport;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/peripheral/ble/Transport;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/peripheral/ble/Transport;
    .locals 5

    .line 33
    invoke-static {}, Lcom/peripheral/ble/Transport;->values()[Lcom/peripheral/ble/Transport;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 34
    iget v4, v3, Lcom/peripheral/ble/Transport;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_1
    sget-object p0, Lcom/peripheral/ble/Transport;->AUTO:Lcom/peripheral/ble/Transport;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peripheral/ble/Transport;
    .locals 1

    .line 10
    const-class v0, Lcom/peripheral/ble/Transport;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peripheral/ble/Transport;

    return-object p0
.end method

.method public static values()[Lcom/peripheral/ble/Transport;
    .locals 1

    .line 10
    sget-object v0, Lcom/peripheral/ble/Transport;->$VALUES:[Lcom/peripheral/ble/Transport;

    invoke-virtual {v0}, [Lcom/peripheral/ble/Transport;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peripheral/ble/Transport;

    return-object v0
.end method
