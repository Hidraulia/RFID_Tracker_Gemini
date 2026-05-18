.class public Ljxl/read/biff/GuttersRecord;
.super Ljxl/biff/RecordData;
.source "GuttersRecord.java"


# instance fields
.field private columnOutlineLevel:I

.field private height:I

.field private rowOutlineLevel:I

.field private width:I


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 44
    invoke-virtual {p0}, Ljxl/read/biff/GuttersRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 45
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/GuttersRecord;->width:I

    const/4 v0, 0x2

    .line 46
    aget-byte v0, p1, v0

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/GuttersRecord;->height:I

    const/4 v0, 0x4

    .line 47
    aget-byte v0, p1, v0

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/GuttersRecord;->rowOutlineLevel:I

    const/4 v0, 0x6

    .line 48
    aget-byte v0, p1, v0

    const/4 v1, 0x7

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/GuttersRecord;->columnOutlineLevel:I

    return-void
.end method


# virtual methods
.method getColumnOutlineLevel()I
    .locals 1

    .line 58
    iget v0, p0, Ljxl/read/biff/GuttersRecord;->columnOutlineLevel:I

    return v0
.end method

.method getRowOutlineLevel()I
    .locals 1

    .line 53
    iget v0, p0, Ljxl/read/biff/GuttersRecord;->rowOutlineLevel:I

    return v0
.end method
