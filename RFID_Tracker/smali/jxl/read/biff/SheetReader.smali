.class final Ljxl/read/biff/SheetReader;
.super Ljava/lang/Object;
.source "SheetReader.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

.field private cells:[[Ljxl/Cell;

.field private charts:Ljava/util/ArrayList;

.field private columnBreaks:[I

.field private columnInfosArray:Ljava/util/ArrayList;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawings:Ljava/util/ArrayList;

.field private excelFile:Ljxl/read/biff/File;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private hyperlinks:Ljava/util/ArrayList;

.field private maxColumnOutlineLevel:I

.field private maxRowOutlineLevel:I

.field private mergedCells:[Ljxl/Range;

.field private nineteenFour:Z

.field private numCols:I

.field private numRows:I

.field private outOfBoundsCells:Ljava/util/ArrayList;

.field private plsRecord:Ljxl/read/biff/PLSRecord;

.field private rowBreaks:[I

.field private rowProperties:Ljava/util/ArrayList;

.field private settings:Ljxl/SheetSettings;

.field private sharedFormulas:Ljava/util/ArrayList;

.field private sharedStrings:Ljxl/read/biff/SSTRecord;

.field private sheet:Ljxl/read/biff/SheetImpl;

.field private sheetBof:Ljxl/read/biff/BOFRecord;

.field private startPosition:I

.field private workbook:Ljxl/read/biff/WorkbookParser;

.field private workbookBof:Ljxl/read/biff/BOFRecord;

.field private workbookSettings:Ljxl/WorkbookSettings;

.field private workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Ljxl/read/biff/SheetReader;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;ILjxl/read/biff/SheetImpl;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    .line 274
    iput-object p2, p0, Ljxl/read/biff/SheetReader;->sharedStrings:Ljxl/read/biff/SSTRecord;

    .line 275
    iput-object p3, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 276
    iput-object p4, p0, Ljxl/read/biff/SheetReader;->sheetBof:Ljxl/read/biff/BOFRecord;

    .line 277
    iput-object p5, p0, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    .line 278
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->columnInfosArray:Ljava/util/ArrayList;

    .line 279
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    .line 280
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->hyperlinks:Ljava/util/ArrayList;

    .line 281
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->conditionalFormats:Ljava/util/ArrayList;

    .line 282
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->rowProperties:Ljava/util/ArrayList;

    .line 283
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->charts:Ljava/util/ArrayList;

    .line 284
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    .line 285
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    .line 286
    iput-boolean p6, p0, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    .line 287
    iput-object p7, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    .line 288
    iput p8, p0, Ljxl/read/biff/SheetReader;->startPosition:I

    .line 289
    iput-object p9, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    .line 290
    new-instance p1, Ljxl/SheetSettings;

    invoke-direct {p1, p9}, Ljxl/SheetSettings;-><init>(Ljxl/Sheet;)V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    .line 291
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {p1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    return-void
.end method

.method private addCell(Ljxl/Cell;)V
    .locals 4

    .line 303
    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v0

    iget v1, p0, Ljxl/read/biff/SheetReader;->numRows:I

    if-ge v0, v1, :cond_1

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v0

    iget v1, p0, Ljxl/read/biff/SheetReader;->numCols:I

    if-ge v0, v1, :cond_1

    .line 305
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 308
    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v1

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljxl/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 310
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already contains data"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 313
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v1

    aput-object p1, v0, v1

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private addCellComment(IILjava/lang/String;DD)V
    .locals 14

    move-object v0, p0

    .line 1492
    iget-object v1, v0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    aget-object v1, v1, p2

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 1495
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cell at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not present - adding a blank"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1497
    new-instance v1, Ljxl/read/biff/MulBlankCell;

    const/4 v5, 0x0

    iget-object v6, v0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v7, v0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v2, v1

    move/from16 v3, p2

    move v4, p1

    invoke-direct/range {v2 .. v7}, Ljxl/read/biff/MulBlankCell;-><init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 1502
    new-instance v2, Ljxl/CellFeatures;

    invoke-direct {v2}, Ljxl/CellFeatures;-><init>()V

    move-object v8, v2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    .line 1503
    invoke-virtual/range {v8 .. v13}, Ljxl/CellFeatures;->setReadComment(Ljava/lang/String;DD)V

    .line 1504
    invoke-virtual {v1, v2}, Ljxl/read/biff/MulBlankCell;->setCellFeatures(Ljxl/CellFeatures;)V

    .line 1505
    invoke-direct {p0, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    return-void

    .line 1510
    :cond_0
    instance-of v2, v1, Ljxl/read/biff/CellFeaturesAccessor;

    if-eqz v2, :cond_2

    .line 1512
    check-cast v1, Ljxl/read/biff/CellFeaturesAccessor;

    .line 1513
    invoke-interface {v1}, Ljxl/read/biff/CellFeaturesAccessor;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1517
    new-instance v2, Ljxl/CellFeatures;

    invoke-direct {v2}, Ljxl/CellFeatures;-><init>()V

    .line 1518
    invoke-interface {v1, v2}, Ljxl/read/biff/CellFeaturesAccessor;->setCellFeatures(Ljxl/CellFeatures;)V

    :cond_1
    move-object v3, v2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 1521
    invoke-virtual/range {v3 .. v8}, Ljxl/CellFeatures;->setReadComment(Ljava/lang/String;DD)V

    goto :goto_0

    .line 1525
    :cond_2
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to add comment to cell type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private addCellValidation(IIIILjxl/biff/DataValiditySettingsRecord;)V
    .locals 8

    :goto_0
    if-gt p2, p4, :cond_5

    move v6, p1

    :goto_1
    if-gt v6, p3, :cond_4

    const/4 v0, 0x0

    .line 1552
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    array-length v2, v1

    if-le v2, p2, :cond_0

    aget-object v2, v1, p2

    array-length v2, v2

    if-le v2, v6, :cond_0

    .line 1554
    aget-object v0, v1, p2

    aget-object v0, v0, v6

    :cond_0
    if-nez v0, :cond_1

    .line 1559
    new-instance v7, Ljxl/read/biff/MulBlankCell;

    const/4 v3, 0x0

    iget-object v4, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v5, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v0, v7

    move v1, p2

    move v2, v6

    invoke-direct/range {v0 .. v5}, Ljxl/read/biff/MulBlankCell;-><init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 1564
    new-instance v0, Ljxl/CellFeatures;

    invoke-direct {v0}, Ljxl/CellFeatures;-><init>()V

    .line 1565
    invoke-virtual {v0, p5}, Ljxl/CellFeatures;->setValidationSettings(Ljxl/biff/DataValiditySettingsRecord;)V

    .line 1566
    invoke-virtual {v7, v0}, Ljxl/read/biff/MulBlankCell;->setCellFeatures(Ljxl/CellFeatures;)V

    .line 1567
    invoke-direct {p0, v7}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_2

    .line 1569
    :cond_1
    instance-of v1, v0, Ljxl/read/biff/CellFeaturesAccessor;

    if-eqz v1, :cond_3

    .line 1571
    check-cast v0, Ljxl/read/biff/CellFeaturesAccessor;

    .line 1572
    invoke-interface {v0}, Ljxl/read/biff/CellFeaturesAccessor;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1576
    new-instance v1, Ljxl/CellFeatures;

    invoke-direct {v1}, Ljxl/CellFeatures;-><init>()V

    .line 1577
    invoke-interface {v0, v1}, Ljxl/read/biff/CellFeaturesAccessor;->setCellFeatures(Ljxl/CellFeatures;)V

    .line 1580
    :cond_2
    invoke-virtual {v1, p5}, Ljxl/CellFeatures;->setValidationSettings(Ljxl/biff/DataValiditySettingsRecord;)V

    goto :goto_2

    .line 1584
    :cond_3
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not able to add comment to cell type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, p2}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private addToSharedFormulas(Ljxl/read/biff/BaseSharedFormulaRecord;)Z
    .locals 3

    .line 1228
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    if-nez v2, :cond_0

    .line 1230
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/SharedFormulaRecord;

    .line 1231
    invoke-virtual {v2, p1}, Ljxl/read/biff/SharedFormulaRecord;->add(Ljxl/read/biff/BaseSharedFormulaRecord;)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private handleObjectRecord(Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/MsoDrawingRecord;Ljava/util/HashMap;)V
    .locals 10

    if-nez p2, :cond_0

    .line 1605
    sget-object p1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string p2, "Object record is not associated with a drawing  record - ignoring"

    invoke-virtual {p1, p2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1613
    :try_start_0
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v1, v2, :cond_2

    .line 1615
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_1

    .line 1617
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1620
    :cond_1
    new-instance p3, Ljxl/biff/drawing/Drawing;

    iget-object v4, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v5

    iget-object v6, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v1, p3

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Ljxl/biff/drawing/Drawing;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/Sheet;)V

    .line 1625
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1630
    :cond_2
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_9

    .line 1632
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v1, :cond_3

    .line 1634
    new-instance v1, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v1}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1637
    :cond_3
    new-instance v1, Ljxl/biff/drawing/Comment;

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v2, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v8

    iget-object v9, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v4, v1

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Ljxl/biff/drawing/Comment;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1645
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1646
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq p2, v2, :cond_4

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v2, :cond_5

    .line 1648
    :cond_4
    new-instance p2, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1649
    invoke-virtual {v1, p2}, Ljxl/biff/drawing/Comment;->addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V

    .line 1650
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1652
    :cond_5
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    if-ne p2, v2, :cond_6

    const/4 p2, 0x1

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljxl/common/Assert;->verify(Z)V

    .line 1653
    new-instance p2, Ljxl/biff/drawing/TextObjectRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/TextObjectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1654
    invoke-virtual {v1, p2}, Ljxl/biff/drawing/Comment;->setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V

    .line 1656
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1657
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v2, :cond_7

    const/4 v3, 0x1

    :cond_7
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1658
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1659
    invoke-virtual {v1, p2}, Ljxl/biff/drawing/Comment;->setText(Ljxl/biff/ContinueRecord;)V

    .line 1661
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1662
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v2, :cond_8

    .line 1664
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1665
    invoke-virtual {v1, p2}, Ljxl/biff/drawing/Comment;->setFormatting(Ljxl/biff/ContinueRecord;)V

    .line 1668
    :cond_8
    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/biff/drawing/Comment;->getObjectId()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1673
    :cond_9
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object p3

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->COMBOBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne p3, v1, :cond_b

    .line 1675
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_a

    .line 1677
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1680
    :cond_a
    new-instance p3, Ljxl/biff/drawing/ComboBox;

    iget-object v4, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v5

    iget-object v6, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v1, p3

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Ljxl/biff/drawing/ComboBox;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1685
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1690
    :cond_b
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object p3

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->CHECKBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne p3, v1, :cond_15

    .line 1692
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_c

    .line 1694
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1697
    :cond_c
    new-instance p3, Ljxl/biff/drawing/CheckBox;

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v8

    iget-object v9, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Ljxl/biff/drawing/CheckBox;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1703
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1704
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq p2, v1, :cond_e

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v1, :cond_d

    goto :goto_1

    :cond_d
    const/4 p2, 0x0

    goto :goto_2

    :cond_e
    :goto_1
    const/4 p2, 0x1

    :goto_2
    invoke-static {p2}, Ljxl/common/Assert;->verify(Z)V

    .line 1706
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq p2, v1, :cond_f

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v1, :cond_10

    .line 1708
    :cond_f
    new-instance p2, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1709
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/CheckBox;->addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V

    .line 1710
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1713
    :cond_10
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    if-ne p2, v1, :cond_11

    const/4 p2, 0x1

    goto :goto_3

    :cond_11
    const/4 p2, 0x0

    :goto_3
    invoke-static {p2}, Ljxl/common/Assert;->verify(Z)V

    .line 1714
    new-instance p2, Ljxl/biff/drawing/TextObjectRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/TextObjectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1715
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/CheckBox;->setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V

    .line 1717
    invoke-virtual {p2}, Ljxl/biff/drawing/TextObjectRecord;->getTextLength()I

    move-result p1

    if-nez p1, :cond_12

    return-void

    .line 1722
    :cond_12
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1723
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v1, :cond_13

    const/4 v3, 0x1

    :cond_13
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1724
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1725
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/CheckBox;->setText(Ljxl/biff/ContinueRecord;)V

    .line 1727
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1728
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v1, :cond_14

    .line 1730
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1731
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/CheckBox;->setFormatting(Ljxl/biff/ContinueRecord;)V

    .line 1734
    :cond_14
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1740
    :cond_15
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object p3

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->BUTTON:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne p3, v1, :cond_1e

    .line 1742
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_16

    .line 1744
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1747
    :cond_16
    new-instance p3, Ljxl/biff/drawing/Button;

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v8

    iget-object v9, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Ljxl/biff/drawing/Button;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1753
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1754
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq p2, v1, :cond_18

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v1, :cond_17

    goto :goto_4

    :cond_17
    const/4 p2, 0x0

    goto :goto_5

    :cond_18
    :goto_4
    const/4 p2, 0x1

    :goto_5
    invoke-static {p2}, Ljxl/common/Assert;->verify(Z)V

    .line 1756
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq p2, v1, :cond_19

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v1, :cond_1a

    .line 1759
    :cond_19
    new-instance p2, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1760
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/Button;->addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V

    .line 1761
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1764
    :cond_1a
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    if-ne p2, v1, :cond_1b

    const/4 p2, 0x1

    goto :goto_6

    :cond_1b
    const/4 p2, 0x0

    :goto_6
    invoke-static {p2}, Ljxl/common/Assert;->verify(Z)V

    .line 1765
    new-instance p2, Ljxl/biff/drawing/TextObjectRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/TextObjectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1766
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/Button;->setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V

    .line 1768
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1769
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v1, :cond_1c

    const/4 v3, 0x1

    :cond_1c
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1770
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1771
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/Button;->setText(Ljxl/biff/ContinueRecord;)V

    .line 1773
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1774
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v1, :cond_1d

    .line 1776
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1777
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/Button;->setFormatting(Ljxl/biff/ContinueRecord;)V

    .line 1780
    :cond_1d
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1786
    :cond_1e
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object p3

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->TEXT:Ljxl/biff/drawing/ObjRecord$ObjType;
    :try_end_0
    .catch Ljxl/biff/drawing/DrawingDataException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "\" not supported - omitting"

    const-string v4, " Object on sheet \""

    if-ne p3, v1, :cond_26

    .line 1788
    :try_start_1
    sget-object p3, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v4}, Ljxl/read/biff/SheetImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1793
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_1f

    .line 1795
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1798
    :cond_1f
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {p2}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 1800
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p3}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p3

    .line 1801
    invoke-virtual {p3}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v1

    sget-object v2, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq v1, v2, :cond_21

    invoke-virtual {p3}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v1

    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_20

    goto :goto_7

    :cond_20
    const/4 v1, 0x0

    goto :goto_8

    :cond_21
    :goto_7
    const/4 v1, 0x1

    :goto_8
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 1803
    invoke-virtual {p3}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v1

    sget-object v2, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq v1, v2, :cond_22

    invoke-virtual {p3}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v1

    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_23

    .line 1806
    :cond_22
    new-instance v1, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v1, p3}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1807
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {v1}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    .line 1808
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p3}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p3

    .line 1811
    :cond_23
    invoke-virtual {p3}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p3

    sget-object v1, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    if-ne p3, v1, :cond_24

    const/4 v3, 0x1

    :cond_24
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1813
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {p3}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object p3

    if-eqz p3, :cond_25

    .line 1815
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {p3}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Ljxl/biff/drawing/DrawingGroup;->setDrawingsOmitted(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;)V

    :cond_25
    return-void

    .line 1823
    :cond_26
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object p3

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-eq p3, v1, :cond_29

    .line 1825
    sget-object p3, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v3}, Ljxl/read/biff/SheetImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1830
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_27

    .line 1832
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1835
    :cond_27
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {p2}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 1837
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {p3}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object p3

    if-eqz p3, :cond_28

    .line 1839
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {p3}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Ljxl/biff/drawing/DrawingGroup;->setDrawingsOmitted(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;)V
    :try_end_1
    .catch Ljxl/biff/drawing/DrawingDataException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_28
    return-void

    :catch_0
    move-exception p1

    .line 1848
    sget-object p2, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljxl/biff/drawing/DrawingDataException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "...disabling drawings for the remainder of the workbook"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1850
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v0}, Ljxl/WorkbookSettings;->setDrawingsDisabled(Z)V

    :cond_29
    return-void
