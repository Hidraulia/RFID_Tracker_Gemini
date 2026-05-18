.class public Ljxl/read/biff/RowRecord;
.super Ljxl/biff/RecordData;
.source "RowRecord.java"


# static fields
.field private static final defaultHeightIndicator:I = 0xff

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private collapsed:Z

.field private defaultFormat:Z

.field private groupStart:Z

.field private matchesDefFontHeight:Z

.field private outlineLevel:I

.field private rowHeight:I

.field private rowNumber:I

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ljxl/read/biff/RowRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/RowRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;)V
    .locals 6

    .line 84
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 86
    invoke-virtual {p0}, Ljxl/read/biff/RowRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 87
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/RowRecord;->rowNumber:I

    const/4 v1, 0x6

    .line 88
    aget-byte v1, p1, v1

    const/4 v3, 0x7

    aget-byte v3, p1, v3

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/RowRecord;->rowHeight:I

    const/16 v1, 0xc

    .line 90
    aget-byte v1, p1, v1

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    const/16 v4, 0xe

    aget-byte v4, p1, v4

    const/16 v5, 0xf

    aget-byte p1, p1, v5

    invoke-static {v1, v3, v4, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    and-int/lit8 v1, p1, 0x7

    .line 92
    iput v1, p0, Ljxl/read/biff/RowRecord;->outlineLevel:I

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 93
    :goto_0
    iput-boolean v1, p0, Ljxl/read/biff/RowRecord;->groupStart:Z

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 94
    :goto_1
    iput-boolean v1, p0, Ljxl/read/biff/RowRecord;->collapsed:Z

    and-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 95
    :goto_2
    iput-boolean v1, p0, Ljxl/read/biff/RowRecord;->matchesDefFontHeight:Z

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 96
    :cond_3
    iput-boolean v0, p0, Ljxl/read/biff/RowRecord;->defaultFormat:Z

    const/high16 v0, 0xfff0000

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x10

    .line 97
    iput p1, p0, Ljxl/read/biff/RowRecord;->xfIndex:I

    return-void
.end method


# virtual methods
.method public getGroupStart()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Ljxl/read/biff/RowRecord;->groupStart:Z

    return v0
.end method

.method public getOutlineLevel()I
    .locals 1

    .line 137
    iget v0, p0, Ljxl/read/biff/RowRecord;->outlineLevel:I

    return v0
.end method

.method public getRowHeight()I
    .locals 1

    .line 157
    iget v0, p0, Ljxl/read/biff/RowRecord;->rowHeight:I

    return v0
.end method

.method public getRowNumber()I
    .locals 1

    .line 127
    iget v0, p0, Ljxl/read/biff/RowRecord;->rowNumber:I

    return v0
.end method

.method public getXFIndex()I
    .locals 1

    .line 177
    iget v0, p0, Ljxl/read/biff/RowRecord;->xfIndex:I

    return v0
.end method

.method public hasDefaultFormat()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Ljxl/read/biff/RowRecord;->defaultFormat:Z

    return v0
.end method

.method public isCollapsed()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Ljxl/read/biff/RowRecord;->collapsed:Z

    return v0
.end method

.method isDefaultHeight()Z
    .locals 2

    .line 107
    iget v0, p0, Ljxl/read/biff/RowRecord;->rowHeight:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matchesDefaultFontHeight()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Ljxl/read/biff/RowRecord;->matchesDefFontHeight:Z

    return v0
.end method
