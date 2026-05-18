.class public final enum Lcom/peripheral/ble/CharacteristicPermissions;
.super Ljava/lang/Enum;
.source "CharacteristicPermissions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peripheral/ble/CharacteristicPermissions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/peripheral/ble/CharacteristicPermissions;

.field public static final enum PERMISSION_READ:Lcom/peripheral/ble/CharacteristicPermissions;

.field public static final enum PERMISSION_READ_ENCRYPTED:Lcom/peripheral/ble/CharacteristicPermissions;

.field public static final enum PERMISSION_READ_ENCRYPTED_MITM:Lcom/peripheral/ble/CharacteristicPermissions;

.field public static final enum PERMISSION_WRITE:Lcom/peripheral/ble/CharacteristicPermissions;

.field public static final enum PERMISSION_WRITE_ENCRYPTED:Lcom/peripheral/ble/CharacteristicPermissions;

.field public static final enum PERMISSION_WRITE_ENCRYPTED_MITM:Lcom/peripheral/ble/CharacteristicPermissions;

.field public static final enum PERMISSION_WRITE_SIGNED:Lcom/peripheral/ble/CharacteristicPermissions;

.field public static final enum PERMISSION_WRITE_SIGNED_MITM:Lcom/peripheral/ble/CharacteristicPermissions;

