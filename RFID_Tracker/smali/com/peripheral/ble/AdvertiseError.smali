.class public final enum Lcom/peripheral/ble/AdvertiseError;
.super Ljava/lang/Enum;
.source "AdvertiseError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peripheral/ble/AdvertiseError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/peripheral/ble/AdvertiseError;

.field public static final enum ALREADY_STARTED:Lcom/peripheral/ble/AdvertiseError;

.field public static final enum DATA_TOO_LARGE:Lcom/peripheral/ble/AdvertiseError;

.field public static final enum FEATURE_UNSUPPORTED:Lcom/peripheral/ble/AdvertiseError;

.field public static final enum INTERNAL_ERROR:Lcom/peripheral/ble/AdvertiseError;

.field public static final enum TOO_MANY_ADVERTISERS:Lcom/peripheral/ble/AdvertiseError;

.field public static final enum UNKNOWN_ERROR:Lcom/peripheral/ble/AdvertiseError;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 39
    new-instance v0, Lcom/peripheral/ble/AdvertiseError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "DATA_TOO_LARGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/peripheral/ble/AdvertiseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/AdvertiseError;->DATA_TOO_LARGE:Lcom/peripheral/ble/AdvertiseError;

    .line 44
    new-instance v0, Lcom/peripheral/ble/AdvertiseError;

    const/4 v3, 0x2

    const-string v4, "TOO_MANY_ADVERTISERS"

    invoke-direct {v0, v4, v2, v3}, Lcom/peripheral/ble/AdvertiseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/AdvertiseError;->TOO_MANY_ADVERTISERS:Lcom/peripheral/ble/AdvertiseError;

    .line 49
    new-instance v0, Lcom/peripheral/ble/AdvertiseError;

    const/4 v4, 0x3

    const-string v5, "ALREADY_STARTED"

    invoke-direct {v0, v5, v3, v4}, Lcom/peripheral/ble/AdvertiseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/AdvertiseError;->ALREADY_STARTED:Lcom/peripheral/ble/AdvertiseError;

    .line 54
    new-instance v0, Lcom/peripheral/ble/AdvertiseError;

    const/4 v5, 0x4

    const-string v6, "INTERNAL_ERROR"

    invoke-direct {v0, v6, v4, v5}, Lcom/peripheral/ble/AdvertiseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/AdvertiseError;->INTERNAL_ERROR:Lcom/peripheral/ble/AdvertiseError;

    .line 59
    new-instance v0, Lcom/peripheral/ble/AdvertiseError;

    const/4 v6, 0x5

    const-string v7, "FEATURE_UNSUPPORTED"

    invoke-direct {v0, v7, v5, v6}, Lcom/peripheral/ble/AdvertiseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/AdvertiseError;->FEATURE_UNSUPPORTED:Lcom/peripheral/ble/AdvertiseError;

    .line 61
    new-instance v0, Lcom/peripheral/ble/AdvertiseError;

    const-string v7, "UNKNOWN_ERROR"

    const/4 v8, -0x1

    invoke-direct {v0, v7, v6, v8}, Lcom/peripheral/ble/AdvertiseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/AdvertiseError;->UNKNOWN_ERROR:Lcom/peripheral/ble/AdvertiseError;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/peripheral/ble/AdvertiseError;

    .line 35
    sget-object v8, Lcom/peripheral/ble/AdvertiseError;->DATA_TOO_LARGE:Lcom/peripheral/ble/AdvertiseError;

    aput-object v8, v7, v1

    sget-object v1, Lcom/peripheral/ble/AdvertiseError;->TOO_MANY_ADVERTISERS:Lcom/peripheral/ble/AdvertiseError;

    aput-object v1, v7, v2

    sget-object v1, Lcom/peripheral/ble/AdvertiseError;->ALREADY_STARTED:Lcom/peripheral/ble/AdvertiseError;

    aput-object v1, v7, v3

    sget-object v1, Lcom/peripheral/ble/AdvertiseError;->INTERNAL_ERROR:Lcom/peripheral/ble/AdvertiseError;

    aput-object v1, v7, v4

    sget-object v1, Lcom/peripheral/ble/AdvertiseError;->FEATURE_UNSUPPORTED:Lcom/peripheral/ble/AdvertiseError;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/peripheral/ble/AdvertiseError;->$VALUES:[Lcom/peripheral/ble/AdvertiseError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/peripheral/ble/AdvertiseError;->value:I

    return-void
.end method

.method static fromValue(I)Lcom/peripheral/ble/AdvertiseError;
    .locals 5

    .line 70
    invoke-static {}, Lcom/peripheral/ble/AdvertiseError;->values()[Lcom/peripheral/ble/AdvertiseError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 71
    iget v4, v3, Lcom/peripheral/ble/AdvertiseError;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_1
    sget-object p0, Lcom/peripheral/ble/AdvertiseError;->UNKNOWN_ERROR:Lcom/peripheral/ble/AdvertiseError;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peripheral/ble/AdvertiseError;
    .locals 1

    .line 35
    const-class v0, Lcom/peripheral/ble/AdvertiseError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peripheral/ble/AdvertiseError;

    return-object p0
.end method

.method public static values()[Lcom/peripheral/ble/AdvertiseError;
    .locals 1

    .line 35
    sget-object v0, Lcom/peripheral/ble/AdvertiseError;->$VALUES:[Lcom/peripheral/ble/AdvertiseError;

    invoke-virtual {v0}, [Lcom/peripheral/ble/AdvertiseError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peripheral/ble/AdvertiseError;

    return-object v0
.end method
