.class final Ljxl/write/biff/SheetWriter;
.super Ljava/lang/Object;
.source "SheetWriter.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

.field private chartOnly:Z

.field private columnBreaks:Ljava/util/ArrayList;

.field private columnFormats:Ljava/util/TreeSet;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

.field private footer:Ljxl/write/biff/FooterRecord;

.field private header:Ljxl/write/biff/HeaderRecord;

.field private hyperlinks:Ljava/util/ArrayList;

.field private maxColumnOutlineLevel:I

.field private maxRowOutlineLevel:I

.field private mergedCells:Ljxl/write/biff/MergedCells;

.field private numCols:I

.field private numRows:I

.field private outputFile:Ljxl/write/biff/File;

.field private plsRecord:Ljxl/write/biff/PLSRecord;

.field private rowBreaks:Ljava/util/ArrayList;

.field private rows:[Ljxl/write/biff/RowRecord;

.field private settings:Ljxl/SheetSettings;

.field private sheet:Ljxl/write/biff/WritableSheetImpl;

.field private validatedCells:Ljava/util/ArrayList;

.field private workbookSettings:Ljxl/WorkbookSettings;

.field private workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Ljxl/write/biff/SheetWriter;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SheetWriter;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/write/biff/File;Ljxl/write/biff/WritableSheetImpl;Ljxl/WorkbookSettings;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    .line 195
    iput-object p2, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    .line 196
    new-instance p1, Ljxl/biff/WorkspaceInformationRecord;

    invoke-direct {p1}, Ljxl/biff/WorkspaceInformationRecord;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    .line 197
    iput-object p3, p0, Ljxl/write/biff/SheetWriter;->workbookSettings:Ljxl/WorkbookSettings;

    const/4 p1, 0x0

    .line 198
    iput-boolean p1, p0, Ljxl/write/biff/SheetWriter;->chartOnly:Z

    .line 199
    new-instance p1, Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-direct {p1, p3}, Ljxl/biff/drawing/SheetDrawingWriter;-><init>(Ljxl/WorkbookSettings;)V

    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    return-void
.end method

.method private getColumn(I)[Ljxl/Cell;
    .locals 6

    .line 1017
    iget v0, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_1

    if-nez v3, :cond_1

    .line 1021
    iget-object v4, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v5, v4, v0

    if-eqz v5, :cond_0

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 1033
    new-array v1, v1, [Ljxl/Cell;

    :goto_1
    if-gt v2, v0, :cond_3

    .line 1037
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v4, v3, v2

    if-eqz v4, :cond_2

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private writeDataValidation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/biff/DataValidation;->write(Ljxl/write/biff/File;)V

    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    if-nez v0, :cond_2

    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1121
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/ComboBox;->getObjectId()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1123
    :goto_0
    new-instance v1, Ljxl/biff/DataValidation;

    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v2

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v3

    iget-object v4, p0, Ljxl/write/biff/SheetWriter;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2, v3, v4}, Ljxl/biff/DataValidation;-><init>(ILjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    .line 1129
    :cond_2
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/CellValue;

    .line 1132
    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v2

    .line 1137
    invoke-virtual {v2}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/biff/DVParser;->copied()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1139
    invoke-virtual {v2}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1142
    new-instance v1, Ljxl/biff/DataValiditySettingsRecord;

    invoke-virtual {v2}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/biff/DVParser;)V

    .line 1144
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    invoke-virtual {v2, v1}, Ljxl/biff/DataValidation;->add(Ljxl/biff/DataValiditySettingsRecord;)V

    goto :goto_1

    .line 1150
    :cond_4
    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result v3

    invoke-virtual {v2}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getRow()I

    move-result v1

    invoke-virtual {v2}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 1153
    new-instance v1, Ljxl/biff/DataValiditySettingsRecord;

    invoke-virtual {v2}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/biff/DVParser;)V

    .line 1155
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    invoke-virtual {v2, v1}, Ljxl/biff/DataValidation;->add(Ljxl/biff/DataValiditySettingsRecord;)V

    goto :goto_1

    .line 1160
    :cond_5
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/biff/DataValidation;->write(Ljxl/write/biff/File;)V

    return-void
.end method


# virtual methods
.method checkMergedBorders()V
    .locals 13

    .line 734
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0}, Ljxl/write/biff/MergedCells;->getMergedCells()[Ljxl/Range;

    move-result-object v0

    .line 735
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 736
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_16

    .line 738
    aget-object v3, v0, v2

    .line 739
    invoke-interface {v3}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v4

    .line 740
    invoke-interface {v4}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v5

    check-cast v5, Ljxl/biff/XFRecord;

    if-eqz v5, :cond_15

    .line 742
    invoke-virtual {v5}, Ljxl/biff/XFRecord;->hasBorders()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    invoke-virtual {v5}, Ljxl/biff/XFRecord;->isRead()Z

    move-result v6

    if-nez v6, :cond_15

    .line 748
    :try_start_0
    new-instance v6, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v6, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 749
    invoke-interface {v3}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v3

    .line 751
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v9, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v10, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 752
    sget-object v8, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v9, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v9}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v9

    sget-object v10, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 755
    sget-object v8, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v9, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v9}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v9

    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 759
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 761
    sget-object v8, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v9, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v9}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v9

    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 766
    :cond_0
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v8

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 768
    sget-object v8, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v9, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v9}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v9

    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 773
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 776
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/write/biff/CellXFRecord;

    goto :goto_1

    .line 780
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    :goto_1
    move-object v8, v4

    check-cast v8, Ljxl/write/WritableCell;

    invoke-interface {v8, v6}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 785
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    if-le v6, v8, :cond_7

    .line 788
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v8

    if-eq v6, v8, :cond_4

    .line 790
    new-instance v6, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v6, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 791
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v10, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v11, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 792
    sget-object v8, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 795
    sget-object v8, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 799
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v9, :cond_3

    .line 802
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/write/biff/CellXFRecord;

    goto :goto_2

    .line 806
    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    :goto_2
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v10, Ljxl/write/Blank;

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v11

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v12

    invoke-direct {v10, v11, v12, v6}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v8, v10}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 815
    :cond_4
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v6

    add-int/2addr v6, v7

    :goto_3
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v8

    if-ge v6, v8, :cond_7

    .line 817
    new-instance v8, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v8, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 818
    sget-object v10, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v11, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v12, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 819
    sget-object v10, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 823
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v10

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v11

    if-ne v10, v11, :cond_5

    .line 825
    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 830
    :cond_5
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-eq v10, v9, :cond_6

    .line 833
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxl/write/biff/CellXFRecord;

    goto :goto_4

    .line 837
    :cond_6
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    :goto_4
    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v11, Ljxl/write/Blank;

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v12

    invoke-direct {v11, v12, v6, v8}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v10, v11}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 845
    :cond_7
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v8

    if-le v6, v8, :cond_e

    .line 847
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    if-eq v6, v8, :cond_9

    .line 850
    new-instance v6, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v6, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 851
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v10, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v11, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 852
    sget-object v8, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 855
    sget-object v8, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 858
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v9, :cond_8

    .line 861
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/write/biff/CellXFRecord;

    goto :goto_5

    .line 865
    :cond_8
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    :goto_5
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v10, Ljxl/write/Blank;

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v11

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v12

    invoke-direct {v10, v11, v12, v6}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v8, v10}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 873
    :cond_9
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v6

    add-int/2addr v6, v7

    .line 874
    :goto_6
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v8

    if-ge v6, v8, :cond_b

    .line 876
    new-instance v8, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v8, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 877
    sget-object v10, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v11, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v12, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 878
    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 882
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-eq v10, v9, :cond_a

    .line 885
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxl/write/biff/CellXFRecord;

    goto :goto_7

    .line 889
    :cond_a
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    :goto_7
    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v11, Ljxl/write/Blank;

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v12

    invoke-direct {v11, v12, v6, v8}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v10, v11}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 896
    :cond_b
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v6

    add-int/2addr v6, v7

    .line 897
    :goto_8
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v8

    if-ge v6, v8, :cond_e

    .line 899
    new-instance v8, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v8, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 900
    sget-object v10, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v11, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v12, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 901
    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 905
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v10

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v11

    if-ne v10, v11, :cond_c

    .line 907
    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 912
    :cond_c
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-eq v10, v9, :cond_d

    .line 915
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxl/write/biff/CellXFRecord;

    goto :goto_9

    .line 919
    :cond_d
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    :goto_9
    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v11, Ljxl/write/Blank;

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v12

    invoke-direct {v11, v6, v12, v8}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v10, v11}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 927
    :cond_e
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v8

    if-gt v6, v8, :cond_f

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    if-le v6, v8, :cond_15

    .line 931
    :cond_f
    new-instance v6, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v6, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 932
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v10, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v11, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 933
    sget-object v8, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 936
    sget-object v8, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 940
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v8

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v10

    if-ne v8, v10, :cond_10

    .line 942
    sget-object v8, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 947
    :cond_10
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v8

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v10

    if-ne v8, v10, :cond_11

    .line 949
    sget-object v8, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 954
    :cond_11
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v9, :cond_12

    .line 957
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/write/biff/CellXFRecord;

    goto :goto_a

    .line 961
    :cond_12
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    :goto_a
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v10, Ljxl/write/Blank;

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v11

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v12

    invoke-direct {v10, v11, v12, v6}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v8, v10}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 969
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v6

    add-int/2addr v6, v7

    .line 970
    :goto_b
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v7

    if-ge v6, v7, :cond_15

    .line 972
    new-instance v7, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v7, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 973
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v10, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v11, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v7, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 974
    sget-object v8, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v7, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 978
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v10

    if-ne v8, v10, :cond_13

    .line 980
    sget-object v8, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v7, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 985
    :cond_13
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v9, :cond_14

    .line 988
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljxl/write/biff/CellXFRecord;

    goto :goto_c

    .line 992
    :cond_14
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    :goto_c
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v10, Ljxl/write/Blank;

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v11

    invoke-direct {v10, v6, v11, v7}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v8, v10}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V
    :try_end_0
    .catch Ljxl/write/WriteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :catch_0
    move-exception v3

    .line 1002
    sget-object v4, Ljxl/write/biff/SheetWriter;->logger:Ljxl/common/Logger;

    invoke-virtual {v3}, Ljxl/write/WriteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_16
    return-void
