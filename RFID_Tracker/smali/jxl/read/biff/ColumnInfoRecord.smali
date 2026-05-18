.class public Ljxl/read/biff/ColumnInfoRecord;
.super Ljxl/biff/RecordData;
.source "ColumnInfoRecord.java"


# instance fields
.field private collapsed:Z

.field private data:[B

.field private endColumn:I

.field private hidden:Z

.field private outlineLevel:I

.field private startColumn:I

.field private width:I

.field private xfIndex:I


# direct methods
.method constructor <init>(Ljxl/read/biff/Record;)V
    .locals 5

    .line 78
    sget-object v0, Ljxl/biff/Type;->COLINFO:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/RecordData;-><init>(Ljxl/biff/Type;)V

    .line 80
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    const/4 v0, 0x0

    .line 82
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte p1, p1, v2

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/ColumnInfoRecord;->startColumn:I

    .line 83
    iget-object p1, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v3, 0x3

    aget-byte p1, p1, v3

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/ColumnInfoRecord;->endColumn:I

    .line 84
    iget-object p1, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    const/4 v3, 0x5

    aget-byte p1, p1, v3

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/ColumnInfoRecord;->width:I

    .line 85
    iget-object p1, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    const/4 v3, 0x7

    aget-byte p1, p1, v3

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/ColumnInfoRecord;->xfIndex:I

    .line 87
    iget-object p1, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    const/16 v1, 0x8

    aget-byte v3, p1, v1

    const/16 v4, 0x9

    aget-byte p1, p1, v4

    invoke-static {v3, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 88
    :goto_0
    iput-boolean v3, p0, Ljxl/read/biff/ColumnInfoRecord;->hidden:Z

    and-int/lit16 v3, p1, 0x700

    shr-int/lit8 v1, v3, 0x8

    .line 89
    iput v1, p0, Ljxl/read/biff/ColumnInfoRecord;->outlineLevel:I

    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 90
    :cond_1
    iput-boolean v0, p0, Ljxl/read/biff/ColumnInfoRecord;->collapsed:Z

    return-void
.end method


# virtual methods
.method public getCollapsed()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Ljxl/read/biff/ColumnInfoRecord;->collapsed:Z

    return v0
.end method

.method public getEndColumn()I
    .locals 1

    .line 110
    iget v0, p0, Ljxl/read/biff/ColumnInfoRecord;->endColumn:I

    return v0
.end method

.method public getHidden()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Ljxl/read/biff/ColumnInfoRecord;->hidden:Z

    return v0
.end method

.method public getOutlineLevel()I
    .locals 1

    .line 130
    iget v0, p0, Ljxl/read/biff/ColumnInfoRecord;->outlineLevel:I

    return v0
.end method

.method public getStartColumn()I
    .locals 1

    .line 100
    iget v0, p0, Ljxl/read/biff/ColumnInfoRecord;->startColumn:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 150
    iget v0, p0, Ljxl/read/biff/ColumnInfoRecord;->width:I

    return v0
.end method

.method public getXFIndex()I
    .locals 1

    .line 120
    iget v0, p0, Ljxl/read/biff/ColumnInfoRecord;->xfIndex:I

    return v0
.end method
