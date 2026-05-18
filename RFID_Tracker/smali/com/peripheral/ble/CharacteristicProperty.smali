.class public final enum Lcom/peripheral/ble/CharacteristicProperty;
.super Ljava/lang/Enum;
.source "CharacteristicProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peripheral/ble/CharacteristicProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/peripheral/ble/CharacteristicProperty;

.field public static final enum PROPERTY_BROADCAST:Lcom/peripheral/ble/CharacteristicProperty;

.field public static final enum PROPERTY_EXTENDED_PROPS:Lcom/peripheral/ble/CharacteristicProperty;

.field public static final enum PROPERTY_INDICATE:Lcom/peripheral/ble/CharacteristicProperty;

.field public static final enum PROPERTY_NOTIFY:Lcom/peripheral/ble/CharacteristicProperty;

.field public static final enum PROPERTY_READ:Lcom/peripheral/ble/CharacteristicProperty;

.field public static final enum PROPERTY_SIGNED_WRITE:Lcom/peripheral/ble/CharacteristicProperty;

.field public static final enum PROPERTY_WRITE:Lcom/peripheral/ble/CharacteristicProperty;

.field public static final enum PROPERTY_WRITE_NO_RESPONSE:Lcom/peripheral/ble/CharacteristicProperty;

.field public static final enum UNKNOWN:Lcom/peripheral/ble/CharacteristicProperty;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 5
    new-instance v0, Lcom/peripheral/ble/CharacteristicProperty;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/peripheral/ble/CharacteristicProperty;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicProperty;->UNKNOWN:Lcom/peripheral/ble/CharacteristicProperty;

    .line 7
    new-instance v0, Lcom/peripheral/ble/CharacteristicProperty;

    const/4 v2, 0x1

    const-string v3, "PROPERTY_BROADCAST"

    invoke-direct {v0, v3, v2, v2}, Lcom/peripheral/ble/CharacteristicProperty;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_BROADCAST:Lcom/peripheral/ble/CharacteristicProperty;

    .line 9
    new-instance v0, Lcom/peripheral/ble/CharacteristicProperty;

    const/4 v3, 0x2

    const-string v4, "PROPERTY_EXTENDED_PROPS"

    const/16 v5, 0x80

    invoke-direct {v0, v4, v3, v5}, Lcom/peripheral/ble/CharacteristicProperty;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_EXTENDED_PROPS:Lcom/peripheral/ble/CharacteristicProperty;

    .line 11
    new-instance v0, Lcom/peripheral/ble/CharacteristicProperty;

    const/4 v4, 0x3

    const-string v5, "PROPERTY_INDICATE"

    const/16 v6, 0x20

    invoke-direct {v0, v5, v4, v6}, Lcom/peripheral/ble/CharacteristicProperty;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_INDICATE:Lcom/peripheral/ble/CharacteristicProperty;

    .line 13
    new-instance v0, Lcom/peripheral/ble/CharacteristicProperty;

    const/4 v5, 0x4

    const-string v6, "PROPERTY_NOTIFY"

    const/16 v7, 0x10

    invoke-direct {v0, v6, v5, v7}, Lcom/peripheral/ble/CharacteristicProperty;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_NOTIFY:Lcom/peripheral/ble/CharacteristicProperty;

    .line 15
    new-instance v0, Lcom/peripheral/ble/CharacteristicProperty;

    const/4 v6, 0x5

    const-string v7, "PROPERTY_READ"

    invoke-direct {v0, v7, v6, v3}, Lcom/peripheral/ble/CharacteristicProperty;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_READ:Lcom/peripheral/ble/CharacteristicProperty;

    .line 17
    new-instance v0, Lcom/peripheral/ble/CharacteristicProperty;

    const/4 v7, 0x6

    const-string v8, "PROPERTY_SIGNED_WRITE"

    const/16 v9, 0x40

    invoke-direct {v0, v8, v7, v9}, Lcom/peripheral/ble/CharacteristicProperty;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_SIGNED_WRITE:Lcom/peripheral/ble/CharacteristicProperty;

    .line 19
    new-instance v0, Lcom/peripheral/ble/CharacteristicProperty;

    const/4 v8, 0x7

    const/16 v9, 0x8

    const-string v10, "PROPERTY_WRITE"

    invoke-direct {v0, v10, v8, v9}, Lcom/peripheral/ble/CharacteristicProperty;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_WRITE:Lcom/peripheral/ble/CharacteristicProperty;

    .line 21
    new-instance v0, Lcom/peripheral/ble/CharacteristicProperty;

    const-string v10, "PROPERTY_WRITE_NO_RESPONSE"

    invoke-direct {v0, v10, v9, v5}, Lcom/peripheral/ble/CharacteristicProperty;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_WRITE_NO_RESPONSE:Lcom/peripheral/ble/CharacteristicProperty;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/peripheral/ble/CharacteristicProperty;

    .line 3
    sget-object v11, Lcom/peripheral/ble/CharacteristicProperty;->UNKNOWN:Lcom/peripheral/ble/CharacteristicProperty;

    aput-object v11, v10, v1

    sget-object v1, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_BROADCAST:Lcom/peripheral/ble/CharacteristicProperty;

    aput-object v1, v10, v2

    sget-object v1, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_EXTENDED_PROPS:Lcom/peripheral/ble/CharacteristicProperty;

    aput-object v1, v10, v3

    sget-object v1, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_INDICATE:Lcom/peripheral/ble/CharacteristicProperty;

    aput-object v1, v10, v4

    sget-object v1, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_NOTIFY:Lcom/peripheral/ble/CharacteristicProperty;

    aput-object v1, v10, v5

    sget-object v1, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_READ:Lcom/peripheral/ble/CharacteristicProperty;

    aput-object v1, v10, v6

    sget-object v1, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_SIGNED_WRITE:Lcom/peripheral/ble/CharacteristicProperty;

    aput-object v1, v10, v7

    sget-object v1, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_WRITE:Lcom/peripheral/ble/CharacteristicProperty;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/peripheral/ble/CharacteristicProperty;->$VALUES:[Lcom/peripheral/ble/CharacteristicProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/peripheral/ble/CharacteristicProperty;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/peripheral/ble/CharacteristicProperty;
    .locals 5

    .line 31
    invoke-static {}, Lcom/peripheral/ble/CharacteristicProperty;->values()[Lcom/peripheral/ble/CharacteristicProperty;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 32
    iget v4, v3, Lcom/peripheral/ble/CharacteristicProperty;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    sget-object p0, Lcom/peripheral/ble/CharacteristicProperty;->UNKNOWN:Lcom/peripheral/ble/CharacteristicProperty;

    return-object p0
.end method

.method public static isINDICATE(I)Z
    .locals 1

    .line 70
    sget-object v0, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_INDICATE:Lcom/peripheral/ble/CharacteristicProperty;

    iget v0, v0, Lcom/peripheral/ble/CharacteristicProperty;->value:I

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNOTIFY(I)Z
    .locals 1

    .line 63
    sget-object v0, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_NOTIFY:Lcom/peripheral/ble/CharacteristicProperty;

    iget v0, v0, Lcom/peripheral/ble/CharacteristicProperty;->value:I

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isREAD(I)Z
    .locals 1

    .line 55
    sget-object v0, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_READ:Lcom/peripheral/ble/CharacteristicProperty;

    iget v0, v0, Lcom/peripheral/ble/CharacteristicProperty;->value:I

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWRITE(I)Z
    .locals 1

    .line 40
    sget-object v0, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_WRITE:Lcom/peripheral/ble/CharacteristicProperty;

    iget v0, v0, Lcom/peripheral/ble/CharacteristicProperty;->value:I

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWRITE_NO_RESPONSE(I)Z
    .locals 1

    .line 47
    sget-object v0, Lcom/peripheral/ble/CharacteristicProperty;->PROPERTY_WRITE_NO_RESPONSE:Lcom/peripheral/ble/CharacteristicProperty;

    iget v0, v0, Lcom/peripheral/ble/CharacteristicProperty;->value:I

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peripheral/ble/CharacteristicProperty;
    .locals 1

    .line 3
    const-class v0, Lcom/peripheral/ble/CharacteristicProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peripheral/ble/CharacteristicProperty;

    return-object p0
.end method

.method public static values()[Lcom/peripheral/ble/CharacteristicProperty;
    .locals 1

    .line 3
    sget-object v0, Lcom/peripheral/ble/CharacteristicProperty;->$VALUES:[Lcom/peripheral/ble/CharacteristicProperty;

    invoke-virtual {v0}, [Lcom/peripheral/ble/CharacteristicProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peripheral/ble/CharacteristicProperty;

    return-object v0
.end method
