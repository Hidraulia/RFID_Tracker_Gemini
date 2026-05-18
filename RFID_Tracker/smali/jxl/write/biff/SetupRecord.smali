.class Ljxl/write/biff/SetupRecord;
.super Ljxl/biff/WritableRecordData;
.source "SetupRecord.java"


# instance fields
.field private copies:I

.field private data:[B

.field private fitHeight:I

.field private fitWidth:I

.field private footerMargin:D

.field private headerMargin:D

.field private horizontalPrintResolution:I

.field private initialized:Z

.field logger:Ljxl/common/Logger;

.field private order:Ljxl/format/PageOrder;

.field private orientation:Ljxl/format/PageOrientation;

.field private pageStart:I

.field private paperSize:I

.field private scaleFactor:I

.field private verticalPrintResolution:I


# direct methods
.method public constructor <init>(Ljxl/SheetSettings;)V
    .locals 2

    .line 122
    sget-object v0, Ljxl/biff/Type;->SETUP:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 41
    const-class v0, Ljxl/write/biff/SetupRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/SetupRecord;->logger:Ljxl/common/Logger;

    .line 124
    invoke-virtual {p1}, Ljxl/SheetSettings;->getOrientation()Ljxl/format/PageOrientation;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/SetupRecord;->orientation:Ljxl/format/PageOrientation;

    .line 125
    invoke-virtual {p1}, Ljxl/SheetSettings;->getPageOrder()Ljxl/format/PageOrder;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/SetupRecord;->order:Ljxl/format/PageOrder;

    .line 126
    invoke-virtual {p1}, Ljxl/SheetSettings;->getHeaderMargin()D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/write/biff/SetupRecord;->headerMargin:D

    .line 127
    invoke-virtual {p1}, Ljxl/SheetSettings;->getFooterMargin()D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/write/biff/SetupRecord;->footerMargin:D

    .line 128
    invoke-virtual {p1}, Ljxl/SheetSettings;->getPaperSize()Ljxl/format/PaperSize;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/format/PaperSize;->getValue()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->paperSize:I

    .line 129
    invoke-virtual {p1}, Ljxl/SheetSettings;->getHorizontalPrintResolution()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->horizontalPrintResolution:I

    .line 130
    invoke-virtual {p1}, Ljxl/SheetSettings;->getVerticalPrintResolution()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->verticalPrintResolution:I

    .line 131
    invoke-virtual {p1}, Ljxl/SheetSettings;->getFitWidth()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->fitWidth:I

    .line 132
    invoke-virtual {p1}, Ljxl/SheetSettings;->getFitHeight()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->fitHeight:I

    .line 133
    invoke-virtual {p1}, Ljxl/SheetSettings;->getPageStart()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->pageStart:I

    .line 134
    invoke-virtual {p1}, Ljxl/SheetSettings;->getScaleFactor()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->scaleFactor:I

    .line 135
    invoke-virtual {p1}, Ljxl/SheetSettings;->getCopies()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/SetupRecord;->copies:I

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Ljxl/write/biff/SetupRecord;->initialized:Z

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 4

    const/16 v0, 0x22

    new-array v0, v0, [B

    .line 188
    iput-object v0, p0, Ljxl/write/biff/SetupRecord;->data:[B

    .line 191
    iget v1, p0, Ljxl/write/biff/SetupRecord;->paperSize:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 194
    iget v0, p0, Ljxl/write/biff/SetupRecord;->scaleFactor:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 197
    iget v0, p0, Ljxl/write/biff/SetupRecord;->pageStart:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/4 v3, 0x4

    invoke-static {v0, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 200
    iget v0, p0, Ljxl/write/biff/SetupRecord;->fitWidth:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/4 v3, 0x6

    invoke-static {v0, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 203
    iget v0, p0, Ljxl/write/biff/SetupRecord;->fitHeight:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/16 v3, 0x8

    invoke-static {v0, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 207
    iget-object v0, p0, Ljxl/write/biff/SetupRecord;->order:Ljxl/format/PageOrder;

    sget-object v1, Ljxl/format/PageOrder;->RIGHT_THEN_DOWN:Ljxl/format/PageOrder;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    .line 212
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/SetupRecord;->orientation:Ljxl/format/PageOrientation;

    sget-object v1, Ljxl/format/PageOrientation;->PORTRAIT:Ljxl/format/PageOrientation;

    if-ne v0, v1, :cond_1

    or-int/lit8 v2, v2, 0x2

    .line 217
    :cond_1
    iget v0, p0, Ljxl/write/biff/SetupRecord;->pageStart:I

    if-eqz v0, :cond_2

    or-int/lit16 v2, v2, 0x80

    .line 222
    :cond_2
    iget-boolean v0, p0, Ljxl/write/biff/SetupRecord;->initialized:Z

    if-nez v0, :cond_3

    or-int/lit8 v2, v2, 0x4

    .line 227
    :cond_3
    iget-object v0, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/16 v1, 0xa

    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 230
    iget v0, p0, Ljxl/write/biff/SetupRecord;->horizontalPrintResolution:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 233
    iget v0, p0, Ljxl/write/biff/SetupRecord;->verticalPrintResolution:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 236
    iget-wide v0, p0, Ljxl/write/biff/SetupRecord;->headerMargin:D

    iget-object v2, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Ljxl/biff/DoubleHelper;->getIEEEBytes(D[BI)V

    .line 239
    iget-wide v0, p0, Ljxl/write/biff/SetupRecord;->footerMargin:D

    iget-object v2, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Ljxl/biff/DoubleHelper;->getIEEEBytes(D[BI)V

    .line 242
    iget v0, p0, Ljxl/write/biff/SetupRecord;->copies:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 244
    iget-object v0, p0, Ljxl/write/biff/SetupRecord;->data:[B

    return-object v0
.end method

.method public setMargins(DD)V
    .locals 0

    .line 167
    iput-wide p1, p0, Ljxl/write/biff/SetupRecord;->headerMargin:D

    .line 168
    iput-wide p3, p0, Ljxl/write/biff/SetupRecord;->footerMargin:D

    return-void
.end method

.method public setOrder(Ljxl/format/PageOrder;)V
    .locals 0

    .line 156
    iput-object p1, p0, Ljxl/write/biff/SetupRecord;->order:Ljxl/format/PageOrder;

    return-void
.end method

.method public setOrientation(Ljxl/format/PageOrientation;)V
    .locals 0

    .line 146
    iput-object p1, p0, Ljxl/write/biff/SetupRecord;->orientation:Ljxl/format/PageOrientation;

    return-void
.end method

.method public setPaperSize(Ljxl/format/PaperSize;)V
    .locals 0

    .line 178
    invoke-virtual {p1}, Ljxl/format/PaperSize;->getValue()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/SetupRecord;->paperSize:I

    return-void
.end method
