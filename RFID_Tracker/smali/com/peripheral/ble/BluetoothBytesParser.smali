.class public Lcom/peripheral/ble/BluetoothBytesParser;
.super Ljava/lang/Object;
.source "BluetoothBytesParser.java"


# static fields
.field public static final FORMAT_FLOAT:I = 0x34

.field public static final FORMAT_SFLOAT:I = 0x32

.field public static final FORMAT_SINT16:I = 0x22

.field public static final FORMAT_SINT24:I = 0x23

.field public static final FORMAT_SINT32:I = 0x24

.field public static final FORMAT_SINT8:I = 0x21

.field public static final FORMAT_UINT16:I = 0x12

.field public static final FORMAT_UINT24:I = 0x13

.field public static final FORMAT_UINT32:I = 0x14

.field public static final FORMAT_UINT48:I = 0x16

.field public static final FORMAT_UINT64:I = 0x18

.field public static final FORMAT_UINT8:I = 0x11

.field private static final INVALID_LENGTH:Ljava/lang/String; = "invalid length"

.field private static final INVALID_OFFSET:Ljava/lang/String; = "invalid offset"

.field private static final OFFSET_MUST_BE_GREATER_OR_EQUAL_TO_ZERO:Ljava/lang/String; = "offset must be greater or equal to zero"

.field private static final UNSUPPORTED_FORMAT_TYPE:Ljava/lang/String; = "unsupported format type"


# instance fields
.field private final internalByteOrder:Ljava/nio/ByteOrder;

.field private internalOffset:I