.field public static final enum UNKNOWN:Lcom/peripheral/ble/CharacteristicPermissions;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 5
    new-instance v0, Lcom/peripheral/ble/CharacteristicPermissions;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/peripheral/ble/CharacteristicPermissions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicPermissions;->UNKNOWN:Lcom/peripheral/ble/CharacteristicPermissions;

    .line 6
    new-instance v0, Lcom/peripheral/ble/CharacteristicPermissions;

    const/4 v2, 0x1

    const-string v3, "PERMISSION_READ"

    invoke-direct {v0, v3, v2, v2}, Lcom/peripheral/ble/CharacteristicPermissions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_READ:Lcom/peripheral/ble/CharacteristicPermissions;

    .line 7
    new-instance v0, Lcom/peripheral/ble/CharacteristicPermissions;

    const/4 v3, 0x2

    const-string v4, "PERMISSION_READ_ENCRYPTED"

    invoke-direct {v0, v4, v3, v3}, Lcom/peripheral/ble/CharacteristicPermissions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_READ_ENCRYPTED:Lcom/peripheral/ble/CharacteristicPermissions;

    .line 8
    new-instance v0, Lcom/peripheral/ble/CharacteristicPermissions;

    const/4 v4, 0x3

    const/4 v5, 0x4

    const-string v6, "PERMISSION_READ_ENCRYPTED_MITM"

    invoke-direct {v0, v6, v4, v5}, Lcom/peripheral/ble/CharacteristicPermissions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_READ_ENCRYPTED_MITM:Lcom/peripheral/ble/CharacteristicPermissions;

    .line 9
    new-instance v0, Lcom/peripheral/ble/CharacteristicPermissions;

    const-string v6, "PERMISSION_WRITE"

    const/16 v7, 0x10

    invoke-direct {v0, v6, v5, v7}, Lcom/peripheral/ble/CharacteristicPermissions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_WRITE:Lcom/peripheral/ble/CharacteristicPermissions;

    .line 10
    new-instance v0, Lcom/peripheral/ble/CharacteristicPermissions;

    const/4 v6, 0x5

    const-string v7, "PERMISSION_WRITE_ENCRYPTED"

    const/16 v8, 0x20

    invoke-direct {v0, v7, v6, v8}, Lcom/peripheral/ble/CharacteristicPermissions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_WRITE_ENCRYPTED:Lcom/peripheral/ble/CharacteristicPermissions;

    .line 11
    new-instance v0, Lcom/peripheral/ble/CharacteristicPermissions;

    const/4 v7, 0x6

    const-string v8, "PERMISSION_WRITE_ENCRYPTED_MITM"

    const/16 v9, 0x40

    invoke-direct {v0, v8, v7, v9}, Lcom/peripheral/ble/CharacteristicPermissions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_WRITE_ENCRYPTED_MITM:Lcom/peripheral/ble/CharacteristicPermissions;

    .line 12
    new-instance v0, Lcom/peripheral/ble/CharacteristicPermissions;

    const/4 v8, 0x7

    const-string v9, "PERMISSION_WRITE_SIGNED"

    const/16 v10, 0x80

    invoke-direct {v0, v9, v8, v10}, Lcom/peripheral/ble/CharacteristicPermissions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_WRITE_SIGNED:Lcom/peripheral/ble/CharacteristicPermissions;

    .line 13
    new-instance v0, Lcom/peripheral/ble/CharacteristicPermissions;

    const/16 v9, 0x8

    const-string v10, "PERMISSION_WRITE_SIGNED_MITM"

    const/16 v11, 0x100

    invoke-direct {v0, v10, v9, v11}, Lcom/peripheral/ble/CharacteristicPermissions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_WRITE_SIGNED_MITM:Lcom/peripheral/ble/CharacteristicPermissions;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/peripheral/ble/CharacteristicPermissions;

    .line 3
    sget-object v11, Lcom/peripheral/ble/CharacteristicPermissions;->UNKNOWN:Lcom/peripheral/ble/CharacteristicPermissions;

    aput-object v11, v10, v1

    sget-object v1, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_READ:Lcom/peripheral/ble/CharacteristicPermissions;

    aput-object v1, v10, v2

    sget-object v1, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_READ_ENCRYPTED:Lcom/peripheral/ble/CharacteristicPermissions;

    aput-object v1, v10, v3

    sget-object v1, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_READ_ENCRYPTED_MITM:Lcom/peripheral/ble/CharacteristicPermissions;

    aput-object v1, v10, v4

    sget-object v1, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_WRITE:Lcom/peripheral/ble/CharacteristicPermissions;

    aput-object v1, v10, v5

    sget-object v1, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_WRITE_ENCRYPTED:Lcom/peripheral/ble/CharacteristicPermissions;

    aput-object v1, v10, v6

    sget-object v1, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_WRITE_ENCRYPTED_MITM:Lcom/peripheral/ble/CharacteristicPermissions;

    aput-object v1, v10, v7

    sget-object v1, Lcom/peripheral/ble/CharacteristicPermissions;->PERMISSION_WRITE_SIGNED:Lcom/peripheral/ble/CharacteristicPermissions;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/peripheral/ble/CharacteristicPermissions;->$VALUES:[Lcom/peripheral/ble/CharacteristicPermissions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/peripheral/ble/CharacteristicPermissions;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/peripheral/ble/CharacteristicPermissions;
    .locals 5

    .line 23
    invoke-static {}, Lcom/peripheral/ble/CharacteristicPermissions;->values()[Lcom/peripheral/ble/CharacteristicPermissions;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 24
    iget v4, v3, Lcom/peripheral/ble/CharacteristicPermissions;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_1
    sget-object p0, Lcom/peripheral/ble/CharacteristicPermissions;->UNKNOWN:Lcom/peripheral/ble/CharacteristicPermissions;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peripheral/ble/CharacteristicPermissions;
    .locals 1

    .line 3
    const-class v0, Lcom/peripheral/ble/CharacteristicPermissions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peripheral/ble/CharacteristicPermissions;

    return-object p0
.end method

.method public static values()[Lcom/peripheral/ble/CharacteristicPermissions;
    .locals 1

    .line 3
    sget-object v0, Lcom/peripheral/ble/CharacteristicPermissions;->$VALUES:[Lcom/peripheral/ble/CharacteristicPermissions;

    invoke-virtual {v0}, [Lcom/peripheral/ble/CharacteristicPermissions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peripheral/ble/CharacteristicPermissions;

    return-object v0
.end method
