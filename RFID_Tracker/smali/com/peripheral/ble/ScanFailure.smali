.class public final enum Lcom/peripheral/ble/ScanFailure;
.super Ljava/lang/Enum;
.source "ScanFailure.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peripheral/ble/ScanFailure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/peripheral/ble/ScanFailure;

.field public static final enum ALREADY_STARTED:Lcom/peripheral/ble/ScanFailure;

.field public static final enum APPLICATION_REGISTRATION_FAILED:Lcom/peripheral/ble/ScanFailure;

.field public static final enum FEATURE_UNSUPPORTED:Lcom/peripheral/ble/ScanFailure;

.field public static final enum INTERNAL_ERROR:Lcom/peripheral/ble/ScanFailure;

.field public static final enum OUT_OF_HARDWARE_RESOURCES:Lcom/peripheral/ble/ScanFailure;

.field public static final enum SCANNING_TOO_FREQUENTLY:Lcom/peripheral/ble/ScanFailure;

.field public static final enum UNKNOWN:Lcom/peripheral/ble/ScanFailure;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 40
    new-instance v0, Lcom/peripheral/ble/ScanFailure;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ALREADY_STARTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/peripheral/ble/ScanFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/ScanFailure;->ALREADY_STARTED:Lcom/peripheral/ble/ScanFailure;

    .line 45
    new-instance v0, Lcom/peripheral/ble/ScanFailure;

    const/4 v3, 0x2

    const-string v4, "APPLICATION_REGISTRATION_FAILED"

    invoke-direct {v0, v4, v2, v3}, Lcom/peripheral/ble/ScanFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/ScanFailure;->APPLICATION_REGISTRATION_FAILED:Lcom/peripheral/ble/ScanFailure;

    .line 50
    new-instance v0, Lcom/peripheral/ble/ScanFailure;

    const/4 v4, 0x3

    const-string v5, "INTERNAL_ERROR"

    invoke-direct {v0, v5, v3, v4}, Lcom/peripheral/ble/ScanFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/ScanFailure;->INTERNAL_ERROR:Lcom/peripheral/ble/ScanFailure;

    .line 55
    new-instance v0, Lcom/peripheral/ble/ScanFailure;

    const/4 v5, 0x4

    const-string v6, "FEATURE_UNSUPPORTED"

    invoke-direct {v0, v6, v4, v5}, Lcom/peripheral/ble/ScanFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/ScanFailure;->FEATURE_UNSUPPORTED:Lcom/peripheral/ble/ScanFailure;

    .line 60
    new-instance v0, Lcom/peripheral/ble/ScanFailure;

    const/4 v6, 0x5

    const-string v7, "OUT_OF_HARDWARE_RESOURCES"

    invoke-direct {v0, v7, v5, v6}, Lcom/peripheral/ble/ScanFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/ScanFailure;->OUT_OF_HARDWARE_RESOURCES:Lcom/peripheral/ble/ScanFailure;

    .line 65
    new-instance v0, Lcom/peripheral/ble/ScanFailure;

    const/4 v7, 0x6

    const-string v8, "SCANNING_TOO_FREQUENTLY"

    invoke-direct {v0, v8, v6, v7}, Lcom/peripheral/ble/ScanFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/ScanFailure;->SCANNING_TOO_FREQUENTLY:Lcom/peripheral/ble/ScanFailure;

    .line 67
    new-instance v0, Lcom/peripheral/ble/ScanFailure;

    const-string v8, "UNKNOWN"

    const/4 v9, -0x1

    invoke-direct {v0, v8, v7, v9}, Lcom/peripheral/ble/ScanFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/ScanFailure;->UNKNOWN:Lcom/peripheral/ble/ScanFailure;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/peripheral/ble/ScanFailure;

    .line 35
    sget-object v9, Lcom/peripheral/ble/ScanFailure;->ALREADY_STARTED:Lcom/peripheral/ble/ScanFailure;

    aput-object v9, v8, v1

    sget-object v1, Lcom/peripheral/ble/ScanFailure;->APPLICATION_REGISTRATION_FAILED:Lcom/peripheral/ble/ScanFailure;

    aput-object v1, v8, v2

    sget-object v1, Lcom/peripheral/ble/ScanFailure;->INTERNAL_ERROR:Lcom/peripheral/ble/ScanFailure;

    aput-object v1, v8, v3

    sget-object v1, Lcom/peripheral/ble/ScanFailure;->FEATURE_UNSUPPORTED:Lcom/peripheral/ble/ScanFailure;

    aput-object v1, v8, v4

    sget-object v1, Lcom/peripheral/ble/ScanFailure;->OUT_OF_HARDWARE_RESOURCES:Lcom/peripheral/ble/ScanFailure;

    aput-object v1, v8, v5

    sget-object v1, Lcom/peripheral/ble/ScanFailure;->SCANNING_TOO_FREQUENTLY:Lcom/peripheral/ble/ScanFailure;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/peripheral/ble/ScanFailure;->$VALUES:[Lcom/peripheral/ble/ScanFailure;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/peripheral/ble/ScanFailure;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/peripheral/ble/ScanFailure;
    .locals 5

    .line 76
    invoke-static {}, Lcom/peripheral/ble/ScanFailure;->values()[Lcom/peripheral/ble/ScanFailure;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 77
    iget v4, v3, Lcom/peripheral/ble/ScanFailure;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_1
    sget-object p0, Lcom/peripheral/ble/ScanFailure;->UNKNOWN:Lcom/peripheral/ble/ScanFailure;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peripheral/ble/ScanFailure;
    .locals 1

    .line 35
    const-class v0, Lcom/peripheral/ble/ScanFailure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peripheral/ble/ScanFailure;

    return-object p0
.end method

.method public static values()[Lcom/peripheral/ble/ScanFailure;
    .locals 1

    .line 35
    sget-object v0, Lcom/peripheral/ble/ScanFailure;->$VALUES:[Lcom/peripheral/ble/ScanFailure;

    invoke-virtual {v0}, [Lcom/peripheral/ble/ScanFailure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peripheral/ble/ScanFailure;

    return-object v0
.end method
