.class public final enum Lcom/peripheral/ble/WriteType;
.super Ljava/lang/Enum;
.source "WriteType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peripheral/ble/WriteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/peripheral/ble/WriteType;

.field public static final enum SIGNED:Lcom/peripheral/ble/WriteType;

.field public static final enum WITHOUT_RESPONSE:Lcom/peripheral/ble/WriteType;

.field public static final enum WITH_RESPONSE:Lcom/peripheral/ble/WriteType;


# instance fields
.field public final property:I

.field public final writeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 40
    new-instance v0, Lcom/peripheral/ble/WriteType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "WITH_RESPONSE"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/peripheral/ble/WriteType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/peripheral/ble/WriteType;->WITH_RESPONSE:Lcom/peripheral/ble/WriteType;

    .line 45
    new-instance v0, Lcom/peripheral/ble/WriteType;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-string v5, "WITHOUT_RESPONSE"

    invoke-direct {v0, v5, v4, v4, v3}, Lcom/peripheral/ble/WriteType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/peripheral/ble/WriteType;->WITHOUT_RESPONSE:Lcom/peripheral/ble/WriteType;

    .line 50
    new-instance v0, Lcom/peripheral/ble/WriteType;

    const-string v5, "SIGNED"

    const/16 v6, 0x40

    invoke-direct {v0, v5, v2, v3, v6}, Lcom/peripheral/ble/WriteType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/peripheral/ble/WriteType;->SIGNED:Lcom/peripheral/ble/WriteType;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/peripheral/ble/WriteType;

    .line 36
    sget-object v5, Lcom/peripheral/ble/WriteType;->WITH_RESPONSE:Lcom/peripheral/ble/WriteType;

    aput-object v5, v3, v1

    sget-object v1, Lcom/peripheral/ble/WriteType;->WITHOUT_RESPONSE:Lcom/peripheral/ble/WriteType;

    aput-object v1, v3, v4

    aput-object v0, v3, v2

    sput-object v3, Lcom/peripheral/ble/WriteType;->$VALUES:[Lcom/peripheral/ble/WriteType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lcom/peripheral/ble/WriteType;->writeType:I

    .line 57
    iput p4, p0, Lcom/peripheral/ble/WriteType;->property:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peripheral/ble/WriteType;
    .locals 1

    .line 36
    const-class v0, Lcom/peripheral/ble/WriteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peripheral/ble/WriteType;

    return-object p0
.end method

.method public static values()[Lcom/peripheral/ble/WriteType;
    .locals 1

    .line 36
    sget-object v0, Lcom/peripheral/ble/WriteType;->$VALUES:[Lcom/peripheral/ble/WriteType;

    invoke-virtual {v0}, [Lcom/peripheral/ble/WriteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peripheral/ble/WriteType;

    return-object v0
.end method
