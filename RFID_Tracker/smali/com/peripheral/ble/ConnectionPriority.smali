.class public final enum Lcom/peripheral/ble/ConnectionPriority;
.super Ljava/lang/Enum;
.source "ConnectionPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peripheral/ble/ConnectionPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/peripheral/ble/ConnectionPriority;

.field public static final enum BALANCED:Lcom/peripheral/ble/ConnectionPriority;

.field public static final enum HIGH:Lcom/peripheral/ble/ConnectionPriority;

.field public static final enum LOW_POWER:Lcom/peripheral/ble/ConnectionPriority;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    new-instance v0, Lcom/peripheral/ble/ConnectionPriority;

    const/4 v1, 0x0

    const-string v2, "BALANCED"

    invoke-direct {v0, v2, v1, v1}, Lcom/peripheral/ble/ConnectionPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/ConnectionPriority;->BALANCED:Lcom/peripheral/ble/ConnectionPriority;

    .line 44
    new-instance v0, Lcom/peripheral/ble/ConnectionPriority;

    const/4 v2, 0x1

    const-string v3, "HIGH"

    invoke-direct {v0, v3, v2, v2}, Lcom/peripheral/ble/ConnectionPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/ConnectionPriority;->HIGH:Lcom/peripheral/ble/ConnectionPriority;

    .line 49
    new-instance v0, Lcom/peripheral/ble/ConnectionPriority;

    const/4 v3, 0x2

    const-string v4, "LOW_POWER"

    invoke-direct {v0, v4, v3, v3}, Lcom/peripheral/ble/ConnectionPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/ConnectionPriority;->LOW_POWER:Lcom/peripheral/ble/ConnectionPriority;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/peripheral/ble/ConnectionPriority;

    .line 30
    sget-object v5, Lcom/peripheral/ble/ConnectionPriority;->BALANCED:Lcom/peripheral/ble/ConnectionPriority;

    aput-object v5, v4, v1

    sget-object v1, Lcom/peripheral/ble/ConnectionPriority;->HIGH:Lcom/peripheral/ble/ConnectionPriority;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/peripheral/ble/ConnectionPriority;->$VALUES:[Lcom/peripheral/ble/ConnectionPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/peripheral/ble/ConnectionPriority;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peripheral/ble/ConnectionPriority;
    .locals 1

    .line 30
    const-class v0, Lcom/peripheral/ble/ConnectionPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peripheral/ble/ConnectionPriority;

    return-object p0
.end method

.method public static values()[Lcom/peripheral/ble/ConnectionPriority;
    .locals 1

    .line 30
    sget-object v0, Lcom/peripheral/ble/ConnectionPriority;->$VALUES:[Lcom/peripheral/ble/ConnectionPriority;

    invoke-virtual {v0}, [Lcom/peripheral/ble/ConnectionPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peripheral/ble/ConnectionPriority;

    return-object v0
.end method