.end method

.method getCharts()[Ljxl/biff/drawing/Chart;
    .locals 1

    .line 723
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-virtual {v0}, Ljxl/biff/drawing/SheetDrawingWriter;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v0

    return-object v0
.end method

.method final getFooter()Ljxl/write/biff/FooterRecord;
    .locals 1

    .line 619
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->footer:Ljxl/write/biff/FooterRecord;

    return-object v0
.end method

.method final getHeader()Ljxl/write/biff/HeaderRecord;
    .locals 1

    .line 609
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->header:Ljxl/write/biff/HeaderRecord;

    return-object v0
.end method

.method getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;
    .locals 1

    .line 678
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    return-object v0
.end method

.method setAutoFilter(Ljxl/biff/AutoFilter;)V
    .locals 0

    .line 1100
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->autoFilter:Ljxl/biff/AutoFilter;

    return-void
.end method

.method setButtonPropertySet(Ljxl/write/biff/ButtonPropertySetRecord;)V
    .locals 0

    .line 1068
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    return-void
.end method

.method setChartOnly()V
    .locals 1

    const/4 v0, 0x1

    .line 1048
    iput-boolean v0, p0, Ljxl/write/biff/SheetWriter;->chartOnly:Z

    return-void
.end method

.method setCharts([Ljxl/biff/drawing/Chart;)V
    .locals 1

    .line 702
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-virtual {v0, p1}, Ljxl/biff/drawing/SheetDrawingWriter;->setCharts([Ljxl/biff/drawing/Chart;)V

    return-void
.end method

.method setConditionalFormats(Ljava/util/ArrayList;)V
    .locals 0

    .line 1090
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->conditionalFormats:Ljava/util/ArrayList;

    return-void
.end method

.method setDataValidation(Ljxl/biff/DataValidation;Ljava/util/ArrayList;)V
    .locals 0

    .line 1079
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    .line 1080
    iput-object p2, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    return-void
.end method

.method setDimensions(II)V
    .locals 0

    .line 656
    iput p1, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    .line 657
    iput p2, p0, Ljxl/write/biff/SheetWriter;->numCols:I

    return-void
.end method

.method setDrawings(Ljava/util/ArrayList;Z)V
    .locals 1

    .line 713
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-virtual {v0, p1, p2}, Ljxl/biff/drawing/SheetDrawingWriter;->setDrawings(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method setPLS(Ljxl/write/biff/PLSRecord;)V
    .locals 0

    .line 1058
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->plsRecord:Ljxl/write/biff/PLSRecord;

    return-void
.end method

.method setSettings(Ljxl/SheetSettings;)V
    .locals 0

    .line 668
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    return-void
.end method

.method setWorkspaceOptions(Ljxl/biff/WorkspaceInformationRecord;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 690
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    :cond_0
    return-void
.end method

.method setWriteData([Ljxl/write/biff/RowRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljxl/write/biff/MergedCells;Ljava/util/TreeSet;II)V
    .locals 0

    .line 637
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    .line 638
    iput-object p2, p0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    .line 639
    iput-object p3, p0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    .line 640
    iput-object p4, p0, Ljxl/write/biff/SheetWriter;->hyperlinks:Ljava/util/ArrayList;

    .line 641
    iput-object p5, p0, Ljxl/write/biff/SheetWriter;->mergedCells:Ljxl/write/biff/MergedCells;

    .line 642
    iput-object p6, p0, Ljxl/write/biff/SheetWriter;->columnFormats:Ljava/util/TreeSet;

    .line 643
    iput p7, p0, Ljxl/write/biff/SheetWriter;->maxRowOutlineLevel:I

    .line 644
    iput p8, p0, Ljxl/write/biff/SheetWriter;->maxColumnOutlineLevel:I

    return-void
.end method

.method public write()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 215
    iget-boolean v0, p0, Ljxl/write/biff/SheetWriter;->chartOnly:Z

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/SheetDrawingWriter;->write(Ljxl/write/biff/File;)V

    return-void

    .line 221
    :cond_1
    new-instance v0, Ljxl/write/biff/BOFRecord;

    sget-object v3, Ljxl/write/biff/BOFRecord;->sheet:Ljxl/write/biff/BOFRecord$SheetBOF;

    invoke-direct {v0, v3}, Ljxl/write/biff/BOFRecord;-><init>(Ljxl/write/biff/BOFRecord$SheetBOF;)V

    .line 222
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 225
    iget v0, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    div-int/lit8 v3, v0, 0x20

    mul-int/lit8 v4, v3, 0x20

    sub-int/2addr v0, v4

    if-eqz v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 231
    :cond_2
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0}, Ljxl/write/biff/File;->getPos()I

    move-result v0

    .line 235
    new-instance v4, Ljxl/write/biff/IndexRecord;

    iget v5, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    invoke-direct {v4, v2, v5, v3}, Ljxl/write/biff/IndexRecord;-><init>(III)V

    .line 236
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v4}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 238
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getAutomaticFormulaCalculation()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 240
    new-instance v5, Ljxl/write/biff/CalcModeRecord;

    sget-object v6, Ljxl/write/biff/CalcModeRecord;->automatic:Ljxl/write/biff/CalcModeRecord$CalcMode;

    invoke-direct {v5, v6}, Ljxl/write/biff/CalcModeRecord;-><init>(Ljxl/write/biff/CalcModeRecord$CalcMode;)V

    .line 241
    iget-object v6, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v6, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_1

    .line 245
    :cond_3
    new-instance v5, Ljxl/write/biff/CalcModeRecord;

    sget-object v6, Ljxl/write/biff/CalcModeRecord;->manual:Ljxl/write/biff/CalcModeRecord$CalcMode;

    invoke-direct {v5, v6}, Ljxl/write/biff/CalcModeRecord;-><init>(Ljxl/write/biff/CalcModeRecord$CalcMode;)V

    .line 246
    iget-object v6, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v6, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 249
    :goto_1
    new-instance v5, Ljxl/write/biff/CalcCountRecord;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljxl/write/biff/CalcCountRecord;-><init>(I)V

    .line 250
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 252
    new-instance v5, Ljxl/write/biff/RefModeRecord;

    invoke-direct {v5}, Ljxl/write/biff/RefModeRecord;-><init>()V

    .line 253
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 255
    new-instance v5, Ljxl/write/biff/IterationRecord;

    invoke-direct {v5, v2}, Ljxl/write/biff/IterationRecord;-><init>(Z)V

    .line 256
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 258
    new-instance v5, Ljxl/write/biff/DeltaRecord;

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/DeltaRecord;-><init>(D)V

    .line 259
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 261
    new-instance v5, Ljxl/write/biff/SaveRecalcRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getRecalculateFormulasBeforeSave()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/SaveRecalcRecord;-><init>(Z)V

    .line 263
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 265
    new-instance v5, Ljxl/write/biff/PrintHeadersRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getPrintHeaders()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/PrintHeadersRecord;-><init>(Z)V

    .line 267
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 269
    new-instance v5, Ljxl/write/biff/PrintGridLinesRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getPrintGridLines()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/PrintGridLinesRecord;-><init>(Z)V

    .line 271
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 273
    new-instance v5, Ljxl/write/biff/GridSetRecord;

    invoke-direct {v5, v1}, Ljxl/write/biff/GridSetRecord;-><init>(Z)V

    .line 274
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 276
    new-instance v5, Ljxl/write/biff/GuttersRecord;

    invoke-direct {v5}, Ljxl/write/biff/GuttersRecord;-><init>()V

    .line 277
    iget v7, p0, Ljxl/write/biff/SheetWriter;->maxColumnOutlineLevel:I

    add-int/2addr v7, v1

    invoke-virtual {v5, v7}, Ljxl/write/biff/GuttersRecord;->setMaxColumnOutline(I)V

    .line 278
    iget v7, p0, Ljxl/write/biff/SheetWriter;->maxRowOutlineLevel:I

    add-int/2addr v7, v1

    invoke-virtual {v5, v7}, Ljxl/write/biff/GuttersRecord;->setMaxRowOutline(I)V

    .line 280
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 282
    new-instance v5, Ljxl/write/biff/DefaultRowHeightRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result v7

    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v8}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result v8

    const/16 v9, 0xff

    if-eq v8, v9, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    invoke-direct {v5, v7, v8}, Ljxl/write/biff/DefaultRowHeightRecord;-><init>(IZ)V

    .line 286
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 288
    iget v5, p0, Ljxl/write/biff/SheetWriter;->maxRowOutlineLevel:I

    if-lez v5, :cond_5

    .line 290
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    invoke-virtual {v5, v1}, Ljxl/biff/WorkspaceInformationRecord;->setRowOutlines(Z)V

    .line 293
    :cond_5
    iget v5, p0, Ljxl/write/biff/SheetWriter;->maxColumnOutlineLevel:I

    if-lez v5, :cond_6

    .line 295
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    invoke-virtual {v5, v1}, Ljxl/biff/WorkspaceInformationRecord;->setColumnOutlines(Z)V

    .line 298
    :cond_6
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getFitToPages()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljxl/biff/WorkspaceInformationRecord;->setFitToPages(Z)V

    .line 299
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    invoke-virtual {v5, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 301
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 303
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v7, v5, [I

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_7

    .line 307
    iget-object v9, p0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 310
    :cond_7
    new-instance v5, Ljxl/write/biff/HorizontalPageBreaksRecord;

    invoke-direct {v5, v7}, Ljxl/write/biff/HorizontalPageBreaksRecord;-><init>([I)V

    .line 311
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 314
    :cond_8
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 316
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v7, v5, [I

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v5, :cond_9

    .line 320
    iget-object v9, p0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 323
    :cond_9
    new-instance v5, Ljxl/write/biff/VerticalPageBreaksRecord;

    invoke-direct {v5, v7}, Ljxl/write/biff/VerticalPageBreaksRecord;-><init>([I)V

    .line 324
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 327
    :cond_a
    new-instance v5, Ljxl/write/biff/HeaderRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getHeader()Ljxl/HeaderFooter;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/HeaderFooter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljxl/write/biff/HeaderRecord;-><init>(Ljava/lang/String;)V

    .line 328
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 330
    new-instance v5, Ljxl/write/biff/FooterRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getFooter()Ljxl/HeaderFooter;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/HeaderFooter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljxl/write/biff/FooterRecord;-><init>(Ljava/lang/String;)V

    .line 331
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 333
    new-instance v5, Ljxl/write/biff/HorizontalCentreRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isHorizontalCentre()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/HorizontalCentreRecord;-><init>(Z)V

    .line 335
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 337
    new-instance v5, Ljxl/write/biff/VerticalCentreRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isVerticalCentre()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/VerticalCentreRecord;-><init>(Z)V

    .line 339
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 342
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getLeftMargin()D

    move-result-wide v7

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getDefaultWidthMargin()D

    move-result-wide v9

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_b

    .line 344
    new-instance v5, Ljxl/write/biff/LeftMarginRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getLeftMargin()D

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/LeftMarginRecord;-><init>(D)V

    .line 345
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 348
    :cond_b
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getRightMargin()D

    move-result-wide v7

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getDefaultWidthMargin()D

    move-result-wide v9

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_c

    .line 350
    new-instance v5, Ljxl/write/biff/RightMarginRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getRightMargin()D

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/RightMarginRecord;-><init>(D)V

    .line 351
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 354
    :cond_c
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getTopMargin()D

    move-result-wide v7

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getDefaultHeightMargin()D

    move-result-wide v9

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_d

    .line 356
    new-instance v5, Ljxl/write/biff/TopMarginRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getTopMargin()D

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/TopMarginRecord;-><init>(D)V

    .line 357
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 360
    :cond_d
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getBottomMargin()D

    move-result-wide v7

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getDefaultHeightMargin()D

    move-result-wide v9

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_e

    .line 362
    new-instance v5, Ljxl/write/biff/BottomMarginRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getBottomMargin()D

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/BottomMarginRecord;-><init>(D)V

    .line 363
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 366
    :cond_e
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->plsRecord:Ljxl/write/biff/PLSRecord;

    if-eqz v5, :cond_f

    .line 368
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 371
    :cond_f
    new-instance v5, Ljxl/write/biff/SetupRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-direct {v5, v7}, Ljxl/write/biff/SetupRecord;-><init>(Ljxl/SheetSettings;)V

    .line 372
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 374
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->isProtected()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 376
    new-instance v5, Ljxl/write/biff/ProtectRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isProtected()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/ProtectRecord;-><init>(Z)V

    .line 377
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 379
    new-instance v5, Ljxl/write/biff/ScenarioProtectRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isProtected()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/ScenarioProtectRecord;-><init>(Z)V

    .line 381
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 383
    new-instance v5, Ljxl/write/biff/ObjectProtectRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isProtected()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/ObjectProtectRecord;-><init>(Z)V

    .line 385
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 387
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 389
    new-instance v5, Ljxl/write/biff/PasswordRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljxl/write/biff/PasswordRecord;-><init>(Ljava/lang/String;)V

    .line 390
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_5

    .line 392
    :cond_10
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getPasswordHash()I

    move-result v5

    if-eqz v5, :cond_11

    .line 394
    new-instance v5, Ljxl/write/biff/PasswordRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getPasswordHash()I

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/PasswordRecord;-><init>(I)V

    .line 395
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 399
    :cond_11
    :goto_5
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5}, Ljxl/write/biff/File;->getPos()I

    move-result v5

    invoke-virtual {v4, v5}, Ljxl/write/biff/IndexRecord;->setDataStartPosition(I)V

    .line 400
    new-instance v5, Ljxl/write/biff/DefaultColumnWidth;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getDefaultColumnWidth()I

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/DefaultColumnWidth;-><init>(I)V

    .line 402
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 405
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v5}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v5

    invoke-virtual {v5}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v5

    invoke-virtual {v5}, Ljxl/write/biff/Styles;->getNormalStyle()Ljxl/write/WritableCellFormat;

    move-result-object v5

    .line 407
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v7}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/write/biff/Styles;->getDefaultDateFormat()Ljxl/write/WritableCellFormat;

    move-result-object v7

    .line 412
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 414
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljxl/write/biff/ColumnInfoRecord;

    .line 417
    invoke-virtual {v9}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v10

    const/16 v11, 0x100

    if-ge v10, v11, :cond_13

    .line 419
    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v10, v9}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 422
    :cond_13
    invoke-virtual {v9}, Ljxl/write/biff/ColumnInfoRecord;->getCellFormat()Ljxl/biff/XFRecord;

    move-result-object v10

    if-eq v10, v5, :cond_12

    .line 424
    invoke-virtual {v9}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v12

    if-ge v12, v11, :cond_12

    .line 427
    invoke-virtual {v9}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v9

    invoke-direct {p0, v9}, Ljxl/write/biff/SheetWriter;->getColumn(I)[Ljxl/Cell;

    move-result-object v9

    const/4 v11, 0x0

    .line 429
    :goto_6
    array-length v12, v9

    if-ge v11, v12, :cond_12

    .line 431
    aget-object v12, v9, v11

    if-eqz v12, :cond_15

    aget-object v12, v9, v11

    invoke-interface {v12}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v12

    if-eq v12, v5, :cond_14

    aget-object v12, v9, v11

    invoke-interface {v12}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v12

    if-ne v12, v7, :cond_15

    .line 437
    :cond_14
    aget-object v12, v9, v11

    check-cast v12, Ljxl/write/WritableCell;

    invoke-interface {v12, v10}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    :cond_15
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 444
    :cond_16
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->autoFilter:Ljxl/biff/AutoFilter;

    if-eqz v5, :cond_17

    .line 446
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v7}, Ljxl/biff/AutoFilter;->write(Ljxl/write/biff/File;)V

    .line 449
    :cond_17
    new-instance v5, Ljxl/write/biff/DimensionRecord;

    iget v7, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    iget v8, p0, Ljxl/write/biff/SheetWriter;->numCols:I

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/DimensionRecord;-><init>(II)V

    .line 450
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v3, :cond_1c

    .line 455
    new-instance v7, Ljxl/write/biff/DBCellRecord;

    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-direct {v7, v8}, Ljxl/write/biff/DBCellRecord;-><init>(I)V

    .line 457
    iget v8, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    mul-int/lit8 v9, v5, 0x20

    sub-int/2addr v8, v9

    const/16 v10, 0x20

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v10, v9

    const/4 v11, 0x1

    :goto_8
    add-int v12, v9, v8

    if-ge v10, v12, :cond_19

    .line 463
    iget-object v12, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v13, v12, v10

    if-eqz v13, :cond_18

    .line 465
    aget-object v12, v12, v10

    iget-object v13, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v12, v13}, Ljxl/write/biff/RowRecord;->write(Ljxl/write/biff/File;)V

    if-eqz v11, :cond_18

    .line 468
    iget-object v11, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v11}, Ljxl/write/biff/File;->getPos()I

    move-result v11

    invoke-virtual {v7, v11}, Ljxl/write/biff/DBCellRecord;->setCellOffset(I)V

    const/4 v11, 0x0

    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_19
    :goto_9
    if-ge v9, v12, :cond_1b

    .line 477
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v8, v8, v9

    if-eqz v8, :cond_1a

    .line 479
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-virtual {v7, v8}, Ljxl/write/biff/DBCellRecord;->addCellRowPosition(I)V

    .line 480
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v8, v8, v9

    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8, v10}, Ljxl/write/biff/RowRecord;->writeCells(Ljxl/write/biff/File;)V

    :cond_1a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 485
    :cond_1b
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-virtual {v4, v8}, Ljxl/write/biff/IndexRecord;->addBlockPosition(I)V

    .line 489
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-virtual {v7, v8}, Ljxl/write/biff/DBCellRecord;->setPosition(I)V

    .line 490
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 494
    :cond_1c
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 496
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v3}, Ljxl/biff/drawing/SheetDrawingWriter;->write(Ljxl/write/biff/File;)V

    .line 499
    :cond_1d
    new-instance v1, Ljxl/write/biff/Window2Record;

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-direct {v1, v3}, Ljxl/write/biff/Window2Record;-><init>(Ljxl/SheetSettings;)V

    .line 500
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 503
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_a

    .line 549
    :cond_1e
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v3, Ljxl/write/biff/SelectionRecord;->upperLeft:Ljxl/write/biff/SelectionRecord$PaneType;

    invoke-direct {v1, v3, v2, v2}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 551
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto/16 :goto_b

    .line 506
    :cond_1f
    :goto_a
    new-instance v1, Ljxl/write/biff/PaneRecord;

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v3

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v5

    invoke-direct {v1, v3, v5}, Ljxl/write/biff/PaneRecord;-><init>(II)V

    .line 508
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 511
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v3, Ljxl/write/biff/SelectionRecord;->upperLeft:Ljxl/write/biff/SelectionRecord$PaneType;

    invoke-direct {v1, v3, v2, v2}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 513
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 516
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v1

    if-eqz v1, :cond_20

    .line 518
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v3, Ljxl/write/biff/SelectionRecord;->upperRight:Ljxl/write/biff/SelectionRecord$PaneType;

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v5

    invoke-direct {v1, v3, v5, v2}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 520
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 524
    :cond_20
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v1

    if-eqz v1, :cond_21

    .line 526
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v3, Ljxl/write/biff/SelectionRecord;->lowerLeft:Ljxl/write/biff/SelectionRecord$PaneType;

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v5

    invoke-direct {v1, v3, v2, v5}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 528
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 532
    :cond_21
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v1

    if-eqz v1, :cond_22

    .line 535
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v2, Ljxl/write/biff/SelectionRecord;->lowerRight:Ljxl/write/biff/SelectionRecord$PaneType;

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v3

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v5

    invoke-direct {v1, v2, v3, v5}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 539
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 542
    :cond_22
    new-instance v1, Ljxl/write/biff/Weird1Record;

    invoke-direct {v1}, Ljxl/write/biff/Weird1Record;-><init>()V

    .line 543
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 555
    :goto_b
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getZoomFactor()I

    move-result v1

    if-eq v1, v6, :cond_23

    .line 557
    new-instance v1, Ljxl/write/biff/SCLRecord;

    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/SheetSettings;->getZoomFactor()I

    move-result v2

    invoke-direct {v1, v2}, Ljxl/write/biff/SCLRecord;-><init>(I)V

    .line 558
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 562
    :cond_23
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->mergedCells:Ljxl/write/biff/MergedCells;

    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v2}, Ljxl/write/biff/MergedCells;->write(Ljxl/write/biff/File;)V

    .line 565
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 567
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 569
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/WritableHyperlink;

    .line 570
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_c

    .line 573
    :cond_24
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    if-eqz v1, :cond_25

    .line 575
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 579
    :cond_25
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    if-nez v1, :cond_26

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 581
    :cond_26
    invoke-direct {p0}, Ljxl/write/biff/SheetWriter;->writeDataValidation()V

    .line 585
    :cond_27
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->conditionalFormats:Ljava/util/ArrayList;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_28

    .line 587
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 589
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/ConditionalFormat;

    .line 590
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v3}, Ljxl/biff/ConditionalFormat;->write(Ljxl/write/biff/File;)V

    goto :goto_d

    .line 594
    :cond_28
    new-instance v1, Ljxl/write/biff/EOFRecord;

    invoke-direct {v1}, Ljxl/write/biff/EOFRecord;-><init>()V

    .line 595
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 599
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v4}, Ljxl/write/biff/IndexRecord;->getData()[B

    move-result-object v2

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v2, v0}, Ljxl/write/biff/File;->setData([BI)V

    return-void
.end method