.field private mValue:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 117
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0, v1}, Lcom/peripheral/ble/BluetoothBytesParser;-><init>([BLjava/nio/ByteOrder;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 127
    invoke-direct {p0, v0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;-><init>([BLjava/nio/ByteOrder;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 137
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;-><init>([BILjava/nio/ByteOrder;)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 161
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, p2, v0}, Lcom/peripheral/ble/BluetoothBytesParser;-><init>([BILjava/nio/ByteOrder;)V

    return-void
.end method

.method public constructor <init>([BILjava/nio/ByteOrder;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_2

    .line 175
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq p3, v0, :cond_1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported ByteOrder value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    .line 179
    iput p2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    .line 180
    iput-object p3, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalByteOrder:Ljava/nio/ByteOrder;

    return-void

    .line 174
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset must be greater or equal to zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BLjava/nio/ByteOrder;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0, p2}, Lcom/peripheral/ble/BluetoothBytesParser;-><init>([BILjava/nio/ByteOrder;)V

    return-void
.end method

.method public static asHexString([B)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 921
    invoke-static {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->asHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static asHexString([BLjava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 927
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 929
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-byte v5, p0, v3

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    and-int/lit16 v5, v5, 0xff

    .line 930
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v2

    const-string v5, "%02x"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    array-length v5, p0

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    .line 932
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 936
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private bytesToFloat(BB)F
    .locals 4

    .line 876
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedByteToInt(B)I

    move-result p1

    .line 877
    invoke-direct {p0, p2}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedByteToInt(B)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    const/16 v0, 0xc

    .line 876
    invoke-direct {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedToSigned(II)I

    move-result p1

    .line 878
    invoke-direct {p0, p2}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedByteToInt(B)I

    move-result p2

    const/4 v0, 0x4

    shr-int/2addr p2, v0

    invoke-direct {p0, p2, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedToSigned(II)I

    move-result p2

    int-to-double v0, p1

    int-to-double p1, p2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 879
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-float p1, v0

    return p1
.end method

.method private bytesToFloat(BBBB)F
    .locals 2

    .line 886
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedByteToInt(B)I

    move-result p1

    .line 887
    invoke-direct {p0, p2}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedByteToInt(B)I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    add-int/2addr p1, p2

    .line 888
    invoke-direct {p0, p3}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedByteToInt(B)I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/2addr p1, p2

    const/16 p2, 0x18

    .line 886
    invoke-direct {p0, p1, p2}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedToSigned(II)I

    move-result p1

    int-to-double p1, p1

    int-to-double p3, p4

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 889
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p3

    double-to-float p1, p1

    return p1
.end method

.method private bytesToString([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 448
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2
.end method

.method private getTypeLen(I)I
    .locals 0

    and-int/lit8 p1, p1, 0xf

    return p1
.end method

.method private intToSignedBits(II)I
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    shl-int p2, v0, p2

    add-int/lit8 v0, p2, -0x1

    and-int/2addr p1, v0

    add-int/2addr p2, p1

    return p2

    :cond_0
    return p1
.end method

.method public static varargs mergeArrays([[B)[B
    .locals 7

    .line 963
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    .line 964
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 967
    :cond_0
    new-array v0, v3, [B

    .line 969
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v5, p0, v3

    .line 970
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 971
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private prepareArray(I)V
    .locals 3

    .line 1001
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    if-nez v0, :cond_0

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 1003
    new-array p1, p1, [B

    .line 1004
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1005
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    :cond_1
    return-void
.end method

.method public static string2bytes(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [B

    return-object p0

    .line 946
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    :goto_0
    if-ge v0, v1, :cond_1

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 949
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private unsignedByteToInt(B)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private unsignedBytesToInt(BB)I
    .locals 0

    .line 861
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedByteToInt(B)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedByteToInt(B)I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    add-int/2addr p1, p2

    return p1
.end method

.method private unsignedBytesToInt(BBBB)I
    .locals 0

    .line 868
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedByteToInt(B)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedByteToInt(B)I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    add-int/2addr p1, p2

    .line 869
    invoke-direct {p0, p3}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedByteToInt(B)I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/2addr p1, p2

    invoke-direct {p0, p4}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedByteToInt(B)I

    move-result p2

    shl-int/lit8 p2, p2, 0x18

    add-int/2addr p1, p2

    return p1
.end method

.method private unsignedToSigned(II)I
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    shl-int p2, v0, p2

    and-int v0, p1, p2

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, -0x1

    and-int/2addr p1, v0

    sub-int/2addr p2, p1

    mul-int/lit8 p2, p2, -0x1

    return p2

    :cond_0
    return p1
.end method


# virtual methods
.method public getByteArray(I)[B
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    iget v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    add-int v2, v1, p1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 543
    iget v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    return-object v0
.end method

.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public getDateTime()Ljava/util/Date;
    .locals 2

    .line 489
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getDateTime(I)Ljava/util/Date;

    move-result-object v0

    .line 490
    iget v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    add-int/lit8 v1, v1, 0x7

    iput v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    return-object v0
.end method

.method public getDateTime(I)Ljava/util/Date;
    .locals 9

    if-ltz p1, :cond_1

    add-int/lit8 v0, p1, 0x7

    .line 504
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 508
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v1, 0x12

    invoke-virtual {p0, v1, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(IILjava/nio/ByteOrder;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 509
    invoke-direct {p0, v1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 510
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(IILjava/nio/ByteOrder;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 511
    invoke-direct {p0, v1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result v2

    add-int/2addr p1, v2

    .line 512
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1, p1, v2}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(IILjava/nio/ByteOrder;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 513
    invoke-direct {p0, v1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result v2

    add-int/2addr p1, v2

    .line 514
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1, p1, v2}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(IILjava/nio/ByteOrder;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 515
    invoke-direct {p0, v1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result v2

    add-int/2addr p1, v2

    .line 516
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1, p1, v2}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(IILjava/nio/ByteOrder;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 517
    invoke-direct {p0, v1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result v2

    add-int/2addr p1, v2

    .line 518
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1, p1, v2}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(IILjava/nio/ByteOrder;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 520
    new-instance p1, Ljava/util/GregorianCalendar;

    add-int/lit8 v4, v0, -0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 521
    invoke-virtual {p1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 504
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid offset"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 503
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset must be greater or equal to zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFloat()Ljava/lang/Float;
    .locals 1

    const/16 v0, 0x34

    .line 1059
    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getFloatValue(I)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue(I)Ljava/lang/Float;
    .locals 2

    .line 362
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1, v0, v1}, Lcom/peripheral/ble/BluetoothBytesParser;->getFloatValue(IILjava/nio/ByteOrder;)Ljava/lang/Float;

    move-result-object v0

    .line 363
    iget v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    return-object v0
.end method

.method public getFloatValue(IILjava/nio/ByteOrder;)Ljava/lang/Float;
    .locals 2

    .line 395
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_5

    .line 397
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    array-length v1, v1

    if-gt v0, v1, :cond_4

    const/16 v0, 0x32

    if-eq p1, v0, :cond_2

    const/16 v0, 0x34

    if-ne p1, v0, :cond_1

    .line 407
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, p1, :cond_0

    .line 408
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    aget-byte p3, p1, p2

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->bytesToFloat(BBBB)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 p3, p2, 0x3

    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->bytesToFloat(BBBB)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 415
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported format type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 401
    :cond_2
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, p1, :cond_3

    .line 402
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    aget-byte p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->bytesToFloat(BB)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 404
    :cond_3
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 p3, p2, 0x1

    aget-byte p3, p1, p3

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->bytesToFloat(BB)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 397
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid offset"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 396
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset must be greater or equal to zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFloatValue(ILjava/nio/ByteOrder;)Ljava/lang/Float;
    .locals 1

    .line 378
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/peripheral/ble/BluetoothBytesParser;->getFloatValue(IILjava/nio/ByteOrder;)Ljava/lang/Float;

    move-result-object p2

    .line 380
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    return-object p2
.end method

.method public getIntValue(I)Ljava/lang/Integer;
    .locals 2

    .line 253
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1, v0, v1}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(IILjava/nio/ByteOrder;)Ljava/lang/Integer;

    move-result-object v0

    .line 254
    iget v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    return-object v0
.end method

.method public getIntValue(IILjava/nio/ByteOrder;)Ljava/lang/Integer;
    .locals 3

    .line 292
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_7

    .line 294
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    array-length v2, v1

    if-gt v0, v2, :cond_6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 350
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported format type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :pswitch_0
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v0, 0x20

    if-ne p3, p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    aget-byte p3, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, v1, v2, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedBytesToInt(BBBB)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedToSigned(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 p3, p2, 0x3

    aget-byte p3, p1, p3

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, v1, v2, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedBytesToInt(BBBB)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedToSigned(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 334
    :pswitch_1
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v1, 0x18

    if-ne p3, p1, :cond_1

    .line 335
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    aget-byte p3, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x2

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, v2, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedBytesToInt(BBBB)I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedToSigned(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 338
    :cond_1
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 p3, p2, 0x2

    aget-byte p3, p1, p3

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, v2, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedBytesToInt(BBBB)I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedToSigned(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 326
    :pswitch_2
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v0, 0x10

    if-ne p3, p1, :cond_2

    .line 327
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    aget-byte p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedBytesToInt(BB)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedToSigned(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 330
    :cond_2
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 p3, p2, 0x1

    aget-byte p3, p1, p3

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedBytesToInt(BB)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedToSigned(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 323
    :pswitch_3
    aget-byte p1, v1, p2

    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedByteToInt(B)I

    move-result p1

    const/16 p2, 0x8

    invoke-direct {p0, p1, p2}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedToSigned(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 315
    :pswitch_4
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, p1, :cond_3

    .line 316
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    aget-byte p3, p1, p2

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedBytesToInt(BBBB)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 319
    :cond_3
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 p3, p2, 0x3

    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedBytesToInt(BBBB)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 307
    :pswitch_5
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, p1, :cond_4

    .line 308
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    aget-byte p3, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 p2, p2, 0x2

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, v1, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedBytesToInt(BBBB)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 311
    :cond_4
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 p3, p2, 0x2

    aget-byte p3, p1, p3

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, v1, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedBytesToInt(BBBB)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 301
    :pswitch_6
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, p1, :cond_5

    .line 302
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    aget-byte p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedBytesToInt(BB)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 304
    :cond_5
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 p3, p2, 0x1

    aget-byte p3, p1, p3

    aget-byte p1, p1, p2

    invoke-direct {p0, p3, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedBytesToInt(BB)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 298
    :pswitch_7
    aget-byte p1, v1, p2

    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->unsignedByteToInt(B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 294
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid offset"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset must be greater or equal to zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIntValue(ILjava/nio/ByteOrder;)Ljava/lang/Integer;
    .locals 1

    .line 268
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(IILjava/nio/ByteOrder;)Ljava/lang/Integer;

    move-result-object p2

    .line 270
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    return-object p2
.end method

.method public getLongValue(I)Ljava/lang/Long;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getLongValue(ILjava/nio/ByteOrder;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getLongValue(IILjava/nio/ByteOrder;)Ljava/lang/Long;
    .locals 8

    .line 221
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x16

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x18

    if-ne p1, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    or-int/2addr v0, v2

    if-eqz v0, :cond_8

    .line 223
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result p1

    if-ltz p2, :cond_7

    add-int v0, p2, p1

    .line 225
    iget-object v2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    array-length v2, v2

    if-gt v0, v2, :cond_6

    .line 227
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x8

    if-ne p3, v2, :cond_3

    .line 228
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    sub-int/2addr v0, v1

    aget-byte p3, p3, v0

    and-int/lit16 p3, p3, 0xff

    int-to-long v0, p3

    add-int/lit8 p1, p1, -0x2

    :goto_1
    if-ltz p1, :cond_2

    shl-long/2addr v0, v3

    .line 231
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int v2, p1, p2

    aget-byte p3, p3, v2

    and-int/lit16 p3, p3, 0xff

    int-to-long v4, p3

    add-long/2addr v0, v4

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 233
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 234
    :cond_3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_5

    .line 235
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    aget-byte p3, p3, p2

    and-int/lit16 p3, p3, 0xff

    int-to-long v4, p3

    :goto_2
    if-ge v1, p1, :cond_4

    shl-long/2addr v4, v3

    .line 238
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int v0, v1, p2

    aget-byte p3, p3, v0

    and-int/lit16 p3, p3, 0xff

    int-to-long v6, p3

    add-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 240
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 242
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid byte order"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid offset"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset must be greater or equal to zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "format type not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getLongValue(ILjava/nio/ByteOrder;)Ljava/lang/Long;
    .locals 2

    .line 204
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/peripheral/ble/BluetoothBytesParser;->getLongValue(IILjava/nio/ByteOrder;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 206
    iget p2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    .line 207
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getOffset()I
    .locals 1

    .line 981
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    return v0
.end method

.method public getSFloat()Ljava/lang/Float;
    .locals 1

    const/16 v0, 0x32

    .line 1063
    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getFloatValue(I)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getSInt16()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x22

    .line 1031
    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSInt24()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x23

    .line 1039
    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSInt32()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x24

    .line 1047
    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSInt8()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x21

    .line 1023
    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStringOfLength(I)Ljava/lang/String;
    .locals 5

    const-string v0, "invalid length"

    if-lez p1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    add-int v3, v2, p1

    array-length v4, v1

    if-gt v3, v4, :cond_0

    .line 432
    new-array v0, p1, [B

    const/4 v3, 0x0

    .line 433
    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    iget v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    .line 436
    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->bytesToString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 430
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 429
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 425
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 4

    if-ltz p1, :cond_3

    .line 464
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    if-eqz v0, :cond_2

    array-length v1, v0

    if-gt p1, v1, :cond_2

    .line 467
    array-length v1, v0

    sub-int/2addr v1, p1

    .line 468
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 469
    invoke-static {v0, p1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-lez v1, :cond_1

    add-int/lit8 p1, v1, -0x1

    .line 473
    aget-byte v0, v2, p1

    if-eqz v0, :cond_0

    aget-byte p1, v2, p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 476
    :cond_1
    new-instance p1, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p1, v2, v3, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p1

    .line 464
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid offset"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 463
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset must be greater or equal to zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getUInt16()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x12

    .line 1027
    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getUInt24()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x13

    .line 1035
    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getUInt32()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x14

    .line 1043
    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getUInt48()Ljava/lang/Long;
    .locals 1

    const/16 v0, 0x16

    .line 1051
    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getLongValue(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getUInt64()Ljava/lang/Long;
    .locals 1

    const/16 v0, 0x18

    .line 1055
    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getLongValue(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getUInt8()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x11

    .line 1019
    invoke-virtual {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    return-object v0
.end method

.method public peekIntValue(I)Ljava/lang/Integer;
    .locals 2

    .line 1099
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1, v0, v1}, Lcom/peripheral/ble/BluetoothBytesParser;->getIntValue(IILjava/nio/ByteOrder;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setByteArray([B)V
    .locals 1

    .line 753
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-virtual {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->setByteArray([BI)V

    .line 754
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    return-void
.end method

.method public setByteArray([BI)V
    .locals 3

    .line 764
    array-length v0, p1

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->prepareArray(I)V

    .line 765
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothBytesParser;->getValue()[B

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setCurrentTime(Ljava/util/Calendar;)V
    .locals 6

    .line 809
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 811
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/4 v1, 0x1

    .line 812
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 813
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x8

    shr-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 814
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 815
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput-byte v4, v0, v5

    .line 816
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x4

    aput-byte v4, v0, v5

    .line 817
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 818
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x6

    aput-byte v4, v0, v5

    .line 819
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    rem-int/2addr v5, v4

    add-int/2addr v5, v1

    int-to-byte v2, v5

    aput-byte v2, v0, v4

    .line 820
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x100

    div-int/lit16 p1, p1, 0x3e8

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    .line 821
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/16 v0, 0x9

    aput-byte v1, p1, v0

    return-void
.end method

.method public setDateTime(Ljava/util/Calendar;)V
    .locals 4

    .line 831
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 833
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/4 v1, 0x1

    .line 834
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 835
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 836
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    int-to-byte v1, v3

    aput-byte v1, v0, v2

    .line 837
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    .line 838
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v0, v3

    .line 839
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 840
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-byte p1, p1

    const/4 v1, 0x6

    aput-byte p1, v0, v1

    return-void
.end method

.method public setFloatValue(FI)V
    .locals 6

    float-to-double v0, p1

    int-to-double v2, p2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 730
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-int p1, p1

    neg-int p2, p2

    .line 731
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    const/16 v1, 0x34

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->setFloatValue(IIII)V

    .line 732
    iget p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-direct {p0, v1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    return-void
.end method

.method public setFloatValue(IIII)V
    .locals 4

    if-ltz p4, :cond_4

    .line 683
    invoke-direct {p0, p3}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p4

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->prepareArray(I)V

    const/16 v0, 0x32

    const/16 v1, 0x8

    if-eq p3, v0, :cond_2

    const/16 v0, 0x34

    if-ne p3, v0, :cond_1

    const/16 p3, 0x18

    .line 704
    invoke-direct {p0, p1, p3}, Lcom/peripheral/ble/BluetoothBytesParser;->intToSignedBits(II)I

    move-result p1

    .line 705
    invoke-direct {p0, p2, v1}, Lcom/peripheral/ble/BluetoothBytesParser;->intToSignedBits(II)I

    move-result p2

    .line 706
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalByteOrder:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_0

    .line 707
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 v0, p4, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p3, p4

    add-int/lit8 p4, v0, 0x1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 708
    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    shr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 709
    aput-byte p1, p3, p4

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    .line 710
    aput-byte p1, p3, v0

    goto :goto_0

    .line 712
    :cond_0
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 v0, p4, 0x1

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 p4, p1, 0x10

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    .line 713
    aput-byte p4, p3, v0

    add-int/lit8 p4, p2, 0x1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 714
    aput-byte v0, p3, p2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 715
    aput-byte p1, p3, p4

    goto :goto_0

    .line 719
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported format type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/16 p3, 0xc

    .line 690
    invoke-direct {p0, p1, p3}, Lcom/peripheral/ble/BluetoothBytesParser;->intToSignedBits(II)I

    move-result p3

    const/4 v0, 0x4

    .line 691
    invoke-direct {p0, p2, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->intToSignedBits(II)I

    move-result p2

    .line 692
    iget-object v2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_3

    .line 693
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 v2, p4, 0x1

    and-int/lit16 v3, p3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, p4

    shr-int/2addr p3, v1

    and-int/lit8 p3, p3, 0xf

    int-to-byte p3, p3

    .line 694
    aput-byte p3, p1, v2

    .line 695
    aget-byte p3, p1, v2

    and-int/lit8 p2, p2, 0xf

    shl-int/2addr p2, v0

    int-to-byte p2, p2

    add-int/2addr p3, p2

    int-to-byte p2, p3

    aput-byte p2, p1, v2

    goto :goto_0

    .line 697
    :cond_3
    iget-object v2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    shr-int/2addr p3, v1

    and-int/lit8 p3, p3, 0xf

    int-to-byte p3, p3

    aput-byte p3, v2, p4

    add-int/lit8 p3, p4, 0x1

    .line 698
    aget-byte v1, v2, p4

    and-int/lit8 p2, p2, 0xf

    shl-int/2addr p2, v0

    int-to-byte p2, p2

    add-int/2addr v1, p2

    int-to-byte p2, v1

    aput-byte p2, v2, p4

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 699
    aput-byte p1, v2, p3

    :goto_0
    return-void

    .line 682
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset must be greater or equal to zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIntValue(II)V
    .locals 1

    .line 628
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->setIntValue(III)V

    .line 629
    iget p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-direct {p0, p2}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    return-void
.end method

.method public setIntValue(III)V
    .locals 3

    if-ltz p3, :cond_3

    .line 557
    invoke-direct {p0, p2}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->prepareArray(I)V

    const/16 v0, 0x18

    const/16 v1, 0x10

    const/16 v2, 0x8

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    .line 616
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported format type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 p2, 0x20

    .line 599
    invoke-direct {p0, p1, p2}, Lcom/peripheral/ble/BluetoothBytesParser;->intToSignedBits(II)I

    move-result p1

    goto :goto_0

    .line 584
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->intToSignedBits(II)I

    move-result p1

    goto :goto_1

    .line 571
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/peripheral/ble/BluetoothBytesParser;->intToSignedBits(II)I

    move-result p1

    goto/16 :goto_2

    .line 564
    :pswitch_3
    invoke-direct {p0, p1, v2}, Lcom/peripheral/ble/BluetoothBytesParser;->intToSignedBits(II)I

    move-result p1

    goto/16 :goto_3

    .line 602
    :goto_0
    :pswitch_4
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v1, :cond_0

    .line 603
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 v1, p3, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    add-int/lit8 p3, v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 604
    aput-byte v2, p2, v1

    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 605
    aput-byte v2, p2, p3

    shr-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 606
    aput-byte p1, p2, v1

    goto/16 :goto_4

    .line 608
    :cond_0
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 609
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 610
    aput-byte v1, p2, p3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 611
    aput-byte p1, p2, v0

    goto :goto_4

    .line 587
    :goto_1
    :pswitch_5
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalByteOrder:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_1

    .line 588
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 v0, p3, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    add-int/lit8 p3, v0, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 589
    aput-byte v2, p2, v0

    shr-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 590
    aput-byte p1, p2, p3

    goto :goto_4

    .line 592
    :cond_1
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 593
    aput-byte v1, p2, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 594
    aput-byte p1, p2, p3

    goto :goto_4

    .line 574
    :goto_2
    :pswitch_6
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalByteOrder:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_2

    .line 575
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 v0, p3, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    shr-int/2addr p1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 576
    aput-byte p1, p2, v0

    goto :goto_4

    .line 578
    :cond_2
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 579
    aput-byte p1, p2, v0

    goto :goto_4

    .line 567
    :goto_3
    :pswitch_7
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    :goto_4
    return-void

    .line 556
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset must be greater or equal to zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLong(JI)V
    .locals 1

    .line 639
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->setLong(JII)V

    .line 640
    iget p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-direct {p0, p3}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    return-void
.end method

.method public setLong(JII)V
    .locals 9

    if-ltz p4, :cond_5

    const/16 v0, 0x16

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x18

    if-ne p3, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v0, v3

    if-eqz v0, :cond_4

    .line 655
    invoke-direct {p0, p3}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result p3

    add-int v0, p4, p3

    .line 656
    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->prepareArray(I)V

    .line 659
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v4, 0x8

    const-wide/16 v5, 0xff

    if-ne v0, v3, :cond_2

    sub-int/2addr p3, v2

    :goto_2
    if-ltz p3, :cond_3

    .line 661
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int v1, p3, p4

    and-long v2, p1, v5

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    shr-long/2addr p1, v4

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v1, p3, :cond_3

    .line 666
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    add-int v2, v1, p4

    and-long v7, p1, v5

    long-to-int v3, v7

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    shr-long/2addr p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void

    .line 653
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "format type not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 652
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset must be greater or equal to zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public setOffset(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 990
    iput p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    return-void

    .line 989
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset must be greater or equal to zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSFloatValue(FI)V
    .locals 6

    float-to-double v0, p1

    int-to-double v2, p2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 742
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-int p1, p1

    neg-int p2, p2

    .line 743
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    const/16 v1, 0x32

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->setFloatValue(IIII)V

    .line 744
    iget p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-direct {p0, v1}, Lcom/peripheral/ble/BluetoothBytesParser;->getTypeLen(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    return-void
.end method

.method public setSInt16(I)V
    .locals 1

    const/16 v0, 0x22

    .line 1079
    invoke-virtual {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->setIntValue(II)V

    return-void
.end method

.method public setSInt32(I)V
    .locals 1

    const/16 v0, 0x24

    .line 1087
    invoke-virtual {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->setIntValue(II)V

    return-void
.end method

.method public setSInt8(I)V
    .locals 1

    const/16 v0, 0x21

    .line 1071
    invoke-virtual {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->setIntValue(II)V

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1

    .line 775
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-virtual {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->setString(Ljava/lang/String;I)V

    .line 777
    iget v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->internalOffset:I

    return-void
.end method

.method public setString(Ljava/lang/String;I)V
    .locals 0

    .line 788
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/peripheral/ble/BluetoothBytesParser;->setByteArray([BI)V

    return-void
.end method

.method public setUInt16(I)V
    .locals 1

    const/16 v0, 0x12

    .line 1075
    invoke-virtual {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->setIntValue(II)V

    return-void
.end method

.method public setUInt32(I)V
    .locals 1

    const/16 v0, 0x14

    .line 1083
    invoke-virtual {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->setIntValue(II)V

    return-void
.end method

.method public setUInt48(J)V
    .locals 1

    const/16 v0, 0x16

    .line 1091
    invoke-virtual {p0, p1, p2, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->setLong(JI)V

    return-void
.end method

.method public setUInt64(J)V
    .locals 1

    const/16 v0, 0x18

    .line 1095
    invoke-virtual {p0, p1, p2, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->setLong(JI)V

    return-void
.end method

.method public setUInt8(I)V
    .locals 1

    const/16 v0, 0x11

    .line 1067
    invoke-virtual {p0, p1, v0}, Lcom/peripheral/ble/BluetoothBytesParser;->setIntValue(II)V

    return-void
.end method

.method public setValue([B)V
    .locals 0

    .line 799
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothBytesParser;->mValue:[B

    invoke-static {v0}, Lcom/peripheral/ble/BluetoothBytesParser;->asHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
