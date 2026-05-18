.class public final enum Lcom/peripheral/ble/ScanMode;
.super Ljava/lang/Enum;
.source "ScanMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peripheral/ble/ScanMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/peripheral/ble/ScanMode;

.field public static final enum BALANCED:Lcom/peripheral/ble/ScanMode;

.field public static final enum LOW_LATENCY:Lcom/peripheral/ble/ScanMode;

.field public static final enum LOW_POWER:Lcom/peripheral/ble/ScanMode;

.field public static final enum OPPORTUNISTIC:Lcom/peripheral/ble/ScanMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/peripheral/ble/ScanMode;

    const/4 v1, 0x0

    const-string v2, "OPPORTUNISTIC"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/peripheral/ble/ScanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/ScanMode;->OPPORTUNISTIC:Lcom/peripheral/ble/ScanMode;

    .line 21
    new-instance v0, Lcom/peripheral/ble/ScanMode;

    const/4 v2, 0x1

    const-string v3, "BALANCED"

    invoke-direct {v0, v3, v2, v2}, Lcom/peripheral/ble/ScanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/ScanMode;->BALANCED:Lcom/peripheral/ble/ScanMode;

    .line 27
    new-instance v0, Lcom/peripheral/ble/ScanMode;

    const/4 v3, 0x2

    const-string v4, "LOW_LATENCY"

    invoke-direct {v0, v4, v3, v3}, Lcom/peripheral/ble/ScanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/ScanMode;->LOW_LATENCY:Lcom/peripheral/ble/ScanMode;

    .line 33
    new-instance v0, Lcom/peripheral/ble/ScanMode;

    const/4 v4, 0x3

    const-string v5, "LOW_POWER"

    invoke-direct {v0, v5, v4, v1}, Lcom/peripheral/ble/ScanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/ScanMode;->LOW_POWER:Lcom/peripheral/ble/ScanMode;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/peripheral/ble/ScanMode;

    .line 10
    sget-object v6, Lcom/peripheral/ble/ScanMode;->OPPORTUNISTIC:Lcom/peripheral/ble/ScanMode;

    aput-object v6, v5, v1

    sget-object v1, Lcom/peripheral/ble/ScanMode;->BALANCED:Lcom/peripheral/ble/ScanMode;

    aput-object v1, v5, v2

    sget-object v1, Lcom/peripheral/ble/ScanMode;->LOW_LATENCY:Lcom/peripheral/ble/ScanMode;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/peripheral/ble/ScanMode;->$VALUES:[Lcom/peripheral/ble/ScanMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/peripheral/ble/ScanMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peripheral/ble/ScanMode;
    .locals 1

    .line 10
    const-class v0, Lcom/peripheral/ble/ScanMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peripheral/ble/ScanMode;

    return-object p0
.end method

.method public static values()[Lcom/peripheral/ble/ScanMode;
    .locals 1

    .line 10
    sget-object v0, Lcom/peripheral/ble/ScanMode;->$VALUES:[Lcom/peripheral/ble/ScanMode;

    invoke-virtual {v0}, [Lcom/peripheral/ble/ScanMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peripheral/ble/ScanMode;

    return-object v0
.end method
