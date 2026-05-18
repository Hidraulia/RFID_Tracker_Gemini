.class public Ljxl/biff/drawing/NoteRecord;
.super Ljxl/biff/WritableRecordData;
.source "NoteRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private column:I

.field private data:[B

.field private objectId:I

.field private row:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Ljxl/biff/drawing/NoteRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/NoteRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 93
    sget-object v0, Ljxl/biff/Type;->NOTE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 94
    iput p2, p0, Ljxl/biff/drawing/NoteRecord;->row:I

    .line 95
    iput p1, p0, Ljxl/biff/drawing/NoteRecord;->column:I

    .line 96
    iput p3, p0, Ljxl/biff/drawing/NoteRecord;->objectId:I

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 2

    .line 66
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 67
    invoke-virtual {p0}, Ljxl/biff/drawing/NoteRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    const/4 v0, 0x0

    .line 68
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/NoteRecord;->row:I

    .line 69
    iget-object p1, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/NoteRecord;->column:I

    .line 70
    iget-object p1, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    const/4 v1, 0x7

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/NoteRecord;->objectId:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 80
    sget-object v0, Ljxl/biff/Type;->NOTE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 81
    iput-object p1, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    return-void
.end method


# virtual methods
.method getColumn()I
    .locals 1

    .line 151
    iget v0, p0, Ljxl/biff/drawing/NoteRecord;->column:I

    return v0
.end method

.method public getData()[B
    .locals 4

    .line 106
    iget-object v0, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 112
    iput-object v0, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    .line 115
    iget v1, p0, Ljxl/biff/drawing/NoteRecord;->row:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 118
    iget v0, p0, Ljxl/biff/drawing/NoteRecord;->column:I

    iget-object v1, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 121
    iget v0, p0, Ljxl/biff/drawing/NoteRecord;->objectId:I

    iget-object v1, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    const/4 v3, 0x6

    invoke-static {v0, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 124
    iget-object v0, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    const/16 v1, 0x8

    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 131
    iget-object v0, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    return-object v0
.end method

.method public getObjectId()I
    .locals 1

    .line 161
    iget v0, p0, Ljxl/biff/drawing/NoteRecord;->objectId:I

    return v0
.end method

.method getRow()I
    .locals 1

    .line 141
    iget v0, p0, Ljxl/biff/drawing/NoteRecord;->row:I

    return v0
.end method
