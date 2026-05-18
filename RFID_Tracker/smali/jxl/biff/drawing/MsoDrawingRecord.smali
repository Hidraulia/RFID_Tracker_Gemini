.class public Ljxl/biff/drawing/MsoDrawingRecord;
.super Ljxl/biff/WritableRecordData;
.source "MsoDrawingRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private data:[B

.field private first:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/MsoDrawingRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 57
    invoke-virtual {p0}, Ljxl/biff/drawing/MsoDrawingRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/drawing/MsoDrawingRecord;->data:[B

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Ljxl/biff/drawing/MsoDrawingRecord;->first:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 68
    sget-object v0, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 69
    iput-object p1, p0, Ljxl/biff/drawing/MsoDrawingRecord;->data:[B

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Ljxl/biff/drawing/MsoDrawingRecord;->first:Z

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 80
    iget-object v0, p0, Ljxl/biff/drawing/MsoDrawingRecord;->data:[B

    return-object v0
.end method

.method public getRecord()Ljxl/read/biff/Record;
    .locals 1

    .line 90
    invoke-super {p0}, Ljxl/biff/WritableRecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    return-object v0
.end method

.method public isFirst()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Ljxl/biff/drawing/MsoDrawingRecord;->first:Z

    return v0
.end method

.method public setFirst()V
    .locals 1

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Ljxl/biff/drawing/MsoDrawingRecord;->first:Z

    return-void
.end method