.end method

.method private handleOutOfBoundsCells()V
    .locals 7

    .line 1868
    iget v0, p0, Ljxl/read/biff/SheetReader;->numRows:I

    .line 1869
    iget v1, p0, Ljxl/read/biff/SheetReader;->numCols:I

    .line 1872
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1874
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/Cell;

    .line 1875
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1876
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 1885
    :cond_0
    iget v2, p0, Ljxl/read/biff/SheetReader;->numCols:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    const/4 v2, 0x0

    .line 1887
    :goto_1
    iget v4, p0, Ljxl/read/biff/SheetReader;->numRows:I

    if-ge v2, v4, :cond_1

    .line 1889
    new-array v4, v1, [Ljxl/Cell;

    .line 1890
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    aget-object v5, v5, v2

    .line 1891
    array-length v6, v5

    invoke-static {v5, v3, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1892
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    aput-object v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1897
    :cond_1
    iget v2, p0, Ljxl/read/biff/SheetReader;->numRows:I

    if-le v0, v2, :cond_2

    .line 1899
    new-array v2, v0, [[Ljxl/Cell;

    .line 1900
    iget-object v4, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    array-length v5, v4

    invoke-static {v4, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1901
    iput-object v2, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    .line 1904
    iget v3, p0, Ljxl/read/biff/SheetReader;->numRows:I

    :goto_2
    if-ge v3, v0, :cond_2

    .line 1906
    new-array v4, v1, [Ljxl/Cell;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1910
    :cond_2
    iput v0, p0, Ljxl/read/biff/SheetReader;->numRows:I

    .line 1911
    iput v1, p0, Ljxl/read/biff/SheetReader;->numCols:I

    .line 1914
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1916
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/Cell;

    .line 1917
    invoke-direct {p0, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_3

    .line 1920
    :cond_3
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private revertSharedFormula(Ljxl/read/biff/BaseSharedFormulaRecord;)Ljxl/Cell;
    .locals 12

    .line 1250
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->getPos()I

    move-result v0

    .line 1251
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getFilePos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/read/biff/File;->setPos(I)V

    .line 1253
    new-instance v1, Ljxl/read/biff/FormulaRecord;

    invoke-virtual {p1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v4

    iget-object v5, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget-object v6, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v8, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    sget-object v9, Ljxl/read/biff/FormulaRecord;->ignoreSharedFormula:Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;

    iget-object v10, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v11, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v3, v1

    move-object v7, v8

    invoke-direct/range {v3 .. v11}, Ljxl/read/biff/FormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    .line 1264
    :try_start_0
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object p1

    .line 1267
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/read/biff/CellValue;->getType()Ljxl/CellType;

    move-result-object v2

    sget-object v3, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v2, v3, :cond_0

    .line 1269
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljxl/read/biff/NumberFormulaRecord;

    .line 1270
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getXFIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1272
    new-instance p1, Ljxl/read/biff/DateFormulaRecord;

    iget-object v5, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v6, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-boolean v8, p0, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v9, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Ljxl/read/biff/DateFormulaRecord;-><init>(Ljxl/read/biff/NumberFormulaRecord;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;ZLjxl/read/biff/SheetImpl;)V

    .line 1281
    :cond_0
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v2, v0}, Ljxl/read/biff/File;->setPos(I)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1288
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getColumn()I

    move-result v3

    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getRow()I

    move-result v1

    invoke-static {v3, v1}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method final getAutoFilter()Ljxl/biff/AutoFilter;
    .locals 1

    .line 1374
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    return-object v0
.end method

.method final getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;
    .locals 1

    .line 1474
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    return-object v0
.end method

.method final getCells()[[Ljxl/Cell;
    .locals 1

    .line 1324
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    return-object v0
.end method

.method final getCharts()Ljava/util/ArrayList;
    .locals 1

    .line 1384
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->charts:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getColumnBreaks()[I
    .locals 1

    .line 1444
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->columnBreaks:[I

    return-object v0
.end method

.method final getColumnInfosArray()Ljava/util/ArrayList;
    .locals 1

    .line 1344
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->columnInfosArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getConditionalFormats()Ljava/util/ArrayList;
    .locals 1

    .line 1364
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->conditionalFormats:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getDataValidation()Ljxl/biff/DataValidation;
    .locals 1

    .line 1404
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    return-object v0
.end method

.method getDrawingData()Ljxl/biff/drawing/DrawingData;
    .locals 1

    .line 1859
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    return-object v0
.end method

.method final getDrawings()Ljava/util/ArrayList;
    .locals 1

    .line 1394
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getHyperlinks()Ljava/util/ArrayList;
    .locals 1

    .line 1354
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->hyperlinks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxColumnOutlineLevel()I
    .locals 1

    .line 1930
    iget v0, p0, Ljxl/read/biff/SheetReader;->maxColumnOutlineLevel:I

    return v0
.end method

.method public getMaxRowOutlineLevel()I
    .locals 1

    .line 1940
    iget v0, p0, Ljxl/read/biff/SheetReader;->maxRowOutlineLevel:I

    return v0
.end method

.method final getMergedCells()[Ljxl/Range;
    .locals 1

    .line 1414
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    return-object v0
.end method

.method final getNumCols()I
    .locals 1

    .line 1314
    iget v0, p0, Ljxl/read/biff/SheetReader;->numCols:I

    return v0
.end method

.method final getNumRows()I
    .locals 1

    .line 1304
    iget v0, p0, Ljxl/read/biff/SheetReader;->numRows:I

    return v0
.end method

.method final getPLS()Ljxl/read/biff/PLSRecord;
    .locals 1

    .line 1464
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->plsRecord:Ljxl/read/biff/PLSRecord;

    return-object v0
.end method

.method final getRowBreaks()[I
    .locals 1

    .line 1434
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->rowBreaks:[I

    return-object v0
.end method

.method final getRowProperties()Ljava/util/ArrayList;
    .locals 1

    .line 1334
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->rowProperties:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getSettings()Ljxl/SheetSettings;
    .locals 1

    .line 1424
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    return-object v0
.end method

.method final getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;
    .locals 1

    .line 1454
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    return-object v0
.end method

.method final read()V
    .locals 31

    move-object/from16 v9, p0

    .line 340
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget v1, v9, Ljxl/read/biff/SheetReader;->startPosition:I

    invoke-virtual {v0, v1}, Ljxl/read/biff/File;->setPos(I)V

    .line 365
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 368
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    :goto_0
    if-eqz v15, :cond_6a

    .line 375
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v1

    .line 378
    sget-object v2, Ljxl/biff/Type;->UNKNOWN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 380
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v14, "Biff code zero found"

    invoke-virtual {v2, v14}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 383
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getLength()I

    move-result v2

    const/16 v14, 0xa

    if-ne v2, v14, :cond_0

    .line 385
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v14, "Biff code zero found - trying a dimension record."

    invoke-virtual {v2, v14}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 386
    sget-object v2, Ljxl/biff/Type;->DIMENSION:Ljxl/biff/Type;

    invoke-virtual {v0, v2}, Ljxl/read/biff/Record;->setType(Ljxl/biff/Type;)V

    goto :goto_1

    .line 390
    :cond_0
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v14, "Biff code zero found - Ignoring."

    invoke-virtual {v2, v14}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 394
    :cond_1
    :goto_1
    sget-object v2, Ljxl/biff/Type;->DIMENSION:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3

    .line 398
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    new-instance v1, Ljxl/read/biff/DimensionRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/DimensionRecord;-><init>(Ljxl/read/biff/Record;)V

    goto :goto_2

    .line 404
    :cond_2
    new-instance v1, Ljxl/read/biff/DimensionRecord;

    sget-object v2, Ljxl/read/biff/DimensionRecord;->biff7:Ljxl/read/biff/DimensionRecord$Biff7;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/DimensionRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/DimensionRecord$Biff7;)V

    .line 406
    :goto_2
    invoke-virtual {v1}, Ljxl/read/biff/DimensionRecord;->getNumberOfRows()I

    move-result v0

    iput v0, v9, Ljxl/read/biff/SheetReader;->numRows:I

    .line 407
    invoke-virtual {v1}, Ljxl/read/biff/DimensionRecord;->getNumberOfColumns()I

    move-result v0

    iput v0, v9, Ljxl/read/biff/SheetReader;->numCols:I

    .line 408
    iget v1, v9, Ljxl/read/biff/SheetReader;->numRows:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v12

    aput v1, v2, v13

    const-class v0, Ljxl/Cell;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljxl/Cell;

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    goto :goto_3

    .line 410
    :cond_3
    sget-object v2, Ljxl/biff/Type;->LABELSST:Ljxl/biff/Type;

    if-ne v1, v2, :cond_5

    .line 412
    new-instance v1, Ljxl/read/biff/LabelSSTRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v14, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v12, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2, v14, v12}, Ljxl/read/biff/LabelSSTRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 416
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    :cond_4
    :goto_3
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object v2, v10

    move-object v7, v11

    move/from16 v28, v15

    move-object v15, v3

    :goto_4
    move-object v10, v4

    move-object v11, v6

    goto/16 :goto_2a

    .line 418
    :cond_5
    sget-object v2, Ljxl/biff/Type;->RK:Ljxl/biff/Type;

    if-eq v1, v2, :cond_67

    sget-object v2, Ljxl/biff/Type;->RK2:Ljxl/biff/Type;

    if-ne v1, v2, :cond_6

    goto/16 :goto_29

    .line 433
    :cond_6
    sget-object v2, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    if-ne v1, v2, :cond_7

    .line 435
    new-instance v1, Ljxl/read/biff/HyperlinkRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v12, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2, v12}, Ljxl/read/biff/HyperlinkRecord;-><init>(Ljxl/read/biff/Record;Ljxl/Sheet;Ljxl/WorkbookSettings;)V

    .line 436
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 438
    :cond_7
    sget-object v2, Ljxl/biff/Type;->MERGEDCELLS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_9

    .line 440
    new-instance v1, Ljxl/read/biff/MergedCellsRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/MergedCellsRecord;-><init>(Ljxl/read/biff/Record;Ljxl/Sheet;)V

    .line 441
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    if-nez v0, :cond_8

    .line 443
    invoke-virtual {v1}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v0

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    goto :goto_3

    .line 447
    :cond_8
    array-length v0, v0

    invoke-virtual {v1}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v0, v0, [Ljxl/Range;

    .line 449
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    array-length v12, v2

    invoke-static {v2, v13, v0, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    invoke-virtual {v1}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v2

    iget-object v12, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    array-length v12, v12

    invoke-virtual {v1}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v1

    array-length v1, v1

    invoke-static {v2, v13, v0, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    iput-object v0, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    goto :goto_3

    .line 458
    :cond_9
    sget-object v2, Ljxl/biff/Type;->MULRK:Ljxl/biff/Type;

    if-ne v1, v2, :cond_b

    .line 460
    new-instance v1, Ljxl/read/biff/MulRKRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/MulRKRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 463
    invoke-virtual {v1}, Ljxl/read/biff/MulRKRecord;->getNumberOfColumns()I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_4

    .line 467
    invoke-virtual {v1, v2}, Ljxl/read/biff/MulRKRecord;->getXFIndex(I)I

    move-result v12

    .line 469
    new-instance v14, Ljxl/read/biff/NumberValue;

    invoke-virtual {v1}, Ljxl/read/biff/MulRKRecord;->getRow()I

    move-result v18

    invoke-virtual {v1}, Ljxl/read/biff/MulRKRecord;->getFirstColumn()I

    move-result v17

    add-int v19, v17, v2

    invoke-virtual {v1, v2}, Ljxl/read/biff/MulRKRecord;->getRKNumber(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljxl/read/biff/RKHelper;->getDouble(I)D

    move-result-wide v20

    iget-object v13, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    move/from16 v28, v0

    iget-object v0, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v17, v14

    move/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v0

    invoke-direct/range {v17 .. v24}, Ljxl/read/biff/NumberValue;-><init>(IIDILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 478
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, v12}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 480
    new-instance v0, Ljxl/read/biff/DateRecord;

    iget-object v13, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    move-object/from16 v23, v1

    iget-boolean v1, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    move-object/from16 v24, v3

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v17, v0

    move-object/from16 v18, v14

    move/from16 v19, v12

    move-object/from16 v20, v13

    move/from16 v21, v1

    move-object/from16 v22, v3

    invoke-direct/range {v17 .. v22}, Ljxl/read/biff/DateRecord;-><init>(Ljxl/NumberCell;ILjxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;)V

    .line 485
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_6

    :cond_a
    move-object/from16 v23, v1

    move-object/from16 v24, v3

    .line 489
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, v12}, Ljxl/biff/FormattingRecords;->getNumberFormat(I)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljxl/read/biff/NumberValue;->setNumberFormat(Ljava/text/NumberFormat;)V

    .line 490
    invoke-direct {v9, v14}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v23

    move-object/from16 v3, v24

    move/from16 v0, v28

    const/4 v13, 0x0

    goto :goto_5

    :cond_b
    move-object/from16 v24, v3

    .line 494
    sget-object v2, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_d

    .line 496
    new-instance v1, Ljxl/read/biff/NumberRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/NumberRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 498
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1}, Ljxl/read/biff/NumberRecord;->getXFIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 500
    new-instance v0, Ljxl/read/biff/DateRecord;

    invoke-virtual {v1}, Ljxl/read/biff/NumberRecord;->getXFIndex()I

    move-result v19

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-boolean v3, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v12, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v22, v12

    invoke-direct/range {v17 .. v22}, Ljxl/read/biff/DateRecord;-><init>(Ljxl/NumberCell;ILjxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;)V

    .line 504
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_7

    .line 508
    :cond_c
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_7

    .line 511
    :cond_d
    sget-object v2, Ljxl/biff/Type;->BOOLERR:Ljxl/biff/Type;

    if-ne v1, v2, :cond_f

    .line 513
    new-instance v1, Ljxl/read/biff/BooleanRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/BooleanRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 515
    invoke-virtual {v1}, Ljxl/read/biff/BooleanRecord;->isError()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 517
    new-instance v0, Ljxl/read/biff/ErrorRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BooleanRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v1

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v0, v1, v2, v3}, Ljxl/read/biff/ErrorRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 519
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_7

    .line 523
    :cond_e
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_7

    .line 526
    :cond_f
    sget-object v2, Ljxl/biff/Type;->PRINTGRIDLINES:Ljxl/biff/Type;

    if-ne v1, v2, :cond_11

    .line 528
    new-instance v1, Ljxl/read/biff/PrintGridLinesRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PrintGridLinesRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 529
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PrintGridLinesRecord;->getPrintGridLines()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setPrintGridLines(Z)V

    :cond_10
    :goto_7
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object v2, v10

    move-object v7, v11

    move/from16 v28, v15

    move-object/from16 v15, v24

    goto/16 :goto_4

    .line 531
    :cond_11
    sget-object v2, Ljxl/biff/Type;->PRINTHEADERS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_12

    .line 533
    new-instance v1, Ljxl/read/biff/PrintHeadersRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PrintHeadersRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 534
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PrintHeadersRecord;->getPrintHeaders()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setPrintHeaders(Z)V

    goto :goto_7

    .line 536
    :cond_12
    sget-object v2, Ljxl/biff/Type;->WINDOW2:Ljxl/biff/Type;

    if-ne v1, v2, :cond_14

    .line 540
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 542
    new-instance v1, Ljxl/read/biff/Window2Record;

    invoke-direct {v1, v0}, Ljxl/read/biff/Window2Record;-><init>(Ljxl/read/biff/Record;)V

    goto :goto_8

    .line 546
    :cond_13
    new-instance v1, Ljxl/read/biff/Window2Record;

    sget-object v2, Ljxl/read/biff/Window2Record;->biff7:Ljxl/read/biff/Window2Record$Biff7;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/Window2Record;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/Window2Record$Biff7;)V

    :goto_8
    move-object/from16 v25, v1

    .line 549
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual/range {v25 .. v25}, Ljxl/read/biff/Window2Record;->getShowGridLines()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setShowGridLines(Z)V

    .line 550
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual/range {v25 .. v25}, Ljxl/read/biff/Window2Record;->getDisplayZeroValues()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setDisplayZeroValues(Z)V

    .line 551
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setSelected(Z)V

    .line 552
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual/range {v25 .. v25}, Ljxl/read/biff/Window2Record;->isPageBreakPreview()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setPageBreakPreviewMode(Z)V

    goto :goto_9

    .line 554
    :cond_14
    sget-object v2, Ljxl/biff/Type;->PANE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_15

    .line 556
    new-instance v1, Ljxl/read/biff/PaneRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PaneRecord;-><init>(Ljxl/read/biff/Record;)V

    if-eqz v25, :cond_10

    .line 558
    invoke-virtual/range {v25 .. v25}, Ljxl/read/biff/Window2Record;->getFrozen()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 561
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PaneRecord;->getRowsVisible()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setVerticalFreeze(I)V

    .line 562
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PaneRecord;->getColumnsVisible()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setHorizontalFreeze(I)V

    goto :goto_7

    .line 565
    :cond_15
    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_16

    .line 568
    new-instance v1, Ljxl/biff/ContinueRecord;

    invoke-direct {v1, v0}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object/from16 v26, v1

    :goto_9
    move-object v14, v7

    move-object v2, v10

    move-object v7, v11

    move-object/from16 v3, v24

    goto/16 :goto_2c

    .line 570
    :cond_16
    sget-object v2, Ljxl/biff/Type;->NOTE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_1a

    .line 572
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v1

    if-nez v1, :cond_18

    .line 574
    new-instance v1, Ljxl/biff/drawing/NoteRecord;

    invoke-direct {v1, v0}, Ljxl/biff/drawing/NoteRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 577
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/biff/drawing/NoteRecord;->getObjectId()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/drawing/Comment;

    if-nez v0, :cond_17

    .line 582
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cannot find comment for note id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljxl/biff/drawing/NoteRecord;->getObjectId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "...ignoring"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_a

    .line 587
    :cond_17
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/Comment;->setNote(Ljxl/biff/drawing/NoteRecord;)V

    .line 589
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getColumn()I

    move-result v2

    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getRow()I

    move-result v3

    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getWidth()D

    move-result-wide v13

    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getHeight()D

    move-result-wide v17

    move-object/from16 v1, p0

    move/from16 v28, v15

    move-object/from16 v15, v24

    move-object/from16 v29, v10

    move-object v10, v4

    move-object v4, v12

    move-object v12, v5

    move-object/from16 v30, v11

    move-object v11, v6

    move-wide v5, v13

    move-object v14, v7

    move-object v13, v8

    move-wide/from16 v7, v17

    invoke-direct/range {v1 .. v8}, Ljxl/read/biff/SheetReader;->addCellComment(IILjava/lang/String;DD)V

    goto :goto_b

    :cond_18
    :goto_a
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move/from16 v28, v15

    move-object/from16 v15, v24

    move-object v10, v4

    move-object v11, v6

    :cond_19
    :goto_b
    move-object/from16 v2, v29

    move-object/from16 v7, v30

    goto/16 :goto_2a

    :cond_1a
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move/from16 v28, v15

    move-object/from16 v15, v24

    move-object v10, v4

    move-object v11, v6

    .line 599
    sget-object v2, Ljxl/biff/Type;->ARRAY:Ljxl/biff/Type;

    if-ne v1, v2, :cond_1b

    :goto_c
    goto :goto_b

    .line 603
    :cond_1b
    sget-object v2, Ljxl/biff/Type;->PROTECT:Ljxl/biff/Type;

    if-ne v1, v2, :cond_1c

    .line 605
    new-instance v1, Ljxl/read/biff/ProtectRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/ProtectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 606
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/ProtectRecord;->isProtected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setProtected(Z)V

    goto :goto_b

    .line 608
    :cond_1c
    sget-object v2, Ljxl/biff/Type;->SHAREDFORMULA:Ljxl/biff/Type;

    if-ne v1, v2, :cond_1e

    if-nez v14, :cond_1d

    .line 612
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v2, "Shared template formula is null - trying most recent formula template"

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 614
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/SharedFormulaRecord;

    if-eqz v1, :cond_1d

    .line 619
    invoke-virtual {v1}, Ljxl/read/biff/SharedFormulaRecord;->getTemplateFormula()Ljxl/read/biff/BaseSharedFormulaRecord;

    move-result-object v7

    move-object/from16 v19, v7

    goto :goto_d

    :cond_1d
    move-object/from16 v19, v14

    .line 623
    :goto_d
    new-instance v1, Ljxl/read/biff/SharedFormulaRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v17 .. v22}, Ljxl/read/biff/SharedFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/BaseSharedFormulaRecord;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V

    .line 625
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    move-object v3, v15

    move/from16 v15, v28

    move-object/from16 v2, v29

    move-object/from16 v7, v30

    const/4 v14, 0x0

    goto/16 :goto_2c

    .line 628
    :cond_1e
    sget-object v2, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    if-eq v1, v2, :cond_62

    sget-object v2, Ljxl/biff/Type;->FORMULA2:Ljxl/biff/Type;

    if-ne v1, v2, :cond_1f

    goto/16 :goto_26

    .line 695
    :cond_1f
    sget-object v2, Ljxl/biff/Type;->LABEL:Ljxl/biff/Type;

    if-ne v1, v2, :cond_21

    .line 699
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 701
    new-instance v1, Ljxl/read/biff/LabelRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2, v3, v4}, Ljxl/read/biff/LabelRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    goto :goto_e

    .line 705
    :cond_20
    new-instance v1, Ljxl/read/biff/LabelRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v22, Ljxl/read/biff/LabelRecord;->biff7:Ljxl/read/biff/LabelRecord$Biff7;

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-direct/range {v17 .. v22}, Ljxl/read/biff/LabelRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;Ljxl/read/biff/LabelRecord$Biff7;)V

    .line 708
    :goto_e
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto/16 :goto_b

    .line 710
    :cond_21
    sget-object v2, Ljxl/biff/Type;->RSTRING:Ljxl/biff/Type;

    if-ne v1, v2, :cond_22

    .line 715
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 716
    new-instance v1, Ljxl/read/biff/RStringRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v22, Ljxl/read/biff/RStringRecord;->biff7:Ljxl/read/biff/RStringRecord$Biff7;

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-direct/range {v17 .. v22}, Ljxl/read/biff/RStringRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;Ljxl/read/biff/RStringRecord$Biff7;)V

    .line 719
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto/16 :goto_b

    .line 721
    :cond_22
    sget-object v2, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    if-ne v1, v2, :cond_23

    goto/16 :goto_c

    .line 725
    :cond_23
    sget-object v2, Ljxl/biff/Type;->PASSWORD:Ljxl/biff/Type;

    if-ne v1, v2, :cond_24

    .line 727
    new-instance v1, Ljxl/read/biff/PasswordRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PasswordRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 728
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PasswordRecord;->getPasswordHash()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setPasswordHash(I)V

    goto/16 :goto_b

    .line 730
    :cond_24
    sget-object v2, Ljxl/biff/Type;->ROW:Ljxl/biff/Type;

    if-ne v1, v2, :cond_26

    .line 732
    new-instance v1, Ljxl/read/biff/RowRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/RowRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 735
    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->isDefaultHeight()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->matchesDefaultFontHeight()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->hasDefaultFormat()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->getOutlineLevel()I

    move-result v0

    if-eqz v0, :cond_19

    .line 741
    :cond_25
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->rowProperties:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 744
    :cond_26
    sget-object v2, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    if-ne v1, v2, :cond_27

    .line 746
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getIgnoreBlanks()Z

    move-result v1

    if-nez v1, :cond_19

    .line 748
    new-instance v1, Ljxl/read/biff/BlankCell;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/BlankCell;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 749
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto/16 :goto_b

    .line 752
    :cond_27
    sget-object v2, Ljxl/biff/Type;->MULBLANK:Ljxl/biff/Type;

    if-ne v1, v2, :cond_28

    .line 754
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getIgnoreBlanks()Z

    move-result v1

    if-nez v1, :cond_19

    .line 756
    new-instance v1, Ljxl/read/biff/MulBlankRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/MulBlankRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 759
    invoke-virtual {v1}, Ljxl/read/biff/MulBlankRecord;->getNumberOfColumns()I

    move-result v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_19

    .line 763
    invoke-virtual {v1, v2}, Ljxl/read/biff/MulBlankRecord;->getXFIndex(I)I

    move-result v6

    .line 765
    new-instance v8, Ljxl/read/biff/MulBlankCell;

    invoke-virtual {v1}, Ljxl/read/biff/MulBlankRecord;->getRow()I

    move-result v4

    invoke-virtual {v1}, Ljxl/read/biff/MulBlankRecord;->getFirstColumn()I

    move-result v3

    add-int v5, v3, v2

    iget-object v7, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v17, v3

    move-object v3, v8

    move/from16 v18, v0

    move-object v0, v8

    move-object/from16 v8, v17

    invoke-direct/range {v3 .. v8}, Ljxl/read/biff/MulBlankCell;-><init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 772
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v18

    goto :goto_f

    .line 776
    :cond_28
    sget-object v2, Ljxl/biff/Type;->SCL:Ljxl/biff/Type;

    if-ne v1, v2, :cond_29

    .line 778
    new-instance v1, Ljxl/read/biff/SCLRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/SCLRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 779
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SCLRecord;->getZoomFactor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setZoomFactor(I)V

    goto/16 :goto_b

    .line 781
    :cond_29
    sget-object v2, Ljxl/biff/Type;->COLINFO:Ljxl/biff/Type;

    if-ne v1, v2, :cond_2a

    .line 783
    new-instance v1, Ljxl/read/biff/ColumnInfoRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/ColumnInfoRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 784
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 786
    :cond_2a
    sget-object v2, Ljxl/biff/Type;->HEADER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_2c

    .line 789
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 791
    new-instance v1, Ljxl/read/biff/HeaderRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/HeaderRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    goto :goto_10

    .line 795
    :cond_2b
    new-instance v1, Ljxl/read/biff/HeaderRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v3, Ljxl/read/biff/HeaderRecord;->biff7:Ljxl/read/biff/HeaderRecord$Biff7;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/HeaderRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/HeaderRecord$Biff7;)V

    .line 798
    :goto_10
    new-instance v0, Ljxl/HeaderFooter;

    invoke-virtual {v1}, Ljxl/read/biff/HeaderRecord;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/HeaderFooter;-><init>(Ljava/lang/String;)V

    .line 799
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1, v0}, Ljxl/SheetSettings;->setHeader(Ljxl/HeaderFooter;)V

    goto/16 :goto_b

    .line 801
    :cond_2c
    sget-object v2, Ljxl/biff/Type;->FOOTER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_2e

    .line 804
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 806
    new-instance v1, Ljxl/read/biff/FooterRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/FooterRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    goto :goto_11

    .line 810
    :cond_2d
    new-instance v1, Ljxl/read/biff/FooterRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v3, Ljxl/read/biff/FooterRecord;->biff7:Ljxl/read/biff/FooterRecord$Biff7;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/FooterRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/FooterRecord$Biff7;)V

    .line 813
    :goto_11
    new-instance v0, Ljxl/HeaderFooter;

    invoke-virtual {v1}, Ljxl/read/biff/FooterRecord;->getFooter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/HeaderFooter;-><init>(Ljava/lang/String;)V

    .line 814
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1, v0}, Ljxl/SheetSettings;->setFooter(Ljxl/HeaderFooter;)V

    goto/16 :goto_b

    .line 816
    :cond_2e
    sget-object v2, Ljxl/biff/Type;->SETUP:Ljxl/biff/Type;

    if-ne v1, v2, :cond_31

    .line 818
    new-instance v1, Ljxl/read/biff/SetupRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/SetupRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 822
    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getInitialized()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 824
    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 826
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    sget-object v2, Ljxl/format/PageOrientation;->PORTRAIT:Ljxl/format/PageOrientation;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    goto :goto_12

    .line 830
    :cond_2f
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    sget-object v2, Ljxl/format/PageOrientation;->LANDSCAPE:Ljxl/format/PageOrientation;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    .line 832
    :goto_12
    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->isRightDown()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 834
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    sget-object v2, Ljxl/format/PageOrder;->RIGHT_THEN_DOWN:Ljxl/format/PageOrder;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPageOrder(Ljxl/format/PageOrder;)V

    goto :goto_13

    .line 838
    :cond_30
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    sget-object v2, Ljxl/format/PageOrder;->DOWN_THEN_RIGHT:Ljxl/format/PageOrder;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPageOrder(Ljxl/format/PageOrder;)V

    .line 840
    :goto_13
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getPaperSize()I

    move-result v2

    invoke-static {v2}, Ljxl/format/PaperSize;->getPaperSize(I)Ljxl/format/PaperSize;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPaperSize(Ljxl/format/PaperSize;)V

    .line 841
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getHeaderMargin()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljxl/SheetSettings;->setHeaderMargin(D)V

    .line 842
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getFooterMargin()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljxl/SheetSettings;->setFooterMargin(D)V

    .line 843
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getScaleFactor()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setScaleFactor(I)V

    .line 844
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getPageStart()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPageStart(I)V

    .line 845
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getFitWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setFitWidth(I)V

    .line 846
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getFitHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setFitHeight(I)V

    .line 847
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getHorizontalPrintResolution()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setHorizontalPrintResolution(I)V

    .line 849
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getVerticalPrintResolution()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setVerticalPrintResolution(I)V

    .line 850
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getCopies()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setCopies(I)V

    .line 852
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    if-eqz v0, :cond_19

    .line 854
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/biff/WorkspaceInformationRecord;->getFitToPages()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljxl/SheetSettings;->setFitToPages(Z)V

    goto/16 :goto_b

    .line 858
    :cond_31
    sget-object v2, Ljxl/biff/Type;->WSBOOL:Ljxl/biff/Type;

    if-ne v1, v2, :cond_32

    .line 860
    new-instance v1, Ljxl/biff/WorkspaceInformationRecord;

    invoke-direct {v1, v0}, Ljxl/biff/WorkspaceInformationRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    goto/16 :goto_b

    .line 862
    :cond_32
    sget-object v2, Ljxl/biff/Type;->DEFCOLWIDTH:Ljxl/biff/Type;

    if-ne v1, v2, :cond_33

    .line 864
    new-instance v1, Ljxl/read/biff/DefaultColumnWidthRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/DefaultColumnWidthRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 865
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/DefaultColumnWidthRecord;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setDefaultColumnWidth(I)V

    goto/16 :goto_b

    .line 867
    :cond_33
    sget-object v2, Ljxl/biff/Type;->DEFAULTROWHEIGHT:Ljxl/biff/Type;

    if-ne v1, v2, :cond_34

    .line 869
    new-instance v1, Ljxl/read/biff/DefaultRowHeightRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/DefaultRowHeightRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 870
    invoke-virtual {v1}, Ljxl/read/biff/DefaultRowHeightRecord;->getHeight()I

    move-result v0

    if-eqz v0, :cond_19

    .line 872
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/DefaultRowHeightRecord;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setDefaultRowHeight(I)V

    goto/16 :goto_b

    .line 875
    :cond_34
    sget-object v2, Ljxl/biff/Type;->CONDFMT:Ljxl/biff/Type;

    if-ne v1, v2, :cond_35

    .line 877
    new-instance v1, Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-direct {v1, v0}, Ljxl/biff/ConditionalFormatRangeRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 879
    new-instance v6, Ljxl/biff/ConditionalFormat;

    invoke-direct {v6, v1}, Ljxl/biff/ConditionalFormat;-><init>(Ljxl/biff/ConditionalFormatRangeRecord;)V

    .line 880
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v10

    :goto_14
    move-object v5, v12

    move-object v8, v13

    move-object v3, v15

    :goto_15
    move/from16 v15, v28

    move-object/from16 v2, v29

    move-object/from16 v7, v30

    goto/16 :goto_2c

    .line 882
    :cond_35
    sget-object v2, Ljxl/biff/Type;->CF:Ljxl/biff/Type;

    if-ne v1, v2, :cond_36

    .line 884
    new-instance v1, Ljxl/biff/ConditionalFormatRecord;

    invoke-direct {v1, v0}, Ljxl/biff/ConditionalFormatRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 885
    invoke-virtual {v11, v1}, Ljxl/biff/ConditionalFormat;->addCondition(Ljxl/biff/ConditionalFormatRecord;)V

    goto/16 :goto_b

    .line 887
    :cond_36
    sget-object v2, Ljxl/biff/Type;->FILTERMODE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_37

    .line 889
    new-instance v4, Ljxl/biff/FilterModeRecord;

    invoke-direct {v4, v0}, Ljxl/biff/FilterModeRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v6, v11

    goto :goto_14

    .line 891
    :cond_37
    sget-object v2, Ljxl/biff/Type;->AUTOFILTERINFO:Ljxl/biff/Type;

    if-ne v1, v2, :cond_38

    .line 893
    new-instance v3, Ljxl/biff/AutoFilterInfoRecord;

    invoke-direct {v3, v0}, Ljxl/biff/AutoFilterInfoRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v4, v10

    :goto_16
    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    goto :goto_15

    .line 895
    :cond_38
    sget-object v2, Ljxl/biff/Type;->AUTOFILTER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3a

    .line 897
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getAutoFilterDisabled()Z

    move-result v1

    if-nez v1, :cond_19

    .line 899
    new-instance v1, Ljxl/biff/AutoFilterRecord;

    invoke-direct {v1, v0}, Ljxl/biff/AutoFilterRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 901
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    if-nez v0, :cond_39

    .line 903
    new-instance v0, Ljxl/biff/AutoFilter;

    invoke-direct {v0, v10, v15}, Ljxl/biff/AutoFilter;-><init>(Ljxl/biff/FilterModeRecord;Ljxl/biff/AutoFilterInfoRecord;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_17

    :cond_39
    move-object v4, v10

    move-object v3, v15

    .line 908
    :goto_17
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    invoke-virtual {v0, v1}, Ljxl/biff/AutoFilter;->add(Ljxl/biff/AutoFilterRecord;)V

    goto :goto_16

    .line 911
    :cond_3a
    sget-object v2, Ljxl/biff/Type;->LEFTMARGIN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3b

    .line 913
    new-instance v1, Ljxl/read/biff/LeftMarginRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/LeftMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 914
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/SheetSettings;->setLeftMargin(D)V

    goto/16 :goto_b

    .line 916
    :cond_3b
    sget-object v2, Ljxl/biff/Type;->RIGHTMARGIN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3c

    .line 918
    new-instance v1, Ljxl/read/biff/RightMarginRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/RightMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 919
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/SheetSettings;->setRightMargin(D)V

    goto/16 :goto_b

    .line 921
    :cond_3c
    sget-object v2, Ljxl/biff/Type;->TOPMARGIN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3d

    .line 923
    new-instance v1, Ljxl/read/biff/TopMarginRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/TopMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 924
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/SheetSettings;->setTopMargin(D)V

    goto/16 :goto_b

    .line 926
    :cond_3d
    sget-object v2, Ljxl/biff/Type;->BOTTOMMARGIN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3e

    .line 928
    new-instance v1, Ljxl/read/biff/BottomMarginRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/BottomMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 929
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/SheetSettings;->setBottomMargin(D)V

    goto/16 :goto_b

    .line 931
    :cond_3e
    sget-object v2, Ljxl/biff/Type;->HORIZONTALPAGEBREAKS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_40

    .line 935
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 937
    new-instance v1, Ljxl/read/biff/HorizontalPageBreaksRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/HorizontalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;)V

    goto :goto_18

    .line 941
    :cond_3f
    new-instance v1, Ljxl/read/biff/HorizontalPageBreaksRecord;

    sget-object v2, Ljxl/read/biff/HorizontalPageBreaksRecord;->biff7:Ljxl/read/biff/HorizontalPageBreaksRecord$Biff7;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/HorizontalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/HorizontalPageBreaksRecord$Biff7;)V

    .line 944
    :goto_18
    invoke-virtual {v1}, Ljxl/read/biff/HorizontalPageBreaksRecord;->getRowBreaks()[I

    move-result-object v0

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->rowBreaks:[I

    goto/16 :goto_b

    .line 946
    :cond_40
    sget-object v2, Ljxl/biff/Type;->VERTICALPAGEBREAKS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_42

    .line 950
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 952
    new-instance v1, Ljxl/read/biff/VerticalPageBreaksRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/VerticalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;)V

    goto :goto_19

    .line 956
    :cond_41
    new-instance v1, Ljxl/read/biff/VerticalPageBreaksRecord;

    sget-object v2, Ljxl/read/biff/VerticalPageBreaksRecord;->biff7:Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/VerticalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;)V

    .line 959
    :goto_19
    invoke-virtual {v1}, Ljxl/read/biff/VerticalPageBreaksRecord;->getColumnBreaks()[I

    move-result-object v0

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->columnBreaks:[I

    goto/16 :goto_b

    .line 961
    :cond_42
    sget-object v2, Ljxl/biff/Type;->PLS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_43

    .line 963
    new-instance v1, Ljxl/read/biff/PLSRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PLSRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->plsRecord:Ljxl/read/biff/PLSRecord;

    .line 966
    :goto_1a
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v1}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v1

    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_19

    .line 968
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/read/biff/Record;->addContinueRecord(Ljxl/read/biff/Record;)V

    goto :goto_1a

    .line 971
    :cond_43
    sget-object v2, Ljxl/biff/Type;->DVAL:Ljxl/biff/Type;

    if-ne v1, v2, :cond_4a

    .line 973
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getCellValidationDisabled()Z

    move-result v1

    if-nez v1, :cond_48

    .line 975
    new-instance v1, Ljxl/biff/DataValidityListRecord;

    invoke-direct {v1, v0}, Ljxl/biff/DataValidityListRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 976
    invoke-virtual {v1}, Ljxl/biff/DataValidityListRecord;->getObjectId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_46

    if-eqz v13, :cond_45

    if-nez v12, :cond_45

    .line 981
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v0, :cond_44

    .line 983
    new-instance v0, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v0}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 986
    :cond_44
    new-instance v0, Ljxl/biff/drawing/Drawing2;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v3}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v3

    invoke-direct {v0, v13, v2, v3}, Ljxl/biff/drawing/Drawing2;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;)V

    .line 988
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    new-instance v0, Ljxl/biff/DataValidation;

    invoke-direct {v0, v1}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    move-object/from16 v7, v30

    const/4 v8, 0x0

    goto :goto_1c

    .line 996
    :cond_45
    new-instance v0, Ljxl/biff/DataValidation;

    invoke-direct {v0, v1}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    move-object/from16 v7, v30

    goto :goto_1b

    .line 999
    :cond_46
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/biff/DataValidityListRecord;->getObjectId()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v7, v30

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1001
    new-instance v0, Ljxl/biff/DataValidation;

    invoke-direct {v0, v1}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    goto :goto_1b

    .line 1005
    :cond_47
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "object id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljxl/biff/DataValidityListRecord;->getObjectId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " referenced "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by data validity list record not found - ignoring"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_1b
    move-object v8, v13

    :goto_1c
    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v3, v15

    move/from16 v15, v28

    move-object/from16 v2, v29

    goto/16 :goto_2c

    :cond_48
    move-object/from16 v7, v30

    :cond_49
    :goto_1d
    move-object/from16 v2, v29

    goto/16 :goto_2a

    :cond_4a
    move-object/from16 v7, v30

    .line 1010
    sget-object v2, Ljxl/biff/Type;->HCENTER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_4b

    .line 1012
    new-instance v1, Ljxl/read/biff/CentreRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/CentreRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1013
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/CentreRecord;->isCentre()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setHorizontalCentre(Z)V

    goto :goto_1d

    .line 1015
    :cond_4b
    sget-object v2, Ljxl/biff/Type;->VCENTER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_4c

    .line 1017
    new-instance v1, Ljxl/read/biff/CentreRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/CentreRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1018
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/CentreRecord;->isCentre()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setVerticalCentre(Z)V

    goto :goto_1d

    .line 1020
    :cond_4c
    sget-object v2, Ljxl/biff/Type;->DV:Ljxl/biff/Type;

    if-ne v1, v2, :cond_4e

    .line 1022
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getCellValidationDisabled()Z

    move-result v1

    if-nez v1, :cond_49

    .line 1024
    new-instance v6, Ljxl/biff/DataValiditySettingsRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v2

    invoke-direct {v6, v0, v1, v1, v2}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 1029
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_4d

    .line 1031
    invoke-virtual {v0, v6}, Ljxl/biff/DataValidation;->add(Ljxl/biff/DataValiditySettingsRecord;)V

    .line 1032
    invoke-virtual {v6}, Ljxl/biff/DataValiditySettingsRecord;->getFirstColumn()I

    move-result v2

    invoke-virtual {v6}, Ljxl/biff/DataValiditySettingsRecord;->getFirstRow()I

    move-result v3

    invoke-virtual {v6}, Ljxl/biff/DataValiditySettingsRecord;->getLastColumn()I

    move-result v4

    invoke-virtual {v6}, Ljxl/biff/DataValiditySettingsRecord;->getLastRow()I

    move-result v5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Ljxl/read/biff/SheetReader;->addCellValidation(IIIILjxl/biff/DataValiditySettingsRecord;)V

    goto :goto_1d

    .line 1040
    :cond_4d
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v1, "cannot add data validity settings"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_1d

    .line 1044
    :cond_4e
    sget-object v2, Ljxl/biff/Type;->OBJ:Ljxl/biff/Type;

    if-ne v1, v2, :cond_52

    .line 1046
    new-instance v5, Ljxl/biff/drawing/ObjRecord;

    invoke-direct {v5, v0}, Ljxl/biff/drawing/ObjRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1048
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v0

    if-nez v0, :cond_50

    if-nez v13, :cond_4f

    if-eqz v26, :cond_4f

    .line 1055
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v1, "Cannot find drawing record - using continue record"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1056
    new-instance v8, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual/range {v26 .. v26}, Ljxl/biff/ContinueRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-direct {v8, v0}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object/from16 v2, v29

    const/16 v26, 0x0

    goto :goto_1e

    :cond_4f
    move-object v8, v13

    move-object/from16 v2, v29

    .line 1059
    :goto_1e
    invoke-direct {v9, v5, v8, v2}, Ljxl/read/biff/SheetReader;->handleObjectRecord(Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/MsoDrawingRecord;Ljava/util/HashMap;)V

    .line 1060
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljxl/biff/drawing/ObjRecord;->getObjectId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_50
    move-object/from16 v2, v29

    move-object v8, v13

    .line 1064
    :goto_1f
    invoke-virtual {v5}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v0

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-eq v0, v1, :cond_51

    move-object v4, v10

    move-object v6, v11

    move-object v3, v15

    move/from16 v15, v28

    const/4 v5, 0x0

    const/4 v8, 0x0

    goto/16 :goto_2c

    :cond_51
    :goto_20
    move-object v4, v10

    move-object v6, v11

    goto/16 :goto_2b

    :cond_52
    move-object/from16 v2, v29

    .line 1070
    sget-object v3, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-ne v1, v3, :cond_55

    .line 1072
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v1

    if-nez v1, :cond_69

    if-eqz v13, :cond_53

    .line 1078
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {v13}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    .line 1080
    :cond_53
    new-instance v8, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v8, v0}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    if-eqz v27, :cond_54

    .line 1084
    invoke-virtual {v8}, Ljxl/biff/drawing/MsoDrawingRecord;->setFirst()V

    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v3, v15

    move/from16 v15, v28

    const/16 v27, 0x0

    goto/16 :goto_2c

    :cond_54
    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    goto/16 :goto_2b

    .line 1089
    :cond_55
    sget-object v3, Ljxl/biff/Type;->BUTTONPROPERTYSET:Ljxl/biff/Type;

    if-ne v1, v3, :cond_56

    .line 1091
    new-instance v1, Ljxl/read/biff/ButtonPropertySetRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/ButtonPropertySetRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    goto/16 :goto_2a

    .line 1093
    :cond_56
    sget-object v3, Ljxl/biff/Type;->CALCMODE:Ljxl/biff/Type;

    if-ne v1, v3, :cond_57

    .line 1095
    new-instance v1, Ljxl/read/biff/CalcModeRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/CalcModeRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1096
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/CalcModeRecord;->isAutomatic()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setAutomaticFormulaCalculation(Z)V

    goto/16 :goto_2a

    .line 1098
    :cond_57
    sget-object v3, Ljxl/biff/Type;->SAVERECALC:Ljxl/biff/Type;

    if-ne v1, v3, :cond_58

    .line 1100
    new-instance v1, Ljxl/read/biff/SaveRecalcRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/SaveRecalcRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1101
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SaveRecalcRecord;->getRecalculateOnSave()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setRecalculateFormulasBeforeSave(Z)V

    goto/16 :goto_2a

    .line 1103
    :cond_58
    sget-object v3, Ljxl/biff/Type;->GUTS:Ljxl/biff/Type;

    if-ne v1, v3, :cond_5b

    .line 1105
    new-instance v1, Ljxl/read/biff/GuttersRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/GuttersRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1106
    invoke-virtual {v1}, Ljxl/read/biff/GuttersRecord;->getRowOutlineLevel()I

    move-result v0

    if-lez v0, :cond_59

    invoke-virtual {v1}, Ljxl/read/biff/GuttersRecord;->getRowOutlineLevel()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    goto :goto_21

    :cond_59
    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_21
    iput v0, v9, Ljxl/read/biff/SheetReader;->maxRowOutlineLevel:I

    .line 1108
    invoke-virtual {v1}, Ljxl/read/biff/GuttersRecord;->getColumnOutlineLevel()I

    move-result v0

    if-lez v0, :cond_5a

    invoke-virtual {v1}, Ljxl/read/biff/GuttersRecord;->getRowOutlineLevel()I

    move-result v0

    sub-int/2addr v0, v3

    goto :goto_22

    :cond_5a
    const/4 v0, 0x0

    :goto_22
    iput v0, v9, Ljxl/read/biff/SheetReader;->maxColumnOutlineLevel:I

    goto/16 :goto_2a

    .line 1111
    :cond_5b
    sget-object v3, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    if-ne v1, v3, :cond_61

    .line 1113
    new-instance v1, Ljxl/read/biff/BOFRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/BOFRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1114
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isWorksheet()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1116
    iget-object v3, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v3}, Ljxl/read/biff/File;->getPos()I

    move-result v3

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getLength()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/lit8 v21, v3, -0x4

    .line 1120
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    .line 1121
    :goto_23
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getCode()I

    move-result v0

    sget-object v3, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    iget v3, v3, Ljxl/biff/Type;->value:I

    if-eq v0, v3, :cond_5c

    .line 1123
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    goto :goto_23

    .line 1126
    :cond_5c
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1128
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1130
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v1, "only biff8 charts are supported"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_24

    .line 1134
    :cond_5d
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v0, :cond_5e

    .line 1136
    new-instance v0, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v0}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1139
    :cond_5e
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1141
    new-instance v0, Ljxl/biff/drawing/Chart;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v3}, Ljxl/read/biff/File;->getPos()I

    move-result v22

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget-object v5, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    move-object/from16 v19, v12

    move-object/from16 v20, v1

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    invoke-direct/range {v17 .. v24}, Ljxl/biff/drawing/Chart;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;IILjxl/read/biff/File;Ljxl/WorkbookSettings;)V

    .line 1144
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->charts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 1148
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/biff/drawing/DrawingGroup;->add(Ljxl/biff/drawing/Chart;)V

    :cond_5f
    :goto_24
    const/4 v5, 0x0

    const/4 v8, 0x0

    goto :goto_25

    :cond_60
    move-object v5, v12

    move-object v8, v13

    .line 1160
    :goto_25
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->sheetBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v0

    if-eqz v0, :cond_51

    const/16 v28, 0x0

    goto/16 :goto_20

    :cond_61
    const/4 v4, 0x1

    .line 1165
    sget-object v0, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    if-ne v1, v0, :cond_69

    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    move-object v3, v15

    const/4 v15, 0x0

    goto/16 :goto_2c

    :cond_62
    :goto_26
    move-object/from16 v2, v29

    move-object/from16 v7, v30

    const/4 v4, 0x1

    .line 630
    new-instance v1, Ljxl/read/biff/FormulaRecord;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget-object v5, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v6, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-object v8, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v4

    invoke-direct/range {v17 .. v24}, Ljxl/read/biff/FormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    .line 638
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->isShared()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 641
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/BaseSharedFormulaRecord;

    .line 644
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addToSharedFormulas(Ljxl/read/biff/BaseSharedFormulaRecord;)Z

    move-result v16

    if-eqz v16, :cond_63

    move-object v0, v14

    :cond_63
    if-nez v16, :cond_66

    if-eqz v14, :cond_66

    .line 660
    invoke-direct {v9, v14}, Ljxl/read/biff/SheetReader;->revertSharedFormula(Ljxl/read/biff/BaseSharedFormulaRecord;)Ljxl/Cell;

    move-result-object v1

    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto/16 :goto_28

    .line 665
    :cond_64
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v3

    .line 669
    :try_start_0
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/CellValue;->getType()Ljxl/CellType;

    move-result-object v0

    sget-object v4, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v0, v4, :cond_65

    .line 671
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljxl/read/biff/NumberFormulaRecord;

    .line 672
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual/range {v18 .. v18}, Ljxl/read/biff/NumberFormulaRecord;->getXFIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 674
    new-instance v0, Ljxl/read/biff/DateFormulaRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-object v5, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-boolean v6, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v8, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v17, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v8

    invoke-direct/range {v17 .. v23}, Ljxl/read/biff/DateFormulaRecord;-><init>(Ljxl/read/biff/NumberFormulaRecord;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;ZLjxl/read/biff/SheetImpl;)V

    move-object v3, v0

    .line 683
    :cond_65
    invoke-direct {v9, v3}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_27

    :catch_0
    move-exception v0

    .line 689
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v5

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v3

    invoke-static {v5, v3}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_27
    move-object v0, v14

    :cond_66
    :goto_28
    move-object v14, v0

    goto :goto_2a

    :cond_67
    :goto_29
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object v2, v10

    move-object v7, v11

    move/from16 v28, v15

    move-object v15, v3

    move-object v10, v4

    move-object v11, v6

    .line 420
    new-instance v1, Ljxl/read/biff/RKRecord;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v3, v4}, Ljxl/read/biff/RKRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 422
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1}, Ljxl/read/biff/RKRecord;->getXFIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 424
    new-instance v0, Ljxl/read/biff/DateRecord;

    invoke-virtual {v1}, Ljxl/read/biff/RKRecord;->getXFIndex()I

    move-result v19

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-boolean v4, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v5, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v22, v5

    invoke-direct/range {v17 .. v22}, Ljxl/read/biff/DateRecord;-><init>(Ljxl/NumberCell;ILjxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;)V

    .line 426
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_2a

    .line 430
    :cond_68
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    :cond_69
    :goto_2a
    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    :goto_2b
    move-object v3, v15

    move/from16 v15, v28

    :goto_2c
    move-object v10, v2

    move-object v11, v7

    move-object v7, v14

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_6a
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object v2, v10

    .line 1172
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->restorePos()V

    .line 1175
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6b

    .line 1177
    invoke-direct/range {p0 .. p0}, Ljxl/read/biff/SheetReader;->handleOutOfBoundsCells()V

    .line 1181
    :cond_6b
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1183
    :cond_6c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/SharedFormulaRecord;

    .line 1187
    iget-object v3, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-boolean v4, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    invoke-virtual {v1, v3, v4}, Ljxl/read/biff/SharedFormulaRecord;->getFormulas(Ljxl/biff/FormattingRecords;Z)[Ljxl/Cell;

    move-result-object v1

    const/4 v3, 0x0

    .line 1189
    :goto_2d
    array-length v4, v1

    if-ge v3, v4, :cond_6c

    .line 1191
    aget-object v4, v1, v3

    invoke-direct {v9, v4}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_6d
    if-nez v16, :cond_6e

    if-eqz v14, :cond_6e

    .line 1199
    invoke-direct {v9, v14}, Ljxl/read/biff/SheetReader;->revertSharedFormula(Ljxl/read/biff/BaseSharedFormulaRecord;)Ljxl/Cell;

    move-result-object v0

    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    :cond_6e
    if-eqz v13, :cond_6f

    .line 1204
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 1206
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v0

    invoke-virtual {v0, v13, v12}, Ljxl/biff/drawing/DrawingGroup;->setDrawingsOmitted(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;)V

    .line 1210
    :cond_6f
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    .line 1212
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v1, "Not all comments have a corresponding Note record"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_70
    return-void
.end method
