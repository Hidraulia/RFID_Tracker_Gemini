.class Ljxl/write/biff/NameRecord;
.super Ljxl/biff/WritableRecordData;
.source "NameRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/NameRecord$NameRange;
    }
.end annotation


# static fields
.field private static final EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

.field private static final areaReference:I = 0x3b

.field private static final cellReference:I = 0x3a

.field private static logger:Ljxl/common/Logger; = null

.field private static final subExpression:I = 0x29

.field private static final union:I = 0x10


# instance fields
.field private builtInName:Ljxl/biff/BuiltInName;

.field private data:[B

.field private index:I

.field private modified:Z

.field private name:Ljava/lang/String;

.field private ranges:[Ljxl/write/biff/NameRecord$NameRange;

.field private sheetRef:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    const-class v0, Ljxl/write/biff/NameRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/NameRecord;->logger:Ljxl/common/Logger;

    .line 155
    new-instance v0, Ljxl/write/biff/NameRecord$NameRange;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/write/biff/NameRecord$NameRange;-><init>(IIIII)V

    sput-object v0, Ljxl/write/biff/NameRecord;->EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIIIIIZ)V
    .locals 7

    .line 202
    sget-object v0, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 204
    iput-object p1, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    .line 205
    iput p2, p0, Ljxl/write/biff/NameRecord;->index:I

    const/4 p1, 0x1

    if-eqz p8, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    add-int/2addr p2, p1

    .line 206
    :goto_0
    iput p2, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    new-array p2, p1, [Ljxl/write/biff/NameRecord$NameRange;

    .line 209
    iput-object p2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    .line 210
    new-instance p8, Ljxl/write/biff/NameRecord$NameRange;

    move-object v1, p8

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v1 .. v6}, Ljxl/write/biff/NameRecord$NameRange;-><init>(IIIII)V

    aput-object p8, p2, v0

    .line 215
    iput-boolean p1, p0, Ljxl/write/biff/NameRecord;->modified:Z

    return-void
.end method

.method constructor <init>(Ljxl/biff/BuiltInName;IIIIIIIIIIZ)V
    .locals 11

    move-object v0, p0

    move v1, p2

    .line 283
    sget-object v2, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    invoke-direct {p0, v2}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v2, 0x0

    .line 62
    iput v2, v0, Ljxl/write/biff/NameRecord;->sheetRef:I

    move-object v3, p1

    .line 285
    iput-object v3, v0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    .line 286
    iput v1, v0, Ljxl/write/biff/NameRecord;->index:I

    const/4 v3, 0x1

    if-eqz p12, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v3

    .line 287
    :goto_0
    iput v1, v0, Ljxl/write/biff/NameRecord;->sheetRef:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljxl/write/biff/NameRecord$NameRange;

    .line 290
    iput-object v1, v0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    .line 291
    new-instance v10, Ljxl/write/biff/NameRecord$NameRange;

    move-object v4, v10

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v4 .. v9}, Ljxl/write/biff/NameRecord$NameRange;-><init>(IIIII)V

    aput-object v10, v1, v2

    .line 296
    iget-object v1, v0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    new-instance v2, Ljxl/write/biff/NameRecord$NameRange;

    move-object v4, v2

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v4 .. v9}, Ljxl/write/biff/NameRecord$NameRange;-><init>(IIIII)V

    aput-object v2, v1, v3

    return-void
.end method

