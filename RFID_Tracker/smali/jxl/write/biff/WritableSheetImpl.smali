.class Ljxl/write/biff/WritableSheetImpl;
.super Ljava/lang/Object;
.source "WritableSheetImpl.java"

# interfaces
.implements Ljxl/write/WritableSheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/WritableSheetImpl$ColumnInfoComparator;
    }
.end annotation


# static fields
.field private static final illegalSheetNameCharacters:[C

.field private static final imageTypes:[Ljava/lang/String;

.field private static logger:Ljxl/common/Logger; = null

.field private static final maxSheetNameLength:I = 0x1f

.field private static final numRowsPerSheet:I = 0x10000

.field private static final rowGrowSize:I = 0xa


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private autosizedColumns:Ljava/util/TreeSet;

.field private buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

.field private chartOnly:Z

.field private columnBreaks:Ljava/util/ArrayList;

.field private columnFormats:Ljava/util/TreeSet;

.field private comboBox:Ljxl/biff/drawing/ComboBox;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawings:Ljava/util/ArrayList;

.field private drawingsModified:Z

.field private formatRecords:Ljxl/biff/FormattingRecords;

.field private hyperlinks:Ljava/util/ArrayList;

.field private images:Ljava/util/ArrayList;

.field private maxColumnOutlineLevel:I

.field private maxRowOutlineLevel:I

.field private mergedCells:Ljxl/write/biff/MergedCells;

.field private name:Ljava/lang/String;

.field private numColumns:I

.field private numRows:I

.field private outputFile:Ljxl/write/biff/File;

.field private plsRecord:Ljxl/write/biff/PLSRecord;

.field private rowBreaks:Ljava/util/ArrayList;

.field private rows:[Ljxl/write/biff/RowRecord;

.field private settings:Ljxl/SheetSettings;

.field private sharedStrings:Ljxl/write/biff/SharedStrings;

.field private sheetWriter:Ljxl/write/biff/SheetWriter;

.field private validatedCells:Ljava/util/ArrayList;

.field private workbook:Ljxl/write/biff/WritableWorkbookImpl;

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const-class v0, Ljxl/write/biff/WritableSheetImpl;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 263
    fill-array-data v0, :array_0

    sput-object v0, Ljxl/write/biff/WritableSheetImpl;->illegalSheetNameCharacters:[C

    const-string v0, "png"

    .line 269
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/WritableSheetImpl;->imageTypes:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x2as
        0x3as
        0x3fs
        0x5cs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljxl/write/biff/File;Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/WorkbookSettings;Ljxl/write/biff/WritableWorkbookImpl;)V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    invoke-direct {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->validateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->name:Ljava/lang/String;

    .line 329
    iput-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->outputFile:Ljxl/write/biff/File;

    const/4 p1, 0x0

    new-array p2, p1, [Ljxl/write/biff/RowRecord;

    .line 330
    iput-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    .line 331
    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    .line 332
    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    .line 333
    iput-boolean p1, p0, Ljxl/write/biff/WritableSheetImpl;->chartOnly:Z

    .line 334
    iput-object p6, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    .line 336
    iput-object p3, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    .line 337
    iput-object p4, p0, Ljxl/write/biff/WritableSheetImpl;->sharedStrings:Ljxl/write/biff/SharedStrings;

    .line 338
    iput-object p5, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    .line 339
    iput-boolean p1, p0, Ljxl/write/biff/WritableSheetImpl;->drawingsModified:Z

    .line 340
    new-instance p1, Ljava/util/TreeSet;

    new-instance p2, Ljxl/write/biff/WritableSheetImpl$ColumnInfoComparator;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljxl/write/biff/WritableSheetImpl$ColumnInfoComparator;-><init>(Ljxl/write/biff/WritableSheetImpl$1;)V

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    .line 341
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    .line 342
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    .line 343
    new-instance p1, Ljxl/write/biff/MergedCells;

    invoke-direct {p1, p0}, Ljxl/write/biff/MergedCells;-><init>(Ljxl/write/WritableSheet;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    .line 344
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    .line 345
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    .line 346
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    .line 347
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    .line 348
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    .line 349
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    .line 350
    new-instance p1, Ljxl/SheetSettings;

    invoke-direct {p1, p0}, Ljxl/SheetSettings;-><init>(Ljxl/Sheet;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    .line 353
    new-instance p1, Ljxl/write/biff/SheetWriter;

    iget-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->outputFile:Ljxl/write/biff/File;

    iget-object p3, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {p1, p2, p0, p3}, Ljxl/write/biff/SheetWriter;-><init>(Ljxl/write/biff/File;Ljxl/write/biff/WritableSheetImpl;Ljxl/WorkbookSettings;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    return-void
.end method

.method private autosizeColumn(I)V
    .locals 9

    .line 2642
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getColumnInfo(I)Ljxl/write/biff/ColumnInfoRecord;

    move-result-object v0

    .line 2643
    invoke-virtual {v0}, Ljxl/write/biff/ColumnInfoRecord;->getCellFormat()Ljxl/biff/XFRecord;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/biff/XFRecord;->getFont()Ljxl/format/Font;

    move-result-object v1

    .line 2644
    sget-object v2, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {v2}, Ljxl/write/WritableCellFormat;->getFont()Ljxl/format/Font;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2646
    :goto_0
    iget v5, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-ge v3, v5, :cond_5

    const/4 v5, 0x0

    .line 2649
    iget-object v6, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v7, v6, v3

    if-eqz v7, :cond_0

    .line 2651
    aget-object v5, v6, v3

    invoke-virtual {v5, p1}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_4

    .line 2656
    invoke-interface {v5}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v6

    .line 2657
    invoke-interface {v5}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v5

    invoke-interface {v5}, Ljxl/format/CellFormat;->getFont()Ljxl/format/Font;

    move-result-object v5

    .line 2659
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v1

    .line 2661
    :cond_1
    invoke-interface {v5}, Ljxl/format/Font;->getPointSize()I

    move-result v7

    .line 2662
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 2664
    invoke-interface {v5}, Ljxl/format/Font;->isItalic()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v5}, Ljxl/format/Font;->getBoldWeight()I

    move-result v5

    const/16 v8, 0x190

    if-le v5, v8, :cond_3

    :cond_2
    add-int/lit8 v6, v6, 0x2

    :cond_3
    mul-int v6, v6, v7

    mul-int/lit16 v6, v6, 0x100

    .line 2671
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2674
    :cond_5
    invoke-interface {v2}, Ljxl/format/Font;->getPointSize()I

    move-result p1

    div-int/2addr v4, p1

    invoke-virtual {v0, v4}, Ljxl/write/biff/ColumnInfoRecord;->setWidth(I)V

    return-void
.end method

.method private autosizeColumns()V
    .locals 2

    .line 2626
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2627
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2629
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2630
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Ljxl/write/biff/WritableSheetImpl;->autosizeColumn(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDrawings()[Ljxl/biff/drawing/DrawingGroupObject;
    .locals 2

    .line 2177
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/biff/drawing/DrawingGroupObject;

    .line 2178
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/biff/drawing/DrawingGroupObject;

    check-cast v0, [Ljxl/biff/drawing/DrawingGroupObject;

    return-object v0
.end method

.method private getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;
    .locals 1

    .line 2209
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;

    move-result-object v0

    return-object v0
.end method

.method private validateName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2474
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 2476
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sheet name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " too long - truncating"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 2477
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2480
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    .line 2482
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    const-string v1, "Sheet naming cannot start with \' - removing"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2483
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2486
    :cond_1
    :goto_0
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->illegalSheetNameCharacters:[C

    array-length v1, v0

    if-ge v2, v1, :cond_3

    .line 2488
    aget-char v0, v0, v2

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 2491
    sget-object p1, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljxl/write/biff/WritableSheetImpl;->illegalSheetNameCharacters:[C

    aget-char v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " is not a valid character within a sheet name - replacing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object p1, v0

    goto :goto_0

    :cond_3
    return-object p1
.end method


# virtual methods
.method public addCell(Ljxl/write/WritableCell;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1133
    invoke-interface {p1}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v0

    sget-object v1, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 1135
    invoke-interface {p1}, Ljxl/write/WritableCell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1143
    :cond_0
    move-object v0, p1

    check-cast v0, Ljxl/write/biff/CellValue;

    .line 1145
    invoke-virtual {v0}, Ljxl/write/biff/CellValue;->isReferenced()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1150
    invoke-interface {p1}, Ljxl/write/WritableCell;->getRow()I

    move-result v1

    .line 1151
    invoke-virtual {p0, v1}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v2

    .line 1153
    invoke-virtual {v0}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result v3

    invoke-virtual {v2, v3}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1154
    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v5

    invoke-virtual {v5}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v5

    invoke-virtual {v5}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v5

    invoke-virtual {v5}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 1161
    :goto_0
    invoke-interface {p1}, Ljxl/write/WritableCell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Ljxl/write/WritableCell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/CellFeatures;->hasDataValidation()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 1165
    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object p1

    .line 1166
    sget-object v1, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add cell at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it is part of the shared cell validation group "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v0

    invoke-virtual {p1}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result v3

    invoke-static {v0, v3}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljxl/biff/DVParser;->getLastColumn()I

    move-result v0

    invoke-virtual {p1}, Ljxl/biff/DVParser;->getLastRow()I

    move-result p1

    invoke-static {v0, p1}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    :cond_2
    if-eqz v5, :cond_4

    .line 1180
    invoke-interface {p1}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1184
    new-instance v5, Ljxl/write/WritableCellFeatures;

    invoke-direct {v5}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 1185
    invoke-interface {p1, v5}, Ljxl/write/WritableCell;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1188
    :cond_3
    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljxl/write/WritableCellFeatures;->shareDataValidation(Ljxl/biff/BaseCellFeatures;)V

    .line 1191
    :cond_4
    invoke-virtual {v2, v0}, Ljxl/write/biff/RowRecord;->addCell(Ljxl/write/biff/CellValue;)V

    add-int/2addr v1, v4

    .line 1194
    iget p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    .line 1195
    iget p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    invoke-virtual {v2}, Ljxl/write/biff/RowRecord;->getMaxColumn()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    .line 1199
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sharedStrings:Ljxl/write/biff/SharedStrings;

    invoke-virtual {v0, p1, v1, p0}, Ljxl/write/biff/CellValue;->setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V

    return-void

    .line 1147
    :cond_5
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->cellReferenced:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method public addColumnPageBreak(I)V
    .locals 3

    .line 2143
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2146
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 2148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 2156
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V
    .locals 1

    .line 2507
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2508
    instance-of p1, p1, Ljxl/biff/drawing/Drawing;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljxl/common/Assert;->verify(Z)V

    return-void
.end method

.method public addHyperlink(Ljxl/write/WritableHyperlink;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1759
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v0

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljxl/write/biff/WritableSheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v0

    .line 1762
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->isFile()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->isUNC()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1774
    :cond_0
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->isURL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1776
    invoke-virtual {p1}, Ljxl/write/biff/HyperlinkRecord;->getContents()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1779
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1786
    :cond_1
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->isLocation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1788
    invoke-virtual {p1}, Ljxl/write/biff/HyperlinkRecord;->getContents()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1764
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljxl/write/biff/HyperlinkRecord;->getContents()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1767
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1795
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v2

    sget-object v3, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v2, v3, :cond_5

    .line 1797
    check-cast v0, Ljxl/write/Label;

    .line 1798
    invoke-virtual {v0, v1}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    .line 1799
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-virtual {v0}, Ljxl/write/Label;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/format/CellFormat;)V

    .line 1800
    sget-object v2, Ljxl/write/WritableWorkbook;->HYPERLINK_FONT:Ljxl/write/WritableFont;

    invoke-virtual {v1, v2}, Ljxl/biff/XFRecord;->setFont(Ljxl/biff/FontRecord;)V

    .line 1801
    invoke-virtual {v0, v1}, Ljxl/write/Label;->setCellFormat(Ljxl/format/CellFormat;)V

    goto :goto_2

    .line 1805
    :cond_5
    new-instance v0, Ljxl/write/Label;

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v2

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v3

    sget-object v4, Ljxl/write/WritableWorkbook;->HYPERLINK_STYLE:Ljxl/write/WritableCellFormat;

    invoke-direct {v0, v2, v3, v1, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1807
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 1811
    :goto_2
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v0

    :goto_3
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getLastRow()I

    move-result v1

    if-gt v0, v1, :cond_8

    .line 1813
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v1

    :goto_4
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getLastColumn()I

    move-result v2

    if-gt v1, v2, :cond_7

    .line 1815
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v2

    if-eq v0, v2, :cond_6

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 1818
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length v2, v2

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getLastColumn()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v3, v2, v0

    if-eqz v3, :cond_6

    .line 1820
    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljxl/write/biff/RowRecord;->removeCell(I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1826
    :cond_8
    invoke-virtual {p1, p0}, Ljxl/write/biff/HyperlinkRecord;->initialize(Ljxl/write/WritableSheet;)V

    .line 1827
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addImage(Ljxl/write/WritableImage;)V
    .locals 7

    .line 2379
    invoke-virtual {p1}, Ljxl/write/WritableImage;->getImageFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2384
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    .line 2385
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v3, v2

    .line 2386
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2389
    :goto_1
    sget-object v5, Ljxl/write/biff/WritableSheetImpl;->imageTypes:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_3

    if-nez v4, :cond_3

    .line 2391
    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "?"

    const/4 v4, 0x1

    :cond_3
    if-eqz v4, :cond_4

    .line 2404
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 2405
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2406
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2410
    :cond_4
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v3, "Image type "

    invoke-direct {p1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2411
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " not supported.  Supported types are "

    .line 2412
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2413
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->imageTypes:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2414
    :goto_2
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->imageTypes:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_5

    const-string v0, ", "

    .line 2416
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2417
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->imageTypes:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2419
    :cond_5
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public addRowPageBreak(I)V
    .locals 3

    .line 2118
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2121
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 2123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 2131
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method addValidationCell(Ljxl/write/biff/CellValue;)V
    .locals 1

    .line 2589
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applySharedDataValidation(Ljxl/write/WritableCell;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 2724
    invoke-interface {p1}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->hasDataValidation()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2736
    :cond_0
    invoke-interface {p1}, Ljxl/write/WritableCell;->getColumn()I

    move-result v0

    .line 2737
    invoke-interface {p1}, Ljxl/write/WritableCell;->getRow()I

    move-result v1

    .line 2738
    iget v2, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    add-int/lit8 v2, v2, -0x1

    add-int v3, v1, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v4, v1

    :goto_0
    if-gt v4, v2, :cond_4

    .line 2741
    iget-object v5, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v6, v5, v4

    if-eqz v6, :cond_3

    .line 2743
    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljxl/write/biff/RowRecord;->getMaxColumn()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    add-int v6, v0, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v7, v0

    :goto_1
    if-gt v7, v5, :cond_3

    if-ne v7, v0, :cond_1

    if-ne v4, v1, :cond_1

    goto :goto_2

    .line 2753
    :cond_1
    iget-object v8, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v8, v8, v4

    invoke-virtual {v8, v7}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2756
    invoke-interface {v8}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v8

    invoke-virtual {v8}, Ljxl/write/WritableCellFeatures;->hasDataValidation()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2760
    sget-object p1, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot apply data validation from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v3}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " as cell "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v4}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " already has a data validation"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2777
    :cond_4
    invoke-interface {p1}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object p1

    .line 2778
    invoke-virtual {p1}, Ljxl/write/WritableCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljxl/biff/DVParser;->extendCellValidation(II)V

    move p3, v1

    :goto_3
    if-gt p3, v3, :cond_9

    .line 2784
    invoke-virtual {p0, p3}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v2

    move v4, v0

    :goto_4
    add-int v5, v0, p2

    if-gt v4, v5, :cond_8

    if-ne v4, v0, :cond_5

    if-ne p3, v1, :cond_5

    goto :goto_5

    .line 2793
    :cond_5
    invoke-virtual {v2, v4}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v5

    if-nez v5, :cond_6

    .line 2798
    new-instance v5, Ljxl/write/Blank;

    invoke-direct {v5, v4, p3}, Ljxl/write/Blank;-><init>(II)V

    .line 2799
    new-instance v6, Ljxl/write/WritableCellFeatures;

    invoke-direct {v6}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 2800
    invoke-virtual {v6, p1}, Ljxl/write/WritableCellFeatures;->shareDataValidation(Ljxl/biff/BaseCellFeatures;)V

    .line 2801
    invoke-virtual {v5, v6}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 2802
    invoke-virtual {p0, v5}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    goto :goto_5

    .line 2807
    :cond_6
    invoke-interface {v5}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 2811
    invoke-virtual {v6, p1}, Ljxl/write/WritableCellFeatures;->shareDataValidation(Ljxl/biff/BaseCellFeatures;)V

    goto :goto_5

    .line 2815
    :cond_7
    new-instance v6, Ljxl/write/WritableCellFeatures;

    invoke-direct {v6}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 2816
    invoke-virtual {v6, p1}, Ljxl/write/WritableCellFeatures;->shareDataValidation(Ljxl/biff/BaseCellFeatures;)V

    .line 2817
    invoke-interface {v5, v6}, Ljxl/write/WritableCell;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_9
    return-void

    .line 2727
    :cond_a
    :goto_6
    sget-object p2, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot extend data validation for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljxl/write/WritableCell;->getColumn()I

    move-result v0

    invoke-interface {p1}, Ljxl/write/WritableCell;->getRow()I

    move-result p1

    invoke-static {v0, p1}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as it has no data validation"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method checkMergedBorders()V
    .locals 9

    .line 2190
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    iget-object v4, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    iget-object v5, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    iget-object v6, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    iget v7, p0, Ljxl/write/biff/WritableSheetImpl;->maxRowOutlineLevel:I

    iget v8, p0, Ljxl/write/biff/WritableSheetImpl;->maxColumnOutlineLevel:I

    invoke-virtual/range {v0 .. v8}, Ljxl/write/biff/SheetWriter;->setWriteData([Ljxl/write/biff/RowRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljxl/write/biff/MergedCells;Ljava/util/TreeSet;II)V

    .line 2198
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getRows()I

    move-result v1

    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getColumns()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljxl/write/biff/SheetWriter;->setDimensions(II)V

    .line 2199
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->checkMergedBorders()V

    return-void
.end method

.method copy(Ljxl/Sheet;)V
    .locals 2

    .line 1569
    new-instance v0, Ljxl/SheetSettings;

    invoke-interface {p1}, Ljxl/Sheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljxl/SheetSettings;-><init>(Ljxl/SheetSettings;Ljxl/Sheet;)V

    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    .line 1571
    new-instance v0, Ljxl/write/biff/SheetCopier;

    invoke-direct {v0, p1, p0}, Ljxl/write/biff/SheetCopier;-><init>(Ljxl/Sheet;Ljxl/write/WritableSheet;)V

    .line 1572
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setColumnFormats(Ljava/util/TreeSet;)V

    .line 1573
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setFormatRecords(Ljxl/biff/FormattingRecords;)V

    .line 1574
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setHyperlinks(Ljava/util/ArrayList;)V

    .line 1575
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setMergedCells(Ljxl/write/biff/MergedCells;)V

    .line 1576
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setRowBreaks(Ljava/util/ArrayList;)V

    .line 1577
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setColumnBreaks(Ljava/util/ArrayList;)V

    .line 1578
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setSheetWriter(Ljxl/write/biff/SheetWriter;)V

    .line 1579
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setDrawings(Ljava/util/ArrayList;)V

    .line 1580
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setImages(Ljava/util/ArrayList;)V

    .line 1581
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setConditionalFormats(Ljava/util/ArrayList;)V

    .line 1582
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setValidatedCells(Ljava/util/ArrayList;)V

    .line 1584
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->copySheet()V

    .line 1586
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getDataValidation()Ljxl/biff/DataValidation;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    .line 1587
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->comboBox:Ljxl/biff/drawing/ComboBox;

    .line 1588
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getPLSRecord()Ljxl/write/biff/PLSRecord;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->plsRecord:Ljxl/write/biff/PLSRecord;

    .line 1589
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->isChartOnly()Z

    move-result p1

    iput-boolean p1, p0, Ljxl/write/biff/WritableSheetImpl;->chartOnly:Z

    .line 1590
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getButtonPropertySet()Ljxl/write/biff/ButtonPropertySetRecord;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    .line 1591
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getRows()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    .line 1592
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getAutoFilter()Ljxl/biff/AutoFilter;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->autoFilter:Ljxl/biff/AutoFilter;

    .line 1593
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getMaxRowOutlineLevel()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->maxRowOutlineLevel:I

    .line 1594
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getMaxColumnOutlineLevel()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->maxColumnOutlineLevel:I

    return-void
.end method

.method copy(Ljxl/write/WritableSheet;)V
    .locals 4

    .line 1604
    new-instance v0, Ljxl/SheetSettings;

    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljxl/SheetSettings;-><init>(Ljxl/SheetSettings;Ljxl/Sheet;)V

    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    .line 1605
    move-object v0, p1

    check-cast v0, Ljxl/write/biff/WritableSheetImpl;

    .line 1607
    new-instance v1, Ljxl/write/biff/WritableSheetCopier;

    invoke-direct {v1, p1, p0}, Ljxl/write/biff/WritableSheetCopier;-><init>(Ljxl/write/WritableSheet;Ljxl/write/WritableSheet;)V

    .line 1608
    iget-object p1, v0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v1, p1, v2}, Ljxl/write/biff/WritableSheetCopier;->setColumnFormats(Ljava/util/TreeSet;Ljava/util/TreeSet;)V

    .line 1609
    iget-object p1, v0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v1, p1, v2}, Ljxl/write/biff/WritableSheetCopier;->setMergedCells(Ljxl/write/biff/MergedCells;Ljxl/write/biff/MergedCells;)V

    .line 1610
    iget-object p1, v0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    invoke-virtual {v1, p1}, Ljxl/write/biff/WritableSheetCopier;->setRows([Ljxl/write/biff/RowRecord;)V

    .line 1611
    iget-object p1, v0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2}, Ljxl/write/biff/WritableSheetCopier;->setRowBreaks(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1612
    iget-object p1, v0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2}, Ljxl/write/biff/WritableSheetCopier;->setColumnBreaks(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1613
    iget-object p1, v0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    invoke-virtual {v1, p1}, Ljxl/write/biff/WritableSheetCopier;->setDataValidation(Ljxl/biff/DataValidation;)V

    .line 1614
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v1, p1}, Ljxl/write/biff/WritableSheetCopier;->setSheetWriter(Ljxl/write/biff/SheetWriter;)V

    .line 1615
    iget-object p1, v0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v3}, Ljxl/write/biff/WritableSheetCopier;->setDrawings(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1616
    invoke-direct {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljxl/write/biff/WritableSheetCopier;->setWorkspaceOptions(Ljxl/biff/WorkspaceInformationRecord;)V

    .line 1617
    iget-object p1, v0, Ljxl/write/biff/WritableSheetImpl;->plsRecord:Ljxl/write/biff/PLSRecord;

    invoke-virtual {v1, p1}, Ljxl/write/biff/WritableSheetCopier;->setPLSRecord(Ljxl/write/biff/PLSRecord;)V

    .line 1618
    iget-object p1, v0, Ljxl/write/biff/WritableSheetImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    invoke-virtual {v1, p1}, Ljxl/write/biff/WritableSheetCopier;->setButtonPropertySetRecord(Ljxl/write/biff/ButtonPropertySetRecord;)V

    .line 1619
    iget-object p1, v0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljxl/write/biff/WritableSheetCopier;->setHyperlinks(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1620
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljxl/write/biff/WritableSheetCopier;->setValidatedCells(Ljava/util/ArrayList;)V

    .line 1622
    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetCopier;->copySheet()V

    .line 1624
    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetCopier;->getDataValidation()Ljxl/biff/DataValidation;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    .line 1625
    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetCopier;->getPLSRecord()Ljxl/write/biff/PLSRecord;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->plsRecord:Ljxl/write/biff/PLSRecord;

    .line 1626
    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetCopier;->getButtonPropertySet()Ljxl/write/biff/ButtonPropertySetRecord;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    return-void
.end method

.method public findCell(Ljava/lang/String;)Ljxl/Cell;
    .locals 1

    .line 454
    new-instance v0, Ljxl/biff/CellFinder;

    invoke-direct {v0, p0}, Ljxl/biff/CellFinder;-><init>(Ljxl/Sheet;)V

    .line 455
    invoke-virtual {v0, p1}, Ljxl/biff/CellFinder;->findCell(Ljava/lang/String;)Ljxl/Cell;

    move-result-object p1

    return-object p1
.end method

.method public findCell(Ljava/lang/String;IIIIZ)Ljxl/Cell;
    .locals 7

    .line 479
    new-instance v0, Ljxl/biff/CellFinder;

    invoke-direct {v0, p0}, Ljxl/biff/CellFinder;-><init>(Ljxl/Sheet;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 480
    invoke-virtual/range {v0 .. v6}, Ljxl/biff/CellFinder;->findCell(Ljava/lang/String;IIIIZ)Ljxl/Cell;

    move-result-object p1

    return-object p1
.end method

.method public findCell(Ljava/util/regex/Pattern;IIIIZ)Ljxl/Cell;
    .locals 7

    .line 509
    new-instance v0, Ljxl/biff/CellFinder;

    invoke-direct {v0, p0}, Ljxl/biff/CellFinder;-><init>(Ljxl/Sheet;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 510
    invoke-virtual/range {v0 .. v6}, Ljxl/biff/CellFinder;->findCell(Ljava/util/regex/Pattern;IIIIZ)Ljxl/Cell;

    move-result-object p1

    return-object p1
.end method

.method public findLabelCell(Ljava/lang/String;)Ljxl/LabelCell;
    .locals 1

    .line 532
    new-instance v0, Ljxl/biff/CellFinder;

    invoke-direct {v0, p0}, Ljxl/biff/CellFinder;-><init>(Ljxl/Sheet;)V

    .line 533
    invoke-virtual {v0, p1}, Ljxl/biff/CellFinder;->findLabelCell(Ljava/lang/String;)Ljxl/LabelCell;

    move-result-object p1

    return-object p1
.end method

.method public getCell(II)Ljxl/Cell;
    .locals 0

    .line 380
    invoke-virtual {p0, p1, p2}, Ljxl/write/biff/WritableSheetImpl;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object p1

    return-object p1
.end method

.method public getCell(Ljava/lang/String;)Ljxl/Cell;
    .locals 1

    .line 367
    invoke-static {p1}, Ljxl/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Ljxl/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljxl/write/biff/WritableSheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object p1

    return-object p1
.end method

.method getCharts()[Ljxl/biff/drawing/Chart;
    .locals 1

    .line 2167
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v0

    return-object v0
.end method

.method public getColumn(I)[Ljxl/Cell;
    .locals 6

    .line 579
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_1

    if-nez v3, :cond_1

    .line 583
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v4

    invoke-interface {v4}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v4

    sget-object v5, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-eq v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 594
    new-array v1, v1, [Ljxl/Cell;

    :goto_1
    if-gt v2, v0, :cond_2

    .line 598
    invoke-virtual {p0, p1, v2}, Ljxl/write/biff/WritableSheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public getColumnFormat(I)Ljxl/format/CellFormat;
    .locals 0

    .line 2264
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getColumnView(I)Ljxl/CellView;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object p1

    return-object p1
.end method

.method getColumnInfo(I)Ljxl/write/biff/ColumnInfoRecord;
    .locals 5

    .line 1263
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    .line 1267
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    .line 1269
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/ColumnInfoRecord;

    .line 1271
    invoke-virtual {v3}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v4

    if-lt v4, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return-object v1

    .line 1282
    :cond_2
    invoke-virtual {v3}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v0

    if-ne v0, p1, :cond_3

    move-object v1, v3

    :cond_3
    return-object v1
.end method

.method public getColumnPageBreaks()[I
    .locals 4

    .line 2573
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2575
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2577
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getColumnView(I)Ljxl/CellView;
    .locals 2

    .line 2352
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getColumnInfo(I)Ljxl/write/biff/ColumnInfoRecord;

    move-result-object p1

    .line 2353
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    if-eqz p1, :cond_0

    .line 2357
    invoke-virtual {p1}, Ljxl/write/biff/ColumnInfoRecord;->getWidth()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    invoke-virtual {v0, v1}, Ljxl/CellView;->setDimension(I)V

    .line 2358
    invoke-virtual {p1}, Ljxl/write/biff/ColumnInfoRecord;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/CellView;->setSize(I)V

    .line 2359
    invoke-virtual {p1}, Ljxl/write/biff/ColumnInfoRecord;->getHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/CellView;->setHidden(Z)V

    .line 2360
    invoke-virtual {p1}, Ljxl/write/biff/ColumnInfoRecord;->getCellFormat()Ljxl/biff/XFRecord;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setFormat(Ljxl/format/CellFormat;)V

    goto :goto_0

    .line 2364
    :cond_0
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultColumnWidth()I

    move-result p1

    div-int/lit16 p1, p1, 0x100

    invoke-virtual {v0, p1}, Ljxl/CellView;->setDimension(I)V

    .line 2365
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultColumnWidth()I

    move-result p1

    mul-int/lit16 p1, p1, 0x100

    invoke-virtual {v0, p1}, Ljxl/CellView;->setSize(I)V

    :goto_0
    return-object v0
.end method

.method public getColumnWidth(I)I
    .locals 0

    .line 2277
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getColumnView(I)Ljxl/CellView;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/CellView;->getDimension()I

    move-result p1

    return p1
.end method

.method public getColumns()I
    .locals 1

    .line 440
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    return v0
.end method

.method getComboBox()Ljxl/biff/drawing/ComboBox;
    .locals 1

    .line 2600
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->comboBox:Ljxl/biff/drawing/ComboBox;

    return-object v0
.end method

.method public getDataValidation()Ljxl/biff/DataValidation;
    .locals 1

    .line 2618
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    return-object v0
.end method

.method public getDrawing(I)Ljxl/Image;
    .locals 1

    .line 2452
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/Image;

    return-object p1
.end method

.method final getFooter()Ljxl/write/biff/FooterRecord;
    .locals 1

    .line 1646
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->getFooter()Ljxl/write/biff/FooterRecord;

    move-result-object v0

    return-object v0
.end method

.method final getHeader()Ljxl/write/biff/HeaderRecord;
    .locals 1

    .line 1636
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->getHeader()Ljxl/write/biff/HeaderRecord;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlinks()[Ljxl/Hyperlink;
    .locals 3

    .line 1666
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/Hyperlink;

    const/4 v1, 0x0

    .line 1668
    :goto_0
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1670
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/Hyperlink;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getImage(I)Ljxl/write/WritableImage;
    .locals 1

    .line 2441
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/write/WritableImage;

    return-object p1
.end method

.method public getMergedCells()[Ljxl/Range;
    .locals 1

    .line 1683
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0}, Ljxl/write/biff/MergedCells;->getMergedCells()[Ljxl/Range;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 610
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfImages()I
    .locals 1

    .line 2430
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRow(I)[Ljxl/Cell;
    .locals 6

    .line 546
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_1

    if-nez v3, :cond_1

    .line 549
    invoke-virtual {p0, v0, p1}, Ljxl/write/biff/WritableSheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v4

    invoke-interface {v4}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v4

    sget-object v5, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-eq v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 560
    new-array v1, v1, [Ljxl/Cell;

    :goto_1
    if-gt v2, v0, :cond_2

    .line 564
    invoke-virtual {p0, v2, p1}, Ljxl/write/biff/WritableSheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public getRowHeight(I)I
    .locals 0

    .line 2290
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getRowView(I)Ljxl/CellView;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/CellView;->getDimension()I

    move-result p1

    return p1
.end method

.method getRowInfo(I)Ljxl/write/biff/RowRecord;
    .locals 2

    if-ltz p1, :cond_1

    .line 1247
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length v1, v0

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 1252
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRowPageBreaks()[I
    .locals 4

    .line 2557
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2559
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2561
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getRowRecord(I)Ljxl/write/biff/RowRecord;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    .line 1220
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 1223
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Ljxl/write/biff/RowRecord;

    iput-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    .line 1224
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1228
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 1232
    new-instance v0, Ljxl/write/biff/RowRecord;

    invoke-direct {v0, p1, p0}, Ljxl/write/biff/RowRecord;-><init>(ILjxl/write/WritableSheet;)V

    .line 1233
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aput-object v0, v1, p1

    :cond_1
    return-object v0

    .line 1214
    :cond_2
    new-instance p1, Ljxl/write/biff/RowsExceededException;

    invoke-direct {p1}, Ljxl/write/biff/RowsExceededException;-><init>()V

    throw p1
.end method

.method public getRowView(I)Ljxl/CellView;
    .locals 2

    .line 2312
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    .line 2316
    :try_start_0
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2318
    invoke-virtual {p1}, Ljxl/write/biff/RowRecord;->isDefaultHeight()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2323
    :cond_0
    invoke-virtual {p1}, Ljxl/write/biff/RowRecord;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 2325
    invoke-virtual {v0, p1}, Ljxl/CellView;->setHidden(Z)V

    goto :goto_1

    .line 2329
    :cond_1
    invoke-virtual {p1}, Ljxl/write/biff/RowRecord;->getRowHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/CellView;->setDimension(I)V

    .line 2330
    invoke-virtual {p1}, Ljxl/write/biff/RowRecord;->getRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setSize(I)V

    goto :goto_1

    .line 2320
    :cond_2
    :goto_0
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setDimension(I)V

    .line 2321
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setSize(I)V
    :try_end_0
    .catch Ljxl/write/biff/RowsExceededException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    .line 2337
    :catch_0
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setDimension(I)V

    .line 2338
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setSize(I)V

    return-object v0
.end method

.method public getRows()I
    .locals 1

    .line 430
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    return v0
.end method

.method public getSettings()Ljxl/SheetSettings;
    .locals 1

    .line 2099
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    return-object v0
.end method

.method getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;
    .locals 1

    .line 2252
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    return-object v0
.end method

.method getWorkbookSettings()Ljxl/WorkbookSettings;
    .locals 1

    .line 2107
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    return-object v0
.end method

.method public getWritableCell(II)Ljxl/write/WritableCell;
    .locals 2

    .line 410
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length v1, v0

    if-ge p2, v1, :cond_0

    aget-object v1, v0, p2

    if-eqz v1, :cond_0

    .line 412
    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 417
    new-instance v0, Ljxl/biff/EmptyCell;

    invoke-direct {v0, p1, p2}, Ljxl/biff/EmptyCell;-><init>(II)V

    :cond_1
    return-object v0
.end method

.method public getWritableCell(Ljava/lang/String;)Ljxl/write/WritableCell;
    .locals 1

    .line 395
    invoke-static {p1}, Ljxl/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Ljxl/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljxl/write/biff/WritableSheetImpl;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object p1

    return-object p1
.end method

.method public getWritableHyperlinks()[Ljxl/write/WritableHyperlink;
    .locals 3

    .line 1693
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/write/WritableHyperlink;

    const/4 v1, 0x0

    .line 1695
    :goto_0
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1697
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/WritableHyperlink;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method importSheet(Ljxl/Sheet;)V
    .locals 2

    .line 2685
    new-instance v0, Ljxl/SheetSettings;

    invoke-interface {p1}, Ljxl/Sheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljxl/SheetSettings;-><init>(Ljxl/SheetSettings;Ljxl/Sheet;)V

    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    .line 2687
    new-instance v0, Ljxl/write/biff/SheetCopier;

    invoke-direct {v0, p1, p0}, Ljxl/write/biff/SheetCopier;-><init>(Ljxl/Sheet;Ljxl/write/WritableSheet;)V

    .line 2688
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setColumnFormats(Ljava/util/TreeSet;)V

    .line 2689
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setFormatRecords(Ljxl/biff/FormattingRecords;)V

    .line 2690
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setHyperlinks(Ljava/util/ArrayList;)V

    .line 2691
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setMergedCells(Ljxl/write/biff/MergedCells;)V

    .line 2692
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setRowBreaks(Ljava/util/ArrayList;)V

    .line 2693
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setColumnBreaks(Ljava/util/ArrayList;)V

    .line 2694
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setSheetWriter(Ljxl/write/biff/SheetWriter;)V

    .line 2695
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setDrawings(Ljava/util/ArrayList;)V

    .line 2696
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setImages(Ljava/util/ArrayList;)V

    .line 2697
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setValidatedCells(Ljava/util/ArrayList;)V

    .line 2699
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->importSheet()V

    .line 2701
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getDataValidation()Ljxl/biff/DataValidation;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    .line 2702
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->comboBox:Ljxl/biff/drawing/ComboBox;

    .line 2703
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getPLSRecord()Ljxl/write/biff/PLSRecord;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->plsRecord:Ljxl/write/biff/PLSRecord;

    .line 2704
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->isChartOnly()Z

    move-result p1

    iput-boolean p1, p0, Ljxl/write/biff/WritableSheetImpl;->chartOnly:Z

    .line 2705
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getButtonPropertySet()Ljxl/write/biff/ButtonPropertySetRecord;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    .line 2706
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getRows()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    .line 2707
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getMaxRowOutlineLevel()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->maxRowOutlineLevel:I

    .line 2708
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getMaxColumnOutlineLevel()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->maxColumnOutlineLevel:I

    return-void
.end method

.method public insertColumn(I)V
    .locals 4

    if-ltz p1, :cond_10

    .line 726
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    if-lt p1, v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x0

    .line 732
    :goto_0
    iget v1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-ge v0, v1, :cond_2

    .line 734
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    .line 736
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljxl/write/biff/RowRecord;->insertColumn(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    :cond_2
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 743
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 745
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/HyperlinkRecord;

    .line 746
    invoke-virtual {v1, p1}, Ljxl/write/biff/HyperlinkRecord;->insertColumn(I)V

    goto :goto_1

    .line 750
    :cond_3
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 751
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 753
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/ColumnInfoRecord;

    .line 755
    invoke-virtual {v1}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v2

    if-lt v2, p1, :cond_4

    .line 757
    invoke-virtual {v1}, Ljxl/write/biff/ColumnInfoRecord;->incrementColumn()V

    goto :goto_2

    .line 762
    :cond_5
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 764
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 765
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 766
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 768
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 770
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, p1, :cond_6

    .line 772
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 776
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 779
    :cond_7
    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    .line 783
    :cond_8
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_9

    .line 785
    invoke-virtual {v0, p1}, Ljxl/biff/DataValidation;->insertColumn(I)V

    .line 788
    :cond_9
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 790
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 792
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/CellValue;

    .line 793
    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v1

    .line 794
    invoke-virtual {v1}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 796
    invoke-virtual {v1}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljxl/biff/DVParser;->insertColumn(I)V

    goto :goto_4

    .line 802
    :cond_b
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/MergedCells;->insertColumn(I)V

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 806
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 807
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 809
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p1, :cond_c

    add-int/lit8 v2, v2, 0x1

    .line 815
    :cond_c
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 817
    :cond_d
    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    .line 820
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 822
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/ConditionalFormat;

    .line 823
    invoke-virtual {v1, p1}, Ljxl/biff/ConditionalFormat;->insertColumn(I)V

    goto :goto_6

    .line 827
    :cond_e
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getFormulaAdjust()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 829
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v0, p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->columnInserted(Ljxl/write/biff/WritableSheetImpl;I)V

    .line 832
    :cond_f
    iget p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    :cond_10
    :goto_7
    return-void
.end method

.method public insertRow(I)V
    .locals 4

    if-ltz p1, :cond_c

    .line 621
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-lt p1, v0, :cond_0

    goto/16 :goto_6

    .line 627
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    .line 629
    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 631
    array-length v0, v1

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [Ljxl/write/biff/RowRecord;

    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    goto :goto_0

    .line 635
    :cond_1
    array-length v0, v1

    new-array v0, v0, [Ljxl/write/biff/RowRecord;

    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    .line 639
    :goto_0
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 642
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 645
    :goto_1
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-gt v2, v0, :cond_3

    .line 647
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v1, v0, v2

    if-eqz v1, :cond_2

    .line 649
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljxl/write/biff/RowRecord;->incrementRow()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 655
    :cond_3
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 656
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 658
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/HyperlinkRecord;

    .line 659
    invoke-virtual {v1, p1}, Ljxl/write/biff/HyperlinkRecord;->insertRow(I)V

    goto :goto_2

    .line 663
    :cond_4
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_5

    .line 665
    invoke-virtual {v0, p1}, Ljxl/biff/DataValidation;->insertRow(I)V

    .line 668
    :cond_5
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 670
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 672
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/CellValue;

    .line 673
    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v1

    .line 674
    invoke-virtual {v1}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 676
    invoke-virtual {v1}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljxl/biff/DVParser;->insertRow(I)V

    goto :goto_3

    .line 682
    :cond_7
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/MergedCells;->insertRow(I)V

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 686
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 687
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 689
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p1, :cond_8

    add-int/lit8 v2, v2, 0x1

    .line 695
    :cond_8
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 697
    :cond_9
    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    .line 700
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 702
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/ConditionalFormat;

    .line 703
    invoke-virtual {v1, p1}, Ljxl/biff/ConditionalFormat;->insertRow(I)V

    goto :goto_5

    .line 707
    :cond_a
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getFormulaAdjust()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 709
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v0, p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->rowInserted(Ljxl/write/biff/WritableSheetImpl;I)V

    .line 713
    :cond_b
    iget p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    :cond_c
    :goto_6
    return-void
.end method

.method isChartOnly()Z
    .locals 1

    .line 2300
    iget-boolean v0, p0, Ljxl/write/biff/WritableSheetImpl;->chartOnly:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 1334
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/SheetSettings;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 1656
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/SheetSettings;->isProtected()Z

    move-result v0

    return v0
.end method

.method public mergeCells(IIII)Ljxl/Range;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    if-lt p3, p1, :cond_0

    if-ge p4, p2, :cond_1

    .line 1848
    :cond_0
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    const-string v1, "Cannot merge cells - top left and bottom right incorrectly specified"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1853
    :cond_1
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    if-ge p3, v0, :cond_2

    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-lt p4, v0, :cond_3

    .line 1855
    :cond_2
    new-instance v0, Ljxl/write/Blank;

    invoke-direct {v0, p3, p4}, Ljxl/write/Blank;-><init>(II)V

    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 1858
    :cond_3
    new-instance v0, Ljxl/biff/SheetRangeImpl;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    .line 1859
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {p1, v0}, Ljxl/write/biff/MergedCells;->add(Ljxl/Range;)V

    return-object v0
.end method

.method rationalize(Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;)V
    .locals 4

    .line 2223
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2225
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/ColumnInfoRecord;

    .line 2226
    invoke-virtual {v1, p1}, Ljxl/write/biff/ColumnInfoRecord;->rationalize(Ljxl/biff/IndexMapping;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2230
    :goto_1
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 2232
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 2234
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljxl/write/biff/RowRecord;->rationalize(Ljxl/biff/IndexMapping;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2239
    :cond_2
    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v1

    .line 2240
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 2242
    aget-object v2, v1, v0

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/drawing/Chart;->rationalize(Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public removeColumn(I)V
    .locals 4

    if-ltz p1, :cond_15

    .line 843
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    if-lt p1, v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x0

    .line 849
    :goto_0
    iget v1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-ge v0, v1, :cond_2

    .line 851
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    .line 853
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljxl/write/biff/RowRecord;->removeColumn(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 859
    :cond_2
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 860
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 862
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/HyperlinkRecord;

    .line 864
    invoke-virtual {v1}, Ljxl/write/biff/HyperlinkRecord;->getColumn()I

    move-result v2

    if-ne v2, p1, :cond_3

    invoke-virtual {v1}, Ljxl/write/biff/HyperlinkRecord;->getLastColumn()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 869
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 873
    :cond_3
    invoke-virtual {v1, p1}, Ljxl/write/biff/HyperlinkRecord;->removeColumn(I)V

    goto :goto_1

    .line 878
    :cond_4
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_5

    .line 880
    invoke-virtual {v0, p1}, Ljxl/biff/DataValidation;->removeColumn(I)V

    .line 883
    :cond_5
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 885
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 887
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/CellValue;

    .line 888
    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v1

    .line 889
    invoke-virtual {v1}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 891
    invoke-virtual {v1}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljxl/biff/DVParser;->removeColumn(I)V

    goto :goto_2

    .line 897
    :cond_7
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/MergedCells;->removeColumn(I)V

    .line 900
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 901
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 902
    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 904
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_8

    if-le v2, p1, :cond_9

    add-int/lit8 v2, v2, -0x1

    .line 913
    :cond_9
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 917
    :cond_a
    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    .line 921
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 923
    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 925
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/ColumnInfoRecord;

    .line 927
    invoke-virtual {v2}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v3

    if-ne v3, p1, :cond_c

    move-object v1, v2

    goto :goto_4

    .line 931
    :cond_c
    invoke-virtual {v2}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v3

    if-le v3, p1, :cond_b

    .line 933
    invoke-virtual {v2}, Ljxl/write/biff/ColumnInfoRecord;->decrementColumn()V

    goto :goto_4

    :cond_d
    if-eqz v1, :cond_e

    .line 939
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 943
    :cond_e
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 945
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 946
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 947
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 949
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 951
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_f

    goto :goto_5

    .line 955
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_10

    .line 957
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 961
    :cond_10
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 964
    :cond_11
    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    .line 968
    :cond_12
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 970
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/ConditionalFormat;

    .line 971
    invoke-virtual {v1, p1}, Ljxl/biff/ConditionalFormat;->removeColumn(I)V

    goto :goto_6

    .line 975
    :cond_13
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getFormulaAdjust()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 977
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v0, p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->columnRemoved(Ljxl/write/biff/WritableSheetImpl;I)V

    .line 980
    :cond_14
    iget p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    :cond_15
    :goto_7
    return-void
.end method

.method removeDataValidation(Ljxl/write/biff/CellValue;)V
    .locals 3

    .line 2533
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_0

    .line 2535
    invoke-virtual {p1}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result v1

    invoke-virtual {p1}, Ljxl/write/biff/CellValue;->getRow()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljxl/biff/DataValidation;->removeDataValidation(II)V

    .line 2538
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2540
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2544
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not remove validated cell "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method removeDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V
    .locals 2

    .line 2518
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2519
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2520
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    .line 2521
    iput-boolean v1, p0, Ljxl/write/biff/WritableSheetImpl;->drawingsModified:Z

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2522
    :goto_0
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    return-void
.end method

.method public removeHyperlink(Ljxl/write/WritableHyperlink;)V
    .locals 1

    const/4 v0, 0x0

    .line 1717
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->removeHyperlink(Ljxl/write/WritableHyperlink;Z)V

    return-void
.end method

.method public removeHyperlink(Ljxl/write/WritableHyperlink;Z)V
    .locals 2

    .line 1737
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-nez p2, :cond_1

    .line 1743
    iget-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length p2, p2

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v0

    if-le p2, v0, :cond_0

    iget-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v0

    aget-object p2, p2, v0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljxl/common/Assert;->verify(Z)V

    .line 1744
    iget-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result p1

    invoke-virtual {p2, p1}, Ljxl/write/biff/RowRecord;->removeCell(I)V

    :cond_1
    return-void
.end method

.method public removeImage(Ljxl/write/WritableImage;)V
    .locals 1

    .line 2463
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2464
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 2465
    iput-boolean v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawingsModified:Z

    .line 2466
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->removeDrawing(Ljxl/biff/drawing/Drawing;)V

    return-void
.end method

.method public removeRow(I)V
    .locals 4

    if-ltz p1, :cond_d

    .line 991
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-lt p1, v0, :cond_0

    goto/16 :goto_5

    .line 1003
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    .line 1005
    array-length v1, v0

    new-array v1, v1, [Ljxl/write/biff/RowRecord;

    iput-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    const/4 v2, 0x0

    .line 1008
    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, p1, 0x1

    .line 1011
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    iget v3, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, p1

    .line 1014
    :goto_0
    iget v1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-ge v0, v1, :cond_2

    .line 1016
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    .line 1018
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/RowRecord;->decrementRow()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1024
    :cond_2
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1025
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1027
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/HyperlinkRecord;

    .line 1029
    invoke-virtual {v1}, Ljxl/write/biff/HyperlinkRecord;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_3

    invoke-virtual {v1}, Ljxl/write/biff/HyperlinkRecord;->getLastRow()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 1034
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1038
    :cond_3
    invoke-virtual {v1, p1}, Ljxl/write/biff/HyperlinkRecord;->removeRow(I)V

    goto :goto_1

    .line 1043
    :cond_4
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_5

    .line 1045
    invoke-virtual {v0, p1}, Ljxl/biff/DataValidation;->removeRow(I)V

    .line 1048
    :cond_5
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1050
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1052
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/CellValue;

    .line 1053
    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v1

    .line 1054
    invoke-virtual {v1}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1056
    invoke-virtual {v1}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljxl/biff/DVParser;->removeRow(I)V

    goto :goto_2

    .line 1062
    :cond_7
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/MergedCells;->removeRow(I)V

    .line 1065
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1067
    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1069
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_8

    if-le v2, p1, :cond_9

    add-int/lit8 v2, v2, -0x1

    .line 1078
    :cond_9
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1082
    :cond_a
    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    .line 1085
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1087
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/ConditionalFormat;

    .line 1088
    invoke-virtual {v1, p1}, Ljxl/biff/ConditionalFormat;->removeRow(I)V

    goto :goto_4

    .line 1092
    :cond_b
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getFormulaAdjust()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1094
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v0, p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->rowRemoved(Ljxl/write/biff/WritableSheetImpl;I)V

    .line 1110
    :cond_c
    iget p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    return-void

    .line 994
    :cond_d
    :goto_5
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getFormulaAdjust()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 996
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v0, p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->rowRemoved(Ljxl/write/biff/WritableSheetImpl;I)V

    :cond_e
    return-void
.end method

.method public removeSharedDataValidation(Ljxl/write/WritableCell;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 2834
    invoke-interface {p1}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2835
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->hasDataValidation()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2841
    :cond_0
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v1

    .line 2845
    invoke-virtual {v1}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2847
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->removeDataValidation()V

    return-void

    .line 2853
    :cond_1
    invoke-virtual {v1}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2855
    invoke-interface {p1}, Ljxl/write/WritableCell;->getColumn()I

    move-result v0

    invoke-virtual {v1}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-interface {p1}, Ljxl/write/WritableCell;->getRow()I

    move-result v0

    invoke-virtual {v1}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 2858
    :cond_2
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot remove data validation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v3

    invoke-virtual {v1}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result v4

    invoke-static {v3, v4}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljxl/biff/DVParser;->getLastColumn()I

    move-result v3

    invoke-virtual {v1}, Ljxl/biff/DVParser;->getLastRow()I

    move-result v1

    invoke-static {v3, v1}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because the selected cell "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not the top left cell in the range"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .line 2871
    :cond_3
    invoke-virtual {v1}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result p1

    :goto_0
    invoke-virtual {v1}, Ljxl/biff/DVParser;->getLastRow()I

    move-result v0

    if-gt p1, v0, :cond_6

    .line 2873
    invoke-virtual {v1}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v0

    :goto_1
    invoke-virtual {v1}, Ljxl/biff/DVParser;->getLastColumn()I

    move-result v2

    if-gt v0, v2, :cond_5

    .line 2875
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2881
    invoke-virtual {v2}, Ljxl/write/biff/CellValue;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/write/WritableCellFeatures;->removeSharedDataValidation()V

    .line 2882
    invoke-virtual {v2}, Ljxl/write/biff/CellValue;->removeCellFeatures()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2889
    :cond_6
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz p1, :cond_7

    .line 2891
    invoke-virtual {v1}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v0

    invoke-virtual {v1}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result v2

    invoke-virtual {v1}, Ljxl/biff/DVParser;->getLastColumn()I

    move-result v3

    invoke-virtual {v1}, Ljxl/biff/DVParser;->getLastRow()I

    move-result v1

    invoke-virtual {p1, v0, v2, v3, v1}, Ljxl/biff/DataValidation;->removeSharedDataValidation(IIII)V

    :cond_7
    :goto_2
    return-void
.end method

.method public setColumnGroup(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    if-ge p2, p1, :cond_0

    .line 1947
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    const-string v1, "Cannot merge cells - top and bottom rows incorrectly specified"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_2

    .line 1953
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getColumnInfo(I)Ljxl/write/biff/ColumnInfoRecord;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1959
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->setColumnView(ILjxl/CellView;)V

    .line 1960
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getColumnInfo(I)Ljxl/write/biff/ColumnInfoRecord;

    move-result-object v0

    .line 1963
    :cond_1
    invoke-virtual {v0}, Ljxl/write/biff/ColumnInfoRecord;->incrementOutlineLevel()V

    .line 1964
    invoke-virtual {v0, p3}, Ljxl/write/biff/ColumnInfoRecord;->setCollapsed(Z)V

    .line 1965
    iget v1, p0, Ljxl/write/biff/WritableSheetImpl;->maxColumnOutlineLevel:I

    invoke-virtual {v0}, Ljxl/write/biff/ColumnInfoRecord;->getOutlineLevel()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljxl/write/biff/WritableSheetImpl;->maxColumnOutlineLevel:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setColumnView(II)V
    .locals 1

    .line 1345
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    mul-int/lit16 p2, p2, 0x100

    .line 1346
    invoke-virtual {v0, p2}, Ljxl/CellView;->setSize(I)V

    .line 1347
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->setColumnView(ILjxl/CellView;)V

    return-void
.end method

.method public setColumnView(IILjxl/format/CellFormat;)V
    .locals 1

    .line 1360
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    mul-int/lit16 p2, p2, 0x100

    .line 1361
    invoke-virtual {v0, p2}, Ljxl/CellView;->setSize(I)V

    .line 1362
    invoke-virtual {v0, p3}, Ljxl/CellView;->setFormat(Ljxl/format/CellFormat;)V

    .line 1363
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->setColumnView(ILjxl/CellView;)V

    return-void
.end method

.method public setColumnView(ILjxl/CellView;)V
    .locals 4

    .line 1374
    invoke-virtual {p2}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v0

    check-cast v0, Ljxl/biff/XFRecord;

    if-nez v0, :cond_0

    .line 1377
    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v0

    .line 1378
    invoke-virtual {v0}, Ljxl/write/biff/Styles;->getNormalStyle()Ljxl/write/WritableCellFormat;

    move-result-object v0

    .line 1383
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1385
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1, v0}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 1388
    :cond_1
    invoke-virtual {p2}, Ljxl/CellView;->depUsed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljxl/CellView;->getDimension()I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljxl/CellView;->getSize()I

    move-result v1

    .line 1390
    :goto_0
    invoke-virtual {p2}, Ljxl/CellView;->isAutosize()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1392
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_3
    new-instance v2, Ljxl/write/biff/ColumnInfoRecord;

    invoke-direct {v2, p1, v1, v0}, Ljxl/write/biff/ColumnInfoRecord;-><init>(IILjxl/biff/XFRecord;)V

    .line 1399
    invoke-virtual {p2}, Ljxl/CellView;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 1401
    invoke-virtual {v2, v0}, Ljxl/write/biff/ColumnInfoRecord;->setHidden(Z)V

    .line 1404
    :cond_4
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1406
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1410
    :cond_5
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 1411
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 1416
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    const-string v1, "Maximum number of format records exceeded.  Using default format."

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1419
    new-instance v0, Ljxl/write/biff/ColumnInfoRecord;

    invoke-virtual {p2}, Ljxl/CellView;->getDimension()I

    move-result p2

    mul-int/lit16 p2, p2, 0x100

    sget-object v1, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-direct {v0, p1, p2, v1}, Ljxl/write/biff/ColumnInfoRecord;-><init>(IILjxl/biff/XFRecord;)V

    .line 1421
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1423
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method setComboBox(Ljxl/biff/drawing/ComboBox;)V
    .locals 0

    .line 2610
    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->comboBox:Ljxl/biff/drawing/ComboBox;

    return-void
.end method

.method public setFooter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2041
    new-instance v0, Ljxl/HeaderFooter;

    invoke-direct {v0}, Ljxl/HeaderFooter;-><init>()V

    .line 2042
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getLeft()Ljxl/HeaderFooter$Contents;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 2043
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getCentre()Ljxl/HeaderFooter$Contents;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getRight()Ljxl/HeaderFooter$Contents;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 2045
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1, v0}, Ljxl/SheetSettings;->setFooter(Ljxl/HeaderFooter;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2024
    new-instance v0, Ljxl/HeaderFooter;

    invoke-direct {v0}, Ljxl/HeaderFooter;-><init>()V

    .line 2025
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getLeft()Ljxl/HeaderFooter$Contents;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 2026
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getCentre()Ljxl/HeaderFooter$Contents;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getRight()Ljxl/HeaderFooter$Contents;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 2028
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1, v0}, Ljxl/SheetSettings;->setHeader(Ljxl/HeaderFooter;)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 1

    .line 1303
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0, p1}, Ljxl/SheetSettings;->setHidden(Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1292
    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->name:Ljava/lang/String;

    return-void
.end method

.method public setPageSetup(Ljxl/format/PageOrientation;)V
    .locals 1

    .line 2056
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0, p1}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    return-void
.end method

.method public setPageSetup(Ljxl/format/PageOrientation;DD)V
    .locals 1

    .line 2069
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0, p1}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    .line 2070
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1, p2, p3}, Ljxl/SheetSettings;->setHeaderMargin(D)V

    .line 2071
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1, p4, p5}, Ljxl/SheetSettings;->setFooterMargin(D)V

    return-void
.end method

.method public setPageSetup(Ljxl/format/PageOrientation;Ljxl/format/PaperSize;DD)V
    .locals 1

    .line 2086
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0, p2}, Ljxl/SheetSettings;->setPaperSize(Ljxl/format/PaperSize;)V

    .line 2087
    iget-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p2, p1}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    .line 2088
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1, p3, p4}, Ljxl/SheetSettings;->setHeaderMargin(D)V

    .line 2089
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1, p5, p6}, Ljxl/SheetSettings;->setFooterMargin(D)V

    return-void
.end method

.method public setProtected(Z)V
    .locals 1

    .line 1314
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0, p1}, Ljxl/SheetSettings;->setProtected(Z)V

    return-void
.end method

.method public setRowGroup(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    if-ge p2, p1, :cond_0

    .line 1879
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    const-string v1, "Cannot merge cells - top and bottom rows incorrectly specified"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_1

    .line 1885
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 1886
    iget v1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    .line 1887
    invoke-virtual {v0}, Ljxl/write/biff/RowRecord;->incrementOutlineLevel()V

    .line 1888
    invoke-virtual {v0, p3}, Ljxl/write/biff/RowRecord;->setCollapsed(Z)V

    .line 1889
    iget v1, p0, Ljxl/write/biff/WritableSheetImpl;->maxRowOutlineLevel:I

    invoke-virtual {v0}, Ljxl/write/biff/RowRecord;->getOutlineLevel()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljxl/write/biff/WritableSheetImpl;->maxRowOutlineLevel:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRowView(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1439
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    .line 1440
    invoke-virtual {v0, p2}, Ljxl/CellView;->setSize(I)V

    const/4 p2, 0x0

    .line 1441
    invoke-virtual {v0, p2}, Ljxl/CellView;->setHidden(Z)V

    .line 1442
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->setRowView(ILjxl/CellView;)V

    return-void
.end method

.method public setRowView(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1475
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    .line 1476
    invoke-virtual {v0, p2}, Ljxl/CellView;->setSize(I)V

    .line 1477
    invoke-virtual {v0, p3}, Ljxl/CellView;->setHidden(Z)V

    .line 1478
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->setRowView(ILjxl/CellView;)V

    return-void
.end method

.method public setRowView(ILjxl/CellView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1490
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v0

    .line 1492
    invoke-virtual {p2}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v1

    check-cast v1, Ljxl/biff/XFRecord;

    if-eqz v1, :cond_0

    .line 1498
    :try_start_0
    invoke-virtual {v1}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1500
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v2, v1}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V
    :try_end_0
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1506
    :catch_0
    sget-object v1, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    const-string v2, "Maximum number of format records exceeded.  Using default format."

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    move-object v6, v1

    .line 1512
    invoke-virtual {p2}, Ljxl/CellView;->getSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljxl/CellView;->isHidden()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Ljxl/write/biff/RowRecord;->setRowDetails(IZZIZLjxl/biff/XFRecord;)V

    .line 1518
    iget p2, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    return-void
.end method

.method public setRowView(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1456
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    .line 1457
    invoke-virtual {v0, p2}, Ljxl/CellView;->setHidden(Z)V

    .line 1458
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->setRowView(ILjxl/CellView;)V

    return-void
.end method

.method public setSelected()V
    .locals 1

    .line 1323
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/SheetSettings;->setSelected()V

    return-void
.end method

.method public unmergeCells(Ljxl/Range;)V
    .locals 1

    .line 2011
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/MergedCells;->unmergeCells(Ljxl/Range;)V

    return-void
.end method

.method public unsetColumnGroup(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    if-ge p2, p1, :cond_0

    .line 1983
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    const-string v1, "Cannot merge cells - top and bottom rows incorrectly specified"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_1

    .line 1989
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getColumnInfo(I)Ljxl/write/biff/ColumnInfoRecord;

    move-result-object v0

    .line 1990
    invoke-virtual {v0}, Ljxl/write/biff/ColumnInfoRecord;->decrementOutlineLevel()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1994
    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->maxColumnOutlineLevel:I

    .line 1995
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1997
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljxl/write/biff/ColumnInfoRecord;

    .line 1998
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->maxColumnOutlineLevel:I

    invoke-virtual {p2}, Ljxl/write/biff/ColumnInfoRecord;->getOutlineLevel()I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Ljxl/write/biff/WritableSheetImpl;->maxColumnOutlineLevel:I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public unsetRowGroup(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    if-ge p2, p1, :cond_0

    .line 1907
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    const-string v1, "Cannot merge cells - top and bottom rows incorrectly specified"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1912
    :cond_0
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-lt p2, v0, :cond_1

    .line 1914
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is greater than the sheet bounds"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1916
    iget p2, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    add-int/lit8 p2, p2, -0x1

    :cond_1
    :goto_0
    if-gt p1, p2, :cond_2

    .line 1921
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljxl/write/biff/RowRecord;->decrementOutlineLevel()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1925
    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->maxRowOutlineLevel:I

    .line 1926
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length p1, p1

    :goto_1
    add-int/lit8 p2, p1, -0x1

    if-lez p1, :cond_3

    .line 1928
    iget p1, p0, Ljxl/write/biff/WritableSheetImpl;->maxRowOutlineLevel:I

    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljxl/write/biff/RowRecord;->getOutlineLevel()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->maxRowOutlineLevel:I

    move p1, p2

    goto :goto_1

    :cond_3
    return-void
.end method

.method public write()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1530
    iget-boolean v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawingsModified:Z

    .line 1531
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1533
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/biff/drawing/DrawingGroup;->hasDrawingsOmitted()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1536
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1538
    invoke-direct {p0}, Ljxl/write/biff/WritableSheetImpl;->autosizeColumns()V

    .line 1541
    :cond_1
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    iget-object v4, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    iget-object v5, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    iget-object v6, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    iget-object v7, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    iget-object v8, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    iget v9, p0, Ljxl/write/biff/WritableSheetImpl;->maxRowOutlineLevel:I

    iget v10, p0, Ljxl/write/biff/WritableSheetImpl;->maxColumnOutlineLevel:I

    invoke-virtual/range {v2 .. v10}, Ljxl/write/biff/SheetWriter;->setWriteData([Ljxl/write/biff/RowRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljxl/write/biff/MergedCells;Ljava/util/TreeSet;II)V

    .line 1549
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getRows()I

    move-result v2

    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getColumns()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljxl/write/biff/SheetWriter;->setDimensions(II)V

    .line 1550
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1, v2}, Ljxl/write/biff/SheetWriter;->setSettings(Ljxl/SheetSettings;)V

    .line 1551
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->plsRecord:Ljxl/write/biff/PLSRecord;

    invoke-virtual {v1, v2}, Ljxl/write/biff/SheetWriter;->setPLS(Ljxl/write/biff/PLSRecord;)V

    .line 1552
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljxl/write/biff/SheetWriter;->setDrawings(Ljava/util/ArrayList;Z)V

    .line 1553
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    invoke-virtual {v0, v1}, Ljxl/write/biff/SheetWriter;->setButtonPropertySet(Ljxl/write/biff/ButtonPropertySetRecord;)V

    .line 1554
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljxl/write/biff/SheetWriter;->setDataValidation(Ljxl/biff/DataValidation;Ljava/util/ArrayList;)V

    .line 1555
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljxl/write/biff/SheetWriter;->setConditionalFormats(Ljava/util/ArrayList;)V

    .line 1556
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->autoFilter:Ljxl/biff/AutoFilter;

    invoke-virtual {v0, v1}, Ljxl/write/biff/SheetWriter;->setAutoFilter(Ljxl/biff/AutoFilter;)V

    .line 1558
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->write()V

    return-void
.end method
