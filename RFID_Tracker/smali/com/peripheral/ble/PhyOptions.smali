.class public final enum Lcom/peripheral/ble/PhyOptions;
.super Ljava/lang/Enum;
.source "PhyOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peripheral/ble/PhyOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/peripheral/ble/PhyOptions;

.field public static final enum NO_PREFERRED:Lcom/peripheral/ble/PhyOptions;

.field public static final enum S2:Lcom/peripheral/ble/PhyOptions;

.field public static final enum S8:Lcom/peripheral/ble/PhyOptions;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lcom/peripheral/ble/PhyOptions;

    const/4 v1, 0x0

    const-string v2, "NO_PREFERRED"

    invoke-direct {v0, v2, v1, v1}, Lcom/peripheral/ble/PhyOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/PhyOptions;->NO_PREFERRED:Lcom/peripheral/ble/PhyOptions;

    .line 38
    new-instance v0, Lcom/peripheral/ble/PhyOptions;

    const/4 v2, 0x1

    const-string v3, "S2"

    invoke-direct {v0, v3, v2, v2}, Lcom/peripheral/ble/PhyOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/PhyOptions;->S2:Lcom/peripheral/ble/PhyOptions;

    .line 43
    new-instance v0, Lcom/peripheral/ble/PhyOptions;

    const/4 v3, 0x2

    const-string v4, "S8"

    invoke-direct {v0, v4, v3, v3}, Lcom/peripheral/ble/PhyOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/PhyOptions;->S8:Lcom/peripheral/ble/PhyOptions;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/peripheral/ble/PhyOptions;

    .line 29
    sget-object v5, Lcom/peripheral/ble/PhyOptions;->NO_PREFERRED:Lcom/peripheral/ble/PhyOptions;

    aput-object v5, v4, v1

    sget-object v1, Lcom/peripheral/ble/PhyOptions;->S2:Lcom/peripheral/ble/PhyOptions;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/peripheral/ble/PhyOptions;->$VALUES:[Lcom/peripheral/ble/PhyOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/peripheral/ble/PhyOptions;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peripheral/ble/PhyOptions;
    .locals 1

    .line 29
    const-class v0, Lcom/peripheral/ble/PhyOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peripheral/ble/PhyOptions;

    return-object p0
.end method

.method public static values()[Lcom/peripheral/ble/PhyOptions;
    .locals 1

    .line 29
    sget-object v0, Lcom/peripheral/ble/PhyOptions;->$VALUES:[Lcom/peripheral/ble/PhyOptions;

    invoke-virtual {v0}, [Lcom/peripheral/ble/PhyOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peripheral/ble/PhyOptions;

    return-object v0
.end method