.method constructor <init>(Ljxl/biff/BuiltInName;IIIIIIZ)V
    .locals 7

    .line 239
    sget-object v0, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 241
    iput-object p1, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    .line 242
    iput p2, p0, Ljxl/write/biff/NameRecord;->index:I

    const/4 p1, 0x1

    if-eqz p8, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    add-int/2addr p2, p1

    .line 243
    :goto_0
    iput p2, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    new-array p1, p1, [Ljxl/write/biff/NameRecord$NameRange;

    .line 246
    iput-object p1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    .line 247
    new-instance p2, Ljxl/write/biff/NameRecord$NameRange;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v1 .. v6}, Ljxl/write/biff/NameRecord$NameRange;-><init>(IIIII)V

    aput-object p2, p1, v0

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/NameRecord;I)V
    .locals 3

    .line 164
    sget-object v0, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 166
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getData()[B

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/NameRecord;->data:[B

    .line 167
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getSheetRef()I

    move-result v1

    iput v1, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 169
    iput p2, p0, Ljxl/write/biff/NameRecord;->index:I

    .line 170
    iput-boolean v0, p0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 173
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object p1

    .line 174
    array-length p2, p1

    new-array p2, p2, [Ljxl/write/biff/NameRecord$NameRange;

    iput-object p2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    .line 175
    :goto_0
    iget-object p2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 177
    new-instance v1, Ljxl/write/biff/NameRecord$NameRange;

    aget-object v2, p1, v0

    invoke-direct {v1, v2}, Ljxl/write/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord$NameRange;)V

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method columnInserted(II)V
    .locals 3

    const/4 v0, 0x0

    .line 633
    :goto_0
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 635
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v1

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 640
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v1

    const/4 v2, 0x1

    if-gt p2, v1, :cond_1

    .line 642
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->incrementFirstColumn()V

    .line 643
    iput-boolean v2, p0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 646
    :cond_1
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v1

    if-gt p2, v1, :cond_2

    .line 648
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->incrementLastColumn()V

    .line 649
    iput-boolean v2, p0, Ljxl/write/biff/NameRecord;->modified:Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method columnRemoved(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 567
    :goto_0
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_4

    .line 569
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v2

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 574
    :cond_0
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v2

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 578
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    sget-object v3, Ljxl/write/biff/NameRecord;->EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

    aput-object v3, v2, v1

    .line 581
    :cond_1
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v2

    if-ge p2, v2, :cond_2

    if-lez p2, :cond_2

    .line 583
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->decrementFirstColumn()V

    .line 584
    iput-boolean v4, p0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 587
    :cond_2
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v2

    if-gt p2, v2, :cond_3

    .line 589
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->decrementLastColumn()V

    .line 590
    iput-boolean v4, p0, Ljxl/write/biff/NameRecord;->modified:Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 596
    :goto_2
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v2, v1

    if-ge p1, v2, :cond_6

    .line 598
    aget-object v1, v1, p1

    sget-object v2, Ljxl/write/biff/NameRecord;->EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

    if-ne v1, v2, :cond_5

    add-int/lit8 p2, p2, 0x1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 604
    :cond_6
    array-length p1, v1

    if-ne p2, p1, :cond_7

    return v4

    .line 610
    :cond_7
    array-length p1, v1

    sub-int/2addr p1, p2

    new-array p1, p1, [Ljxl/write/biff/NameRecord$NameRange;

    const/4 p2, 0x0

    .line 611
    :goto_3
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v2, v1

    if-ge p2, v2, :cond_9

    .line 613
    aget-object v2, v1, p2

    sget-object v3, Ljxl/write/biff/NameRecord;->EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

    if-eq v2, v3, :cond_8

    .line 615
    aget-object v1, v1, p2

    aput-object v1, p1, p2

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 619
    :cond_9
    iput-object p1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    return v0
.end method

.method public getData()[B
    .locals 10

    .line 311
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->data:[B

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Ljxl/write/biff/NameRecord;->modified:Z

    if-nez v1, :cond_0

    return-object v0

    .line 323
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v1, v0

    const/4 v2, 0x4

    const/16 v3, 0xb

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    .line 325
    array-length v0, v0

    mul-int/lit8 v0, v0, 0xb

    add-int/lit8 v3, v0, 0x4

    :cond_1
    add-int/lit8 v0, v3, 0xf

    .line 333
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 334
    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/NameRecord;->data:[B

    .line 339
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 343
    :goto_1
    iget-object v5, p0, Ljxl/write/biff/NameRecord;->data:[B

    invoke-static {v0, v5, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 346
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->data:[B

    const/4 v5, 0x2

    aput-byte v1, v0, v5

    .line 349
    iget-object v6, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    const/4 v7, 0x3

    if-eqz v6, :cond_4

    .line 351
    aput-byte v4, v0, v7

    goto :goto_2

    .line 355
    :cond_4
    iget-object v6, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v7

    .line 359
    :goto_2
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->data:[B

    invoke-static {v3, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 362
    iget v0, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    iget-object v2, p0, Ljxl/write/biff/NameRecord;->data:[B

    const/4 v6, 0x6

    invoke-static {v0, v2, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 363
    iget v0, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    iget-object v2, p0, Ljxl/write/biff/NameRecord;->data:[B

    const/16 v6, 0x8

    invoke-static {v0, v2, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 369
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    const/16 v2, 0xf

    if-eqz v0, :cond_5

    .line 371
    iget-object v6, p0, Ljxl/write/biff/NameRecord;->data:[B

    invoke-virtual {v0}, Ljxl/biff/BuiltInName;->getValue()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v6, v2

    goto :goto_3

    .line 375
    :cond_5
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    iget-object v6, p0, Ljxl/write/biff/NameRecord;->data:[B

    invoke-static {v0, v6, v2}, Ljxl/biff/StringHelper;->getBytes(Ljava/lang/String;[BI)V

    .line 379
    :goto_3
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    const/16 v6, 0x10

    if-eqz v0, :cond_6

    const/16 v0, 0x10

    goto :goto_4

    :cond_6
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 384
    :goto_4
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v8, v2

    const/16 v9, 0x3b

    if-le v8, v4, :cond_8

    .line 386
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->data:[B

    add-int/lit8 v4, v0, 0x1

    const/16 v8, 0x29

    aput-byte v8, v2, v0

    sub-int/2addr v3, v7

    .line 388
    invoke-static {v3, v2, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/2addr v4, v5

    const/4 v0, 0x0

    .line 391
    :goto_5
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v3, v2

    if-ge v0, v3, :cond_7

    .line 393
    iget-object v3, p0, Ljxl/write/biff/NameRecord;->data:[B

    add-int/lit8 v5, v4, 0x1

    aput-byte v9, v3, v4

    .line 394
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->getData()[B

    move-result-object v2

    .line 395
    iget-object v3, p0, Ljxl/write/biff/NameRecord;->data:[B

    array-length v4, v2

    invoke-static {v2, v1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    array-length v2, v2

    add-int v4, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 398
    :cond_7
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->data:[B

    aput-byte v6, v0, v4

    goto :goto_6

    .line 403
    :cond_8
    iget-object v3, p0, Ljxl/write/biff/NameRecord;->data:[B

    aput-byte v9, v3, v0

    .line 406
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->getData()[B

    move-result-object v2

    .line 407
    iget-object v3, p0, Ljxl/write/biff/NameRecord;->data:[B

    add-int/2addr v0, v4

    array-length v4, v2

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    :goto_6
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->data:[B

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 430
    iget v0, p0, Ljxl/write/biff/NameRecord;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRanges()[Ljxl/write/biff/NameRecord$NameRange;
    .locals 1

    .line 461
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    return-object v0
.end method

.method public getSheetRef()I
    .locals 1

    .line 441
    iget v0, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    return v0
.end method

.method rowInserted(II)V
    .locals 3

    const/4 v0, 0x0

    .line 472
    :goto_0
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 474
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v1

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 479
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v1

    const/4 v2, 0x1

    if-gt p2, v1, :cond_1

    .line 481
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->incrementFirstRow()V

    .line 482
    iput-boolean v2, p0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 485
    :cond_1
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getLastRow()I

    move-result v1

    if-gt p2, v1, :cond_2

    .line 487
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->incrementLastRow()V

    .line 488
    iput-boolean v2, p0, Ljxl/write/biff/NameRecord;->modified:Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method rowRemoved(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 502
    :goto_0
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_4

    .line 504
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v2

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 509
    :cond_0
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v2

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->getLastRow()I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 512
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    sget-object v3, Ljxl/write/biff/NameRecord;->EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

    aput-object v3, v2, v1

    .line 515
    :cond_1
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v2

    if-ge p2, v2, :cond_2

    if-lez p2, :cond_2

    .line 517
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->decrementFirstRow()V

    .line 518
    iput-boolean v4, p0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 521
    :cond_2
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->getLastRow()I

    move-result v2

    if-gt p2, v2, :cond_3

    .line 523
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->decrementLastRow()V

    .line 524
    iput-boolean v4, p0, Ljxl/write/biff/NameRecord;->modified:Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 530
    :goto_2
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v2, v1

    if-ge p1, v2, :cond_6

    .line 532
    aget-object v1, v1, p1

    sget-object v2, Ljxl/write/biff/NameRecord;->EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

    if-ne v1, v2, :cond_5

    add-int/lit8 p2, p2, 0x1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 538
    :cond_6
    array-length p1, v1

    if-ne p2, p1, :cond_7

    return v4

    .line 544
    :cond_7
    array-length p1, v1

    sub-int/2addr p1, p2

    new-array p1, p1, [Ljxl/write/biff/NameRecord$NameRange;

    const/4 p2, 0x0

    .line 545
    :goto_3
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v2, v1

    if-ge p2, v2, :cond_9

    .line 547
    aget-object v2, v1, p2

    sget-object v3, Ljxl/write/biff/NameRecord;->EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

    if-eq v2, v3, :cond_8

    .line 549
    aget-object v1, v1, p2

    aput-object v1, p1, p2

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 553
    :cond_9
    iput-object p1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    return v0
.end method

.method public setSheetRef(I)V
    .locals 2

    .line 451
    iput p1, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 452
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->data:[B

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-void
.end method
