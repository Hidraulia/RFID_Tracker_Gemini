.class public Ljxl/demo/Write;
.super Ljava/lang/Object;
.source "Write.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private workbook:Ljxl/write/WritableWorkbook;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Ljxl/demo/Write;->filename:Ljava/lang/String;

    return-void
.end method

.method private writeBordersSheet(Ljxl/write/WritableSheet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 1269
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setProtected(Z)V

    const/16 v0, 0xf

    .line 1271
    invoke-interface {p1, v1, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v2, 0x2

    .line 1272
    invoke-interface {p1, v2, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v3, 0x4

    .line 1273
    invoke-interface {p1, v3, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 1274
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1275
    sget-object v4, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v5, Ljxl/format/BorderLineStyle;->THICK:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v4, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1276
    new-instance v4, Ljxl/write/Label;

    const/4 v5, 0x0

    const-string v6, "Thick left"

    invoke-direct {v4, v1, v5, v6, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1277
    invoke-interface {p1, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1279
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1280
    sget-object v4, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v6, Ljxl/format/BorderLineStyle;->DASHED:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v4, v6}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1281
    new-instance v4, Ljxl/write/Label;

    const-string v6, "Dashed right"

    invoke-direct {v4, v2, v5, v6, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1282
    invoke-interface {p1, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1284
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1285
    sget-object v4, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v5, Ljxl/format/BorderLineStyle;->DOUBLE:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v4, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1286
    new-instance v4, Ljxl/write/Label;

    const-string v5, "Double top"

    invoke-direct {v4, v1, v2, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1287
    invoke-interface {p1, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1289
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1290
    sget-object v4, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v5, Ljxl/format/BorderLineStyle;->HAIR:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v4, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1291
    new-instance v4, Ljxl/write/Label;

    const-string v5, "Hair bottom"

    invoke-direct {v4, v2, v2, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1292
    invoke-interface {p1, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1294
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1295
    sget-object v4, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v5, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v4, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1296
    new-instance v4, Ljxl/write/Label;

    const-string v5, "All thin"

    invoke-direct {v4, v3, v2, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1297
    invoke-interface {p1, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1299
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1300
    sget-object v4, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v5, Ljxl/format/BorderLineStyle;->THICK:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v4, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1301
    sget-object v4, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v5, Ljxl/format/BorderLineStyle;->THICK:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v4, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1302
    new-instance v4, Ljxl/write/Label;

    const/4 v5, 0x6

    const-string v6, "Two borders"

    invoke-direct {v4, v5, v2, v6, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1303
    invoke-interface {p1, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1306
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x14

    const-string v4, "Dislocated cell - after a page break"

    invoke-direct {v0, v2, v2, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1307
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1310
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    sget-object v2, Ljxl/format/PaperSize;->A3:Ljxl/format/PaperSize;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPaperSize(Ljxl/format/PaperSize;)V

    .line 1311
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    sget-object v2, Ljxl/format/PageOrientation;->LANDSCAPE:Ljxl/format/PageOrientation;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    .line 1312
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    sget-object v2, Ljxl/format/PageOrder;->DOWN_THEN_RIGHT:Ljxl/format/PageOrder;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPageOrder(Ljxl/format/PageOrder;)V

    .line 1313
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-virtual {v0, v4, v5}, Ljxl/SheetSettings;->setHeaderMargin(D)V

    .line 1314
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljxl/SheetSettings;->setFooterMargin(D)V

    .line 1316
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-virtual {v0, v4, v5}, Ljxl/SheetSettings;->setTopMargin(D)V

    .line 1317
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljxl/SheetSettings;->setBottomMargin(D)V

    .line 1320
    new-instance v0, Ljxl/HeaderFooter;

    invoke-direct {v0}, Ljxl/HeaderFooter;-><init>()V

    .line 1321
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getCentre()Ljxl/HeaderFooter$Contents;

    move-result-object v2

    const-string v4, "Page Header"

    invoke-virtual {v2, v4}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 1322
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljxl/SheetSettings;->setHeader(Ljxl/HeaderFooter;)V

    .line 1324
    new-instance v0, Ljxl/HeaderFooter;

    invoke-direct {v0}, Ljxl/HeaderFooter;-><init>()V

    .line 1325
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getRight()Ljxl/HeaderFooter$Contents;

    move-result-object v2

    const-string v4, "page "

    invoke-virtual {v2, v4}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getRight()Ljxl/HeaderFooter$Contents;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/HeaderFooter$Contents;->appendPageNumber()V

    .line 1327
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljxl/SheetSettings;->setFooter(Ljxl/HeaderFooter;)V

    const/16 v0, 0x12

    .line 1330
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addRowPageBreak(I)V

    const/16 v0, 0x11

    .line 1331
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->insertRow(I)V

    .line 1332
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->insertRow(I)V

    .line 1333
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->removeRow(I)V

    const/16 v0, 0x1e

    .line 1336
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addRowPageBreak(I)V

    .line 1339
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0xa

    const-string v4, "Hidden column"

    invoke-direct {v0, v2, v1, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1340
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1342
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x8

    const/4 v4, 0x3

    const-string v5, "Hidden row"

    invoke-direct {v0, v4, v2, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1343
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1344
    invoke-interface {p1, v2, v1}, Ljxl/write/WritableSheet;->setRowView(IZ)V

    .line 1346
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1347
    sget-object v2, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v4, Ljxl/format/BorderLineStyle;->THICK:Ljxl/format/BorderLineStyle;

    sget-object v5, Ljxl/format/Colour;->RED:Ljxl/format/Colour;

    invoke-virtual {v0, v2, v4, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 1348
    new-instance v2, Ljxl/write/Label;

    const/4 v4, 0x5

    const-string v5, "All thick red"

    invoke-direct {v2, v1, v4, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1349
    invoke-interface {p1, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1351
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1352
    sget-object v1, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v2, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    sget-object v5, Ljxl/format/Colour;->BLUE:Ljxl/format/Colour;

    invoke-virtual {v0, v1, v2, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 1353
    sget-object v1, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v2, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    sget-object v5, Ljxl/format/Colour;->BLUE:Ljxl/format/Colour;

    invoke-virtual {v0, v1, v2, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 1354
    new-instance v1, Ljxl/write/Label;

    const-string v2, "Top and bottom blue"

    invoke-direct {v1, v3, v4, v2, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1355
    invoke-interface {p1, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    return-void
.end method

.method private writeDateFormatSheet(Ljxl/write/WritableSheet;)V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 449
    new-instance v1, Ljxl/write/WritableCellFormat;

    sget-object v2, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    invoke-direct {v1, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    const/4 v2, 0x1

    .line 451
    invoke-virtual {v1, v2}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    const/16 v3, 0x14

    const/4 v4, 0x0

    .line 453
    invoke-interface {v0, v4, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v5, 0x2

    .line 454
    invoke-interface {v0, v5, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v6, 0x3

    .line 455
    invoke-interface {v0, v6, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v7, 0x4

    .line 456
    invoke-interface {v0, v7, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 458
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljxl/SheetSettings;->setFitWidth(I)V

    .line 459
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljxl/SheetSettings;->setFitHeight(I)V

    const-string v3, "GMT"

    .line 461
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    const/16 v10, 0x7b7

    const/4 v11, 0x4

    const/16 v12, 0x1f

    const/16 v13, 0xf

    const/16 v14, 0x15

    const/16 v15, 0x2d

    move-object v9, v8

    .line 462
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v15, 0xe

    const/16 v9, 0x294

    .line 463
    invoke-virtual {v8, v15, v9}, Ljava/util/Calendar;->set(II)V

    .line 464
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    const/16 v10, 0x76c

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v8

    move-object v6, v14

    move/from16 v14, v16

    const/16 v7, 0xe

    move/from16 v15, v17

    .line 465
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 466
    invoke-virtual {v8, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 468
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    const/16 v10, 0x7b2

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 469
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 470
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/16 v10, 0x77e

    const/16 v11, 0xa

    const/16 v12, 0xb

    const/16 v13, 0xb

    move-object/from16 v28, v15

    move/from16 v15, v16

    .line 471
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 472
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/16 v10, 0x76c

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object/from16 v29, v15

    move/from16 v15, v16

    .line 473
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 474
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/16 v10, 0x76d

    const/4 v12, 0x1

    move-object/from16 v30, v15

    move/from16 v15, v16

    .line 475
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 476
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/16 v10, 0x76c

    const/4 v11, 0x4

    const/16 v12, 0x1f

    move-object/from16 v31, v15

    move/from16 v15, v16

    .line 477
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 478
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v32, v15

    move/from16 v15, v16

    .line 479
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 480
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/4 v11, 0x0

    const/16 v12, 0x1f

    move-object/from16 v33, v15

    move/from16 v15, v16

    .line 481
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 482
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/4 v11, 0x2

    const/4 v12, 0x1

    move-object/from16 v34, v15

    move/from16 v15, v16

    .line 483
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 484
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/4 v11, 0x1

    const/16 v12, 0x1b

    move-object/from16 v35, v15

    move/from16 v15, v16

    .line 485
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 486
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/16 v12, 0x1c

    move-object/from16 v36, v15

    move/from16 v15, v16

    .line 487
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 488
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/16 v10, 0x7bc

    const/4 v11, 0x5

    const/16 v12, 0x1f

    const/16 v13, 0xc

    move-object/from16 v37, v15

    move/from16 v15, v16

    .line 489
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 490
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v38

    const/16 v10, 0x42a

    const/16 v11, 0x9

    const/16 v12, 0xe

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 491
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 492
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 495
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "dd MMM yyyy HH:mm:ss.SSS"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 497
    new-instance v3, Ljxl/write/Label;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "All dates are "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v4, v4, v10, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 499
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 501
    new-instance v3, Ljxl/write/Label;

    const-string v10, "Built in formats"

    invoke-direct {v3, v4, v2, v10, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 503
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 505
    new-instance v3, Ljxl/write/Label;

    const-string v10, "Custom formats"

    invoke-direct {v3, v5, v2, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 506
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 508
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT1:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 509
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x2

    move-object/from16 v16, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 510
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 512
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT2:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 513
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x3

    move-object/from16 v16, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 514
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 516
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT3:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 517
    new-instance v3, Ljxl/write/DateTime;

    const/4 v10, 0x4

    invoke-direct {v3, v4, v10, v6, v2}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;)V

    .line 518
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 520
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT4:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 521
    new-instance v3, Ljxl/write/DateTime;

    const/4 v10, 0x5

    invoke-direct {v3, v4, v10, v6, v2}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;)V

    .line 522
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 524
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT5:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 525
    new-instance v3, Ljxl/write/DateTime;

    const/4 v11, 0x6

    invoke-direct {v3, v4, v11, v6, v2}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;)V

    .line 526
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 528
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT6:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 529
    new-instance v3, Ljxl/write/DateTime;

    const/4 v12, 0x7

    invoke-direct {v3, v4, v12, v6, v2}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;)V

    .line 530
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 532
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT7:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 533
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x8

    move-object/from16 v16, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 534
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 536
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT8:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 537
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x9

    move-object/from16 v16, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 538
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 540
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 541
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0xa

    move-object/from16 v16, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 542
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 544
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT10:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 545
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0xb

    move-object/from16 v16, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 546
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 548
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT11:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 549
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0xc

    move-object/from16 v16, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 550
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 552
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT12:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 553
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0xd

    move-object/from16 v16, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 554
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 557
    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, "dd MM yyyy"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 558
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 559
    new-instance v2, Ljxl/write/Label;

    invoke-direct {v2, v5, v5, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 560
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 562
    new-instance v2, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v17, 0x3

    const/16 v18, 0x2

    move-object/from16 v16, v2

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 563
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 565
    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, "dd MMM yyyy"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 566
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 567
    new-instance v2, Ljxl/write/Label;

    const/4 v14, 0x3

    invoke-direct {v2, v5, v14, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 568
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 570
    new-instance v2, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x3

    move-object/from16 v16, v2

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 571
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 573
    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, "hh:mm"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 574
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 575
    new-instance v2, Ljxl/write/Label;

    const/4 v14, 0x4

    invoke-direct {v2, v5, v14, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 576
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 578
    new-instance v2, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x4

    move-object/from16 v16, v2

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 579
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 581
    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, "hh:mm:ss"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 582
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 583
    new-instance v2, Ljxl/write/Label;

    invoke-direct {v2, v5, v10, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 584
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 586
    new-instance v2, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x5

    move-object/from16 v16, v2

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 587
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 589
    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, "H:mm:ss a"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 590
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 591
    new-instance v2, Ljxl/write/Label;

    invoke-direct {v2, v5, v10, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 592
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 594
    new-instance v2, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    move-object/from16 v16, v2

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 595
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 596
    new-instance v2, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v23, 0x4

    const/16 v24, 0x5

    move-object/from16 v22, v2

    move-object/from16 v25, v38

    move-object/from16 v26, v13

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 597
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 599
    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, "mm:ss.SSS"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 600
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 601
    new-instance v2, Ljxl/write/Label;

    invoke-direct {v2, v5, v11, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 602
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 604
    new-instance v2, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x6

    move-object/from16 v16, v2

    move-object/from16 v20, v10

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 605
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 607
    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, "hh:mm:ss a"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 608
    new-instance v6, Ljxl/write/WritableCellFormat;

    invoke-direct {v6, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 609
    new-instance v2, Ljxl/write/Label;

    invoke-direct {v2, v5, v12, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 610
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 612
    new-instance v2, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x7

    move-object/from16 v22, v2

    move-object/from16 v26, v6

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 613
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 617
    new-instance v2, Ljxl/write/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Zero date "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-direct {v2, v4, v5, v3, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 619
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 621
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 622
    new-instance v3, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v23, 0x0

    const/16 v24, 0x11

    move-object/from16 v22, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 623
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 626
    new-instance v2, Ljxl/write/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Zero date + 1 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v30

    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    invoke-direct {v2, v7, v5, v3, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 628
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 630
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 631
    new-instance v3, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v23, 0x3

    move-object/from16 v22, v3

    move-object/from16 v25, v6

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 632
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 635
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v3, v31

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x13

    const/4 v7, 0x3

    invoke-direct {v2, v7, v6, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 637
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 639
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 640
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x14

    move-object/from16 v22, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 641
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 644
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v3, v32

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x16

    const/4 v10, 0x3

    invoke-direct {v2, v10, v7, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 646
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 648
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 649
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x17

    move-object/from16 v22, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 650
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 653
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v3, v33

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x19

    const/4 v11, 0x3

    invoke-direct {v2, v11, v10, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 655
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 657
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 658
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x1a

    move-object/from16 v22, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 659
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 662
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v3, v34

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0x1c

    const/4 v12, 0x3

    invoke-direct {v2, v12, v11, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 664
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 666
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 667
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x1d

    move-object/from16 v22, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 668
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 671
    new-instance v2, Ljxl/write/Label;

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    invoke-direct {v2, v12, v11, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 673
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 675
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 676
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    move-object/from16 v22, v5

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 677
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 680
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v3, v35

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0x1f

    const/4 v12, 0x3

    invoke-direct {v2, v12, v11, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 682
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 684
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 685
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x20

    move-object/from16 v22, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 686
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 689
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v3, v36

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0x22

    const/4 v12, 0x3

    invoke-direct {v2, v12, v11, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 691
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 693
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 694
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x23

    move-object/from16 v22, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 695
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 698
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v3, v37

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0x25

    const/4 v12, 0x3

    invoke-direct {v2, v12, v11, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 700
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 702
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 703
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x26

    move-object/from16 v22, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 704
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 707
    new-instance v2, Ljxl/write/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Zero UTC date "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v28

    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v6, v3, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 709
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 711
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 712
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v17, 0x0

    const/16 v18, 0x14

    move-object/from16 v16, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 713
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 716
    new-instance v2, Ljxl/write/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Armistice date "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v29

    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v7, v3, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 718
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 720
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 721
    new-instance v3, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v23, 0x0

    const/16 v24, 0x17

    move-object/from16 v22, v3

    move-object/from16 v25, v5

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 722
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 725
    new-instance v2, Ljxl/write/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battle of Hastings "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v10, v3, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 727
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 729
    new-instance v1, Ljxl/write/WritableCellFormat;

    sget-object v2, Ljxl/write/DateFormats;->FORMAT2:Ljxl/biff/DisplayFormat;

    invoke-direct {v1, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 730
    new-instance v2, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x1a

    move-object/from16 v16, v2

    move-object/from16 v19, v8

    move-object/from16 v20, v1

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 731
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    return-void
.end method

.method private writeFormulaSheet(Ljxl/write/WritableSheet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 1431
    new-instance v0, Ljxl/write/Number;

    const/4 v1, 0x0

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-direct {v0, v1, v1, v2, v3}, Ljxl/write/Number;-><init>(IID)V

    .line 1432
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1434
    new-instance v0, Ljxl/write/Number;

    const/4 v2, 0x1

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-direct {v0, v1, v2, v3, v4}, Ljxl/write/Number;-><init>(IID)V

    .line 1435
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1437
    new-instance v0, Ljxl/write/Number;

    const/4 v3, 0x2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-direct {v0, v1, v3, v4, v5}, Ljxl/write/Number;-><init>(IID)V

    .line 1438
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1440
    new-instance v0, Ljxl/write/Number;

    const/4 v4, 0x3

    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    invoke-direct {v0, v1, v4, v5, v6}, Ljxl/write/Number;-><init>(IID)V

    .line 1441
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x14

    .line 1443
    invoke-interface {p1, v3, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 1444
    new-instance v5, Ljxl/write/WritableCellFormat;

    invoke-direct {v5}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1445
    sget-object v6, Ljxl/format/Alignment;->RIGHT:Ljxl/format/Alignment;

    invoke-virtual {v5, v6}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 1446
    invoke-virtual {v5, v2}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 1447
    new-instance v6, Ljxl/CellView;

    invoke-direct {v6}, Ljxl/CellView;-><init>()V

    const/16 v7, 0x1900

    .line 1448
    invoke-virtual {v6, v7}, Ljxl/CellView;->setSize(I)V

    .line 1449
    invoke-virtual {v6, v5}, Ljxl/CellView;->setFormat(Ljxl/format/CellFormat;)V

    .line 1450
    invoke-interface {p1, v4, v6}, Ljxl/write/WritableSheet;->setColumnView(ILjxl/CellView;)V

    .line 1456
    new-instance v5, Ljxl/write/Formula;

    const-string v6, "A1+A2"

    invoke-direct {v5, v3, v1, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1457
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1458
    new-instance v5, Ljxl/write/Label;

    const-string v6, "a1+a2"

    invoke-direct {v5, v4, v1, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1459
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1461
    new-instance v5, Ljxl/write/Formula;

    const-string v6, "A2 * 3"

    invoke-direct {v5, v3, v2, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1462
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1463
    new-instance v5, Ljxl/write/Label;

    invoke-direct {v5, v4, v2, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1464
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1466
    new-instance v5, Ljxl/write/Formula;

    const-string v6, "A2+A1/2.5"

    invoke-direct {v5, v3, v3, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1467
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1468
    new-instance v5, Ljxl/write/Label;

    invoke-direct {v5, v4, v3, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1469
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1471
    new-instance v5, Ljxl/write/Formula;

    const-string v6, "3+(a1+a2)/2.5"

    invoke-direct {v5, v3, v4, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1472
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1473
    new-instance v5, Ljxl/write/Label;

    invoke-direct {v5, v4, v4, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1474
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1476
    new-instance v5, Ljxl/write/Formula;

    const-string v6, "(a1+a2)/2.5"

    const/4 v7, 0x4

    invoke-direct {v5, v3, v7, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1477
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1478
    new-instance v5, Ljxl/write/Label;

    invoke-direct {v5, v4, v7, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1479
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1481
    new-instance v5, Ljxl/write/Formula;

    const-string v6, "15+((a1+a2)/2.5)*17"

    const/4 v7, 0x5

    invoke-direct {v5, v3, v7, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1482
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1483
    new-instance v5, Ljxl/write/Label;

    invoke-direct {v5, v4, v7, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1484
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1486
    new-instance v5, Ljxl/write/Formula;

    const-string v6, "SUM(a1:a4)"

    const/4 v7, 0x6

    invoke-direct {v5, v3, v7, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1487
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1488
    new-instance v5, Ljxl/write/Label;

    invoke-direct {v5, v4, v7, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1489
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1491
    new-instance v5, Ljxl/write/Formula;

    const-string v6, "SUM(a1:a4)/4"

    const/4 v7, 0x7

    invoke-direct {v5, v3, v7, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1492
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1493
    new-instance v5, Ljxl/write/Label;

    invoke-direct {v5, v4, v7, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1494
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1496
    new-instance v5, Ljxl/write/Formula;

    const/16 v6, 0x8

    const-string v7, "AVERAGE(A1:A4)"

    invoke-direct {v5, v3, v6, v7}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1497
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1498
    new-instance v5, Ljxl/write/Label;

    const-string v7, "AVERAGE(a1:a4)"

    invoke-direct {v5, v4, v6, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1499
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1501
    new-instance v5, Ljxl/write/Formula;

    const/16 v6, 0x9

    const-string v7, "MIN(5,4,1,2,3)"

    invoke-direct {v5, v3, v6, v7}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1502
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1503
    new-instance v5, Ljxl/write/Label;

    const-string v7, "MIN(5,4,1,2,3)"

    invoke-direct {v5, v4, v6, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1504
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1506
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0xa

    const-string v8, "ROUND(3.14159265, 3)"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1507
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1508
    new-instance v5, Ljxl/write/Label;

    const-string v8, "ROUND(3.14159265, 3)"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1509
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1511
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0xb

    const-string v8, "MAX(SUM(A1:A2), A1*A2, POWER(A1, 2))"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1512
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1513
    new-instance v5, Ljxl/write/Label;

    const-string v8, "MAX(SUM(A1:A2), A1*A2, POWER(A1, 2))"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1514
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1516
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0xc

    const-string v8, "IF(A2>A1, \"A2 bigger\", \"A1 bigger\")"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1517
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1518
    new-instance v5, Ljxl/write/Label;

    const-string v8, "IF(A2>A1, \"A2 bigger\", \"A1 bigger\")"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1519
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1521
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0xd

    const-string v8, "IF(A2<=A1, \"A2 smaller\", \"A1 smaller\")"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1522
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1523
    new-instance v5, Ljxl/write/Label;

    const-string v8, "IF(A2<=A1, \"A2 smaller\", \"A1 smaller\")"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1524
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1526
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0xe

    const-string v8, "IF(A3<=10, \"<= 10\")"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1527
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1528
    new-instance v5, Ljxl/write/Label;

    const-string v8, "IF(A3<=10, \"<= 10\")"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1529
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1531
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0xf

    const-string v8, "SUM(1,2,3,4,5)"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1532
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1533
    new-instance v5, Ljxl/write/Label;

    const-string v8, "SUM(1,2,3,4,5)"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1534
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1536
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0x10

    const-string v8, "HYPERLINK(\"http://www.andykhan.com/jexcelapi\", \"JExcelApi Home Page\")"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1537
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1538
    new-instance v5, Ljxl/write/Label;

    const-string v8, "HYPERLINK(\"http://www.andykhan.com/jexcelapi\", \"JExcelApi Home Page\")"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1539
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1541
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0x11

    const-string v8, "3*4+5"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1542
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1543
    new-instance v5, Ljxl/write/Label;

    const-string v8, "3*4+5"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1544
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1546
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0x12

    const-string v8, "\"Plain text formula\""

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1547
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1548
    new-instance v5, Ljxl/write/Label;

    const-string v8, "Plain text formula"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1549
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1551
    new-instance v5, Ljxl/write/Formula;

    const/16 v8, 0x13

    const-string v9, "SUM(a1,a2,-a3,a4)"

    invoke-direct {v5, v3, v8, v9}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1552
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1553
    new-instance v5, Ljxl/write/Label;

    const-string v9, "SUM(a1,a2,-a3,a4)"

    invoke-direct {v5, v4, v8, v9}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1554
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1556
    new-instance v5, Ljxl/write/Formula;

    const-string v8, "2*-(a1+a2)"

    invoke-direct {v5, v3, v0, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1557
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1558
    new-instance v5, Ljxl/write/Label;

    const-string v8, "2*-(a1+a2)"

    invoke-direct {v5, v4, v0, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1559
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1561
    new-instance v0, Ljxl/write/Formula;

    const/16 v5, 0x15

    const-string v8, "\'Number Formats\'!B1/2"

    invoke-direct {v0, v3, v5, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1562
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1563
    new-instance v0, Ljxl/write/Label;

    const-string v8, "\'Number Formats\'!B1/2"

    invoke-direct {v0, v4, v5, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1564
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1566
    new-instance v0, Ljxl/write/Formula;

    const/16 v5, 0x16

    const-string v8, "IF(F22=0, 0, F21/F22)"

    invoke-direct {v0, v3, v5, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1567
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1568
    new-instance v0, Ljxl/write/Label;

    const-string v8, "IF(F22=0, 0, F21/F22)"

    invoke-direct {v0, v4, v5, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1569
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1571
    new-instance v0, Ljxl/write/Formula;

    const/16 v5, 0x17

    const-string v8, "RAND()"

    invoke-direct {v0, v3, v5, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1572
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1573
    new-instance v0, Ljxl/write/Label;

    const-string v8, "RAND()"

    invoke-direct {v0, v4, v5, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1574
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1576
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "\'"

    .line 1577
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1578
    iget-object v5, p0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    invoke-virtual {v5, v1}, Ljxl/write/WritableWorkbook;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v1

    invoke-interface {v1}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\'!"

    .line 1579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1580
    invoke-static {v6, v7}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "*25"

    .line 1581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1582
    new-instance v1, Ljxl/write/Formula;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x18

    invoke-direct {v1, v3, v6, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1583
    invoke-interface {p1, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1584
    new-instance v1, Ljxl/write/Label;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x18

    invoke-direct {v1, v4, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1585
    invoke-interface {p1, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1587
    new-instance v0, Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/write/DateFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 1588
    new-instance v1, Ljxl/write/Formula;

    const/16 v5, 0x19

    const-string v6, "NOW()"

    invoke-direct {v1, v3, v5, v6, v0}, Ljxl/write/Formula;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1589
    invoke-interface {p1, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1590
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x19

    const-string v5, "NOW()"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1591
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1593
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x1a

    const-string v5, "$A$2+A3"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1594
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1595
    new-instance v0, Ljxl/write/Label;

    const-string v5, "$A$2+A3"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1596
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1598
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x1b

    const-string v5, "IF(COUNT(A1:A9,B1:B9)=0,\"\",COUNT(A1:A9,B1:B9))"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1599
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1600
    new-instance v0, Ljxl/write/Label;

    const-string v5, "IF(COUNT(A1:A9,B1:B9)=0,\"\",COUNT(A1:A9,B1:B9))"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1601
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1603
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x1c

    const-string v5, "SUM(A1,A2,A3,A4)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1604
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1605
    new-instance v0, Ljxl/write/Label;

    const-string v5, "SUM(A1,A2,A3,A4)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1606
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1608
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x1d

    const-string v5, "a1"

    invoke-direct {v0, v2, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1609
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1610
    new-instance v0, Ljxl/write/Formula;

    const-string v5, "SUM(INDIRECT(ADDRESS(2,29)):A4)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1611
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1612
    new-instance v0, Ljxl/write/Label;

    const-string v5, "SUM(INDIRECT(ADDRESS(2,29):A4)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1613
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1615
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x1e

    const-string v5, "COUNTIF(A1:A4, \">=12\")"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1616
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1617
    new-instance v0, Ljxl/write/Label;

    const-string v5, "COUNTIF(A1:A4, \">=12\")"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1618
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1620
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x1f

    const-string v5, "MAX($A$1:$A$4)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1621
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1622
    new-instance v0, Ljxl/write/Label;

    const-string v5, "MAX($A$1:$A$4)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1623
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1625
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x20

    const-string v5, "OR(A1,TRUE)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1626
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1627
    new-instance v0, Ljxl/write/Label;

    const-string v5, "OR(A1,TRUE)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1628
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1630
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x21

    const-string v5, "ROWS(A1:C14)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1631
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1632
    new-instance v0, Ljxl/write/Label;

    const-string v5, "ROWS(A1:C14)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1633
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1635
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x22

    const-string v5, "COUNTBLANK(A1:C14)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1636
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1637
    new-instance v0, Ljxl/write/Label;

    const-string v5, "COUNTBLANK(A1:C14)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1638
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1640
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x23

    const-string v5, "IF(((F1=\"Not Found\")*(F2=\"Not Found\")*(F3=\"\")*(F4=\"\")*(F5=\"\")),1,0)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1641
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1642
    new-instance v0, Ljxl/write/Label;

    const-string v5, "IF(((F1=\"Not Found\")*(F2=\"Not Found\")*(F3=\"\")*(F4=\"\")*(F5=\"\")),1,0)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1643
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1645
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x24

    const-string v5, "HYPERLINK(\"http://www.amazon.co.uk/exec/obidos/ASIN/0571058086qid=1099836249/sr=1-3/ref=sr_1_11_3/202-6017285-1620664\",  \"Long hyperlink\")"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1647
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1649
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x25

    const-string v5, "1234567+2699"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1650
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1651
    new-instance v0, Ljxl/write/Label;

    const-string v5, "1234567+2699"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1652
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1654
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x26

    const-string v5, "IF(ISERROR(G25/G29),0,-1)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1655
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1656
    new-instance v0, Ljxl/write/Label;

    const-string v5, "IF(ISERROR(G25/G29),0,-1)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1657
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1659
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x27

    const-string v5, "SEARCH(\"C\",D40)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1660
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1661
    new-instance v0, Ljxl/write/Label;

    const-string v5, "SEARCH(\"C\",D40)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1662
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1664
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x28

    const-string v5, "#REF!"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1665
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1666
    new-instance v0, Ljxl/write/Label;

    const-string v5, "#REF!"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1667
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1669
    new-instance v0, Ljxl/write/Number;

    const/16 v1, 0x29

    const-wide v5, 0x4053c00000000000L    # 79.0

    invoke-direct {v0, v2, v1, v5, v6}, Ljxl/write/Number;-><init>(IID)V

    .line 1670
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1671
    new-instance v0, Ljxl/write/Formula;

    const-string v5, "--B42"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1672
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1673
    new-instance v0, Ljxl/write/Label;

    const-string v5, "--B42"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1674
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1676
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x2a

    const-string v5, "CHOOSE(3,A1,A2,A3,A4"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1677
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1678
    new-instance v0, Ljxl/write/Label;

    const-string v5, "CHOOSE(3,A1,A2,A3,A4"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1679
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1681
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x2b

    const-string v5, "A4-A3-A2"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1682
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1683
    new-instance v0, Ljxl/write/Label;

    const-string v5, "A4-A3-A2"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1684
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1686
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x2c

    const-string v5, "F29+F34+F41+F48+F55+F62+F69+F76+F83+F90+F97+F104+F111+F118+F125+F132+F139+F146+F153+F160+F167+F174+F181+F188+F195+F202+F209+F216+F223+F230+F237+F244+F251+F258+F265+F272+F279+F286+F293+F300+F305+F308"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1687
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1688
    new-instance v0, Ljxl/write/Label;

    const-string v5, "F29+F34+F41+F48+F55+F62+F69+F76+F83+F90+F97+F104+F111+F118+F125+F132+F139+F146+F153+F160+F167+F174+F181+F188+F195+F202+F209+F216+F223+F230+F237+F244+F251+F258+F265+F272+F279+F286+F293+F300+F305+F308"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1689
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1691
    new-instance v0, Ljxl/write/Number;

    const/16 v1, 0x2d

    const-wide/high16 v5, 0x4031000000000000L    # 17.0

    invoke-direct {v0, v2, v1, v5, v6}, Ljxl/write/Number;-><init>(IID)V

    .line 1692
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1693
    new-instance v0, Ljxl/write/Formula;

    const-string v2, "formulavalue+5"

    invoke-direct {v0, v3, v1, v2}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1694
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1695
    new-instance v0, Ljxl/write/Label;

    const-string v2, "formulavalue+5"

    invoke-direct {v0, v4, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1696
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    return-void
.end method

.method private writeImageSheet(Ljxl/write/WritableSheet;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 1722
    new-instance v0, Ljxl/write/Label;

    const/4 v1, 0x0

    const-string v2, "Weald & Downland Open Air Museum, Sussex"

    invoke-direct {v0, v1, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1723
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1725
    new-instance v0, Ljxl/write/WritableImage;

    new-instance v12, Ljava/io/File;

    const-string v2, "resources/wealdanddownland.png"

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    const-wide/high16 v10, 0x401c000000000000L    # 7.0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Ljxl/write/WritableImage;-><init>(DDDDLjava/io/File;)V

    .line 1727
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addImage(Ljxl/write/WritableImage;)V

    .line 1729
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0xc

    const-string v3, "Merchant Adventurers Hall, York"

    invoke-direct {v0, v1, v2, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1730
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1732
    new-instance v0, Ljxl/write/WritableImage;

    new-instance v13, Ljava/io/File;

    const-string v1, "resources/merchantadventurers.png"

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    const-wide/high16 v7, 0x4028000000000000L    # 12.0

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Ljxl/write/WritableImage;-><init>(DDDDLjava/io/File;)V

    .line 1734
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addImage(Ljxl/write/WritableImage;)V

    return-void
.end method

.method private writeLabelFormatSheet(Ljxl/write/WritableSheet;)V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    move-object/from16 v12, p1

    const/4 v13, 0x0

    const/16 v0, 0x3c

    .line 742
    invoke-interface {v12, v13, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 744
    new-instance v0, Ljxl/write/Label;

    const-string v1, "Arial Fonts"

    invoke-direct {v0, v13, v13, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 745
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 747
    new-instance v0, Ljxl/write/Label;

    const/4 v14, 0x1

    const-string v1, "10pt"

    invoke-direct {v0, v14, v13, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 748
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 750
    new-instance v0, Ljxl/write/Label;

    const-string v1, "Normal"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v13, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 751
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 753
    new-instance v0, Ljxl/write/Label;

    const/4 v15, 0x3

    const-string v3, "12pt"

    invoke-direct {v0, v15, v13, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 754
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 756
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v3, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    const/16 v11, 0xc

    invoke-direct {v0, v3, v11}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 757
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 758
    invoke-virtual {v10, v14}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 759
    new-instance v0, Ljxl/write/Label;

    const/4 v9, 0x4

    invoke-direct {v0, v9, v13, v1, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 760
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 762
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v3, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v4, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    const/16 v8, 0xa

    invoke-direct {v0, v3, v8, v4}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    .line 764
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 766
    new-instance v0, Ljxl/write/Label;

    const-string v4, "BOLD"

    invoke-direct {v0, v2, v2, v4, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 767
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 769
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v3, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v5, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v3, v11, v5}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    .line 771
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 773
    new-instance v0, Ljxl/write/Label;

    invoke-direct {v0, v9, v2, v4, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 774
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 776
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v3, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v5, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v3, v8, v5, v14}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;Z)V

    .line 778
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 780
    new-instance v0, Ljxl/write/Label;

    const-string v5, "Italic"

    invoke-direct {v0, v2, v9, v5, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 781
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 783
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v3, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v5, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v3, v11, v5, v14}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;Z)V

    .line 785
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 787
    new-instance v0, Ljxl/write/Label;

    const-string v5, "Italic"

    invoke-direct {v0, v9, v9, v5, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 788
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 790
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v3, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    invoke-direct {v0, v3, v8}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 791
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 792
    new-instance v0, Ljxl/write/Label;

    const/4 v7, 0x7

    const-string v5, "Times Fonts"

    invoke-direct {v0, v13, v7, v5, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 793
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 795
    new-instance v0, Ljxl/write/Label;

    const-string v5, "10pt"

    invoke-direct {v0, v14, v7, v5, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 796
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 798
    new-instance v0, Ljxl/write/Label;

    invoke-direct {v0, v2, v7, v1, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 799
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 801
    new-instance v0, Ljxl/write/Label;

    const-string v5, "12pt"

    invoke-direct {v0, v15, v7, v5, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 802
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 804
    new-instance v6, Ljxl/write/WritableFont;

    sget-object v0, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    invoke-direct {v6, v0, v11}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 805
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0, v6}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 806
    new-instance v3, Ljxl/write/Label;

    invoke-direct {v3, v9, v7, v1, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 807
    invoke-interface {v12, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 809
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    sget-object v3, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v1, v8, v3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    .line 811
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 813
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x9

    invoke-direct {v0, v2, v5, v4, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 814
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 816
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    sget-object v3, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v1, v11, v3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    .line 818
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 820
    new-instance v0, Ljxl/write/Label;

    invoke-direct {v0, v9, v5, v4, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 821
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/4 v4, 0x6

    const/16 v0, 0x16

    .line 824
    invoke-interface {v12, v4, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 825
    invoke-interface {v12, v7, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/16 v3, 0x8

    .line 826
    invoke-interface {v12, v3, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 827
    invoke-interface {v12, v5, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 829
    new-instance v1, Ljxl/write/Label;

    const/16 v8, 0xb

    const-string v0, "Underlining"

    invoke-direct {v1, v13, v8, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 830
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 832
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v18, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v20, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v22, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    const/16 v19, 0xa

    const/16 v21, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 838
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 840
    new-instance v0, Ljxl/write/Label;

    const-string v15, "Underline"

    invoke-direct {v0, v4, v8, v15, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 841
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 843
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v19, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v21, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v23, Ljxl/format/UnderlineStyle;->DOUBLE:Ljxl/format/UnderlineStyle;

    const/16 v20, 0xa

    const/16 v22, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 849
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 851
    new-instance v0, Ljxl/write/Label;

    const-string v15, "Double Underline"

    invoke-direct {v0, v7, v8, v15, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 852
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 854
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v19, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v21, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v23, Ljxl/format/UnderlineStyle;->SINGLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 860
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 862
    new-instance v0, Ljxl/write/Label;

    const-string v15, "Single Accounting Underline"

    invoke-direct {v0, v3, v8, v15, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 863
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 865
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v19, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v21, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v23, Ljxl/format/UnderlineStyle;->DOUBLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 871
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 873
    new-instance v0, Ljxl/write/Label;

    const-string v15, "Double Accounting Underline"

    invoke-direct {v0, v5, v8, v15, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 874
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 876
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v19, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    sget-object v21, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v23, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    const/16 v20, 0xe

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 882
    new-instance v15, Ljxl/write/WritableCellFormat;

    invoke-direct {v15, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 884
    new-instance v0, Ljxl/write/Label;

    const-string v1, "Times 14 Bold Underline"

    invoke-direct {v0, v4, v11, v1, v15}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 885
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 887
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v19, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v21, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v23, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    const/16 v20, 0x12

    const/16 v22, 0x1

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 893
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 895
    new-instance v0, Ljxl/write/Label;

    const/16 v8, 0xd

    const-string v3, "Arial 18 Bold Italic Underline"

    invoke-direct {v0, v4, v8, v3, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 897
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 899
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0xf

    const-string v3, "Script styles"

    invoke-direct {v0, v13, v1, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 900
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 902
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v20, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v22, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v24, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v25, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    sget-object v26, Ljxl/format/ScriptStyle;->SUPERSCRIPT:Ljxl/format/ScriptStyle;

    const/16 v21, 0xa

    const/16 v23, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v26}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    .line 910
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 912
    new-instance v0, Ljxl/write/Label;

    const-string v8, "superscript"

    invoke-direct {v0, v14, v1, v8, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 913
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 915
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v20, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v22, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v24, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v25, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    sget-object v26, Ljxl/format/ScriptStyle;->SUBSCRIPT:Ljxl/format/ScriptStyle;

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v26}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    .line 923
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 925
    new-instance v0, Ljxl/write/Label;

    const-string v8, "subscript"

    invoke-direct {v0, v2, v1, v8, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 926
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 928
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x11

    const-string v3, "Colours"

    invoke-direct {v0, v13, v1, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 929
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 931
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v20, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v22, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v24, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v25, Ljxl/format/Colour;->RED:Ljxl/format/Colour;

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;)V

    .line 937
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 938
    new-instance v0, Ljxl/write/Label;

    const/16 v3, 0x11

    const-string v8, "Red"

    invoke-direct {v0, v2, v3, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 939
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 941
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v20, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v22, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v24, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v25, Ljxl/format/Colour;->BLUE:Ljxl/format/Colour;

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;)V

    .line 947
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 948
    new-instance v0, Ljxl/write/Label;

    const/16 v3, 0x12

    const-string v8, "Blue"

    invoke-direct {v0, v2, v3, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 949
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 951
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    invoke-direct {v0, v1}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;)V

    .line 952
    sget-object v1, Ljxl/format/Colour;->LIME:Ljxl/format/Colour;

    invoke-virtual {v0, v1}, Ljxl/write/WritableFont;->setColour(Ljxl/format/Colour;)V

    .line 953
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 954
    invoke-virtual {v1, v14}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 955
    new-instance v0, Ljxl/write/Label;

    const-string v8, "Modified palette - was lime, now red"

    invoke-direct {v0, v9, v3, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 956
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 958
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 959
    invoke-virtual {v0, v14}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 960
    sget-object v1, Ljxl/format/Colour;->GRAY_50:Ljxl/format/Colour;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 961
    new-instance v1, Ljxl/write/Label;

    const/16 v3, 0x13

    const-string v8, "Grey background"

    invoke-direct {v1, v2, v3, v8, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 962
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 964
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v20, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v22, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v24, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v25, Ljxl/format/Colour;->YELLOW:Ljxl/format/Colour;

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;)V

    .line 970
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 971
    invoke-virtual {v1, v14}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 972
    sget-object v3, Ljxl/format/Colour;->BLUE:Ljxl/format/Colour;

    invoke-virtual {v1, v3}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 973
    new-instance v3, Ljxl/write/Label;

    const/16 v8, 0x14

    const-string v4, "Blue background, yellow foreground"

    invoke-direct {v3, v2, v8, v4, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 974
    invoke-interface {v12, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 976
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 977
    invoke-virtual {v1, v14}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 978
    sget-object v0, Ljxl/format/Colour;->PALETTE_BLACK:Ljxl/format/Colour;

    invoke-virtual {v1, v0}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 979
    new-instance v0, Ljxl/write/Label;

    const/16 v3, 0x14

    const-string v4, "Black background, yellow foreground"

    const/4 v8, 0x3

    invoke-direct {v0, v8, v3, v4, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 981
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 983
    new-instance v0, Ljxl/write/Label;

    const-string v1, "Null label"

    const/16 v3, 0x16

    invoke-direct {v0, v13, v3, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 984
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 986
    new-instance v0, Ljxl/write/Label;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 987
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 989
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x18

    const-string v3, "A very long label, more than 255 characters\nRejoice O shores\nSing O bells\nBut I with mournful tread\nWalk the deck my captain lies\nFallen cold and dead\nSummer surprised, coming over the Starnbergersee\nWith a shower of rain. We stopped in the Colonnade\nA very long label, more than 255 characters\nRejoice O shores\nSing O bells\nBut I with mournful tread\nWalk the deck my captain lies\nFallen cold and dead\nSummer surprised, coming over the Starnbergersee\nWith a shower of rain. We stopped in the Colonnade\nA very long label, more than 255 characters\nRejoice O shores\nSing O bells\nBut I with mournful tread\nWalk the deck my captain lies\nFallen cold and dead\nSummer surprised, coming over the Starnbergersee\nWith a shower of rain. We stopped in the Colonnade\nA very long label, more than 255 characters\nRejoice O shores\nSing O bells\nBut I with mournful tread\nWalk the deck my captain lies\nFallen cold and dead\nSummer surprised, coming over the Starnbergersee\nWith a shower of rain. We stopped in the Colonnade\nAnd sat and drank coffee an talked for an hour\n"

    invoke-direct {v0, v13, v1, v3, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1022
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1024
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1025
    sget-object v1, Ljxl/format/Orientation;->VERTICAL:Ljxl/format/Orientation;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setOrientation(Ljxl/format/Orientation;)V

    .line 1026
    new-instance v1, Ljxl/write/Label;

    const/16 v3, 0x1a

    const-string v4, "Vertical orientation"

    invoke-direct {v1, v13, v3, v4, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1027
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1030
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1031
    sget-object v1, Ljxl/format/Orientation;->PLUS_90:Ljxl/format/Orientation;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setOrientation(Ljxl/format/Orientation;)V

    .line 1032
    new-instance v1, Ljxl/write/Label;

    const-string v4, "Plus 90"

    invoke-direct {v1, v14, v3, v4, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1033
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1036
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1037
    sget-object v1, Ljxl/format/Orientation;->MINUS_90:Ljxl/format/Orientation;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setOrientation(Ljxl/format/Orientation;)V

    .line 1038
    new-instance v1, Ljxl/write/Label;

    const-string v4, "Minus 90"

    invoke-direct {v1, v2, v3, v4, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1039
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1041
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x1c

    const-string v3, "Modified row height"

    invoke-direct {v0, v13, v1, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1042
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x1c

    const/16 v1, 0x1e0

    .line 1043
    invoke-interface {v12, v0, v1}, Ljxl/write/WritableSheet;->setRowView(II)V

    .line 1045
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x1d

    const-string v3, "Collapsed row"

    invoke-direct {v0, v13, v1, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1046
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x1d

    .line 1047
    invoke-interface {v12, v0, v14}, Ljxl/write/WritableSheet;->setRowView(IZ)V

    .line 1052
    :try_start_0
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x1e

    const-string v3, "Hyperlink to home page"

    invoke-direct {v0, v13, v1, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1053
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1055
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://www.andykhan.com/jexcelapi"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1056
    new-instance v1, Ljxl/write/WritableHyperlink;

    const/16 v21, 0x0

    const/16 v22, 0x1e

    const/16 v23, 0x8

    const/16 v24, 0x1f

    move-object/from16 v20, v1

    move-object/from16 v25, v0

    invoke-direct/range {v20 .. v25}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/net/URL;)V

    .line 1057
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1060
    new-instance v1, Ljxl/write/WritableHyperlink;

    const/16 v21, 0x7

    const/16 v22, 0x1e

    const/16 v23, 0x9

    const/16 v24, 0x1f

    move-object/from16 v20, v1

    move-object/from16 v25, v0

    invoke-direct/range {v20 .. v25}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/net/URL;)V

    .line 1061
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1063
    new-instance v0, Ljxl/write/Label;

    const-string v1, "File hyperlink to documentation"

    invoke-direct {v0, v9, v2, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1064
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1066
    new-instance v0, Ljava/io/File;

    const-string v1, "../jexcelapi/docs/index.html"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1067
    new-instance v1, Ljxl/write/WritableHyperlink;

    const/16 v21, 0x0

    const/16 v22, 0x20

    const/16 v23, 0x8

    const/16 v24, 0x20

    const-string v26, "JExcelApi Documentation"

    move-object/from16 v20, v1

    move-object/from16 v25, v0

    invoke-direct/range {v20 .. v26}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/io/File;Ljava/lang/String;)V

    .line 1069
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1072
    new-instance v0, Ljxl/write/WritableHyperlink;

    const/4 v2, 0x0

    const/16 v3, 0x22

    const/16 v4, 0x8

    const/16 v8, 0x22

    const-string v16, "Link to another cell"
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v20, 0x0

    const/16 v21, 0xb4

    const/16 v22, 0x1

    const/16 v23, 0xb5

    move-object v1, v0

    const/16 v14, 0x8

    move v5, v8

    move-object v8, v6

    move-object/from16 v6, v16

    move-object/from16 v7, p1

    move-object/from16 v27, v8

    const/16 v13, 0xa

    move/from16 v8, v20

    move/from16 v9, v21

    move-object/from16 v28, v10

    move/from16 v10, v22

    move/from16 v11, v23

    :try_start_1
    invoke-direct/range {v1 .. v11}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/lang/String;Ljxl/write/WritableSheet;IIII)V

    .line 1076
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1078
    new-instance v0, Ljava/io/File;

    const-string v1, "\\\\localhost\\file.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1079
    new-instance v1, Ljxl/write/WritableHyperlink;

    const/16 v30, 0x0

    const/16 v31, 0x24

    const/16 v32, 0x8

    const/16 v33, 0x24

    move-object/from16 v29, v1

    move-object/from16 v34, v0

    invoke-direct/range {v29 .. v34}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/io/File;)V

    .line 1080
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1083
    new-instance v7, Ljava/net/URL;

    const-string v0, "http://www.amazon.co.uk/exec/obidos/ASIN/0571058086/qid=1099836249/sr=1-3/ref=sr_1_11_3/202-6017285-1620664"

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1085
    new-instance v0, Ljxl/write/WritableHyperlink;

    const/4 v3, 0x0

    const/16 v4, 0x26

    const/4 v5, 0x0

    const/16 v6, 0x26

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/net/URL;)V

    .line 1086
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v27, v6

    move-object/from16 v28, v10

    const/16 v13, 0xa

    const/16 v14, 0x8

    .line 1090
    :goto_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1094
    :goto_1
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x23

    const/4 v2, 0x5

    const-string v3, "Merged cells"

    invoke-direct {v0, v2, v1, v3, v15}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    const/16 v3, 0x25

    .line 1095
    invoke-interface {v12, v2, v1, v14, v3}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    .line 1096
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1098
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x26

    const-string v3, "More merged cells"

    invoke-direct {v0, v2, v1, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1099
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x26

    const/16 v1, 0x29

    .line 1100
    invoke-interface {v12, v2, v0, v14, v1}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    move-result-object v0

    const/16 v1, 0x28

    .line 1101
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->insertRow(I)V

    const/16 v1, 0x27

    .line 1102
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->removeRow(I)V

    .line 1103
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->unmergeCells(Ljxl/Range;)V

    .line 1106
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1107
    sget-object v3, Ljxl/format/Alignment;->CENTRE:Ljxl/format/Alignment;

    invoke-virtual {v0, v3}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 1108
    new-instance v3, Ljxl/write/Label;

    const/16 v4, 0x2a

    const-string v5, "Centred across merged cells"

    invoke-direct {v3, v2, v4, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1109
    invoke-interface {v12, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1110
    invoke-interface {v12, v2, v4, v13, v4}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    .line 1112
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1113
    sget-object v3, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v4, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v3, v4}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1114
    sget-object v3, Ljxl/format/Colour;->GRAY_25:Ljxl/format/Colour;

    invoke-virtual {v0, v3}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 1115
    new-instance v3, Ljxl/write/Label;

    const/16 v4, 0x2c

    const-string v5, "Merged with border"

    const/4 v6, 0x3

    invoke-direct {v3, v6, v4, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1116
    invoke-interface {v12, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x2c

    const/16 v3, 0x2e

    const/4 v4, 0x4

    .line 1117
    invoke-interface {v12, v6, v0, v4, v3}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    .line 1134
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v3, Ljxl/write/WritableFont;->COURIER:Ljxl/write/WritableFont$FontName;

    invoke-direct {v0, v3, v13}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 1135
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1136
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x31

    const-string v6, "Courier fonts"

    const/4 v7, 0x0

    invoke-direct {v0, v7, v5, v6, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1137
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1139
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v3, Ljxl/write/WritableFont;->TAHOMA:Ljxl/write/WritableFont$FontName;

    const/16 v5, 0xc

    invoke-direct {v0, v3, v5}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 1140
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1141
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x32

    const-string v6, "Tahoma fonts"

    invoke-direct {v0, v7, v5, v6, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1142
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const-string v0, "Wingdings 2"

    .line 1144
    invoke-static {v0}, Ljxl/write/WritableFont;->createFont(Ljava/lang/String;)Ljxl/write/WritableFont$FontName;

    move-result-object v0

    .line 1146
    new-instance v3, Ljxl/write/WritableFont;

    invoke-direct {v3, v0, v13}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 1147
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1149
    new-instance v3, Ljxl/write/Label;

    const/16 v5, 0x33

    const-string v6, "Bespoke Windgdings 2"

    invoke-direct {v3, v7, v5, v6, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1150
    invoke-interface {v12, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1152
    new-instance v0, Ljxl/write/WritableCellFormat;

    move-object/from16 v3, v27

    invoke-direct {v0, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    const/4 v5, 0x1

    .line 1153
    invoke-virtual {v0, v5}, Ljxl/write/WritableCellFormat;->setShrinkToFit(Z)V

    .line 1154
    new-instance v5, Ljxl/write/Label;

    const/16 v6, 0x35

    const-string v7, "Shrunk to fit"

    const/4 v8, 0x3

    invoke-direct {v5, v8, v6, v7, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1155
    invoke-interface {v12, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1157
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x37

    const-string v6, "Some long wrapped text in a merged cell"

    move-object/from16 v7, v28

    invoke-direct {v0, v8, v5, v6, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1159
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1160
    invoke-interface {v12, v8, v5, v4, v5}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    .line 1162
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x39

    const-string v6, "A cell with a comment"

    const/4 v7, 0x0

    invoke-direct {v0, v7, v5, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1163
    new-instance v5, Ljxl/write/WritableCellFeatures;

    invoke-direct {v5}, Ljxl/write/WritableCellFeatures;-><init>()V

    const-string v6, "the cell comment"

    .line 1164
    invoke-virtual {v5, v6}, Ljxl/write/WritableCellFeatures;->setComment(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v0, v5}, Ljxl/write/Label;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1166
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1168
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x3b

    const-string v6, "A cell with a long comment"

    invoke-direct {v0, v7, v5, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1170
    new-instance v5, Ljxl/write/WritableCellFeatures;

    invoke-direct {v5}, Ljxl/write/WritableCellFeatures;-><init>()V

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    const-wide/high16 v20, 0x4018000000000000L    # 6.0

    const-string v17, "a very long cell comment indeed that won\'t fit inside a standard comment box, so a larger comment box is used instead"

    move-object/from16 v16, v5

    .line 1171
    invoke-virtual/range {v16 .. v21}, Ljxl/write/WritableCellFeatures;->setComment(Ljava/lang/String;DD)V

    .line 1175
    invoke-virtual {v0, v5}, Ljxl/write/Label;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1176
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1178
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1179
    invoke-virtual {v0, v4}, Ljxl/write/WritableCellFormat;->setIndentation(I)V

    .line 1180
    new-instance v3, Ljxl/write/Label;

    const/16 v5, 0x3d

    const-string v6, "Some indented text"

    const/4 v7, 0x0

    invoke-direct {v3, v7, v5, v6, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1181
    invoke-interface {v12, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1183
    new-instance v0, Ljxl/write/Label;

    const/16 v3, 0x3f

    const-string v5, "Data validation:  list"

    invoke-direct {v0, v7, v3, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1184
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1186
    new-instance v0, Ljxl/write/Blank;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v3}, Ljxl/write/Blank;-><init>(II)V

    .line 1187
    new-instance v3, Ljxl/write/WritableCellFeatures;

    invoke-direct {v3}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 1188
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "bagpuss"

    .line 1189
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "clangers"

    .line 1190
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "ivor the engine"

    .line 1191
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "noggin the nog"

    .line 1192
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    invoke-virtual {v3, v5}, Ljxl/write/WritableCellFeatures;->setDataValidationList(Ljava/util/Collection;)V

    .line 1194
    invoke-virtual {v0, v3}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1195
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1197
    new-instance v0, Ljxl/write/Label;

    const/16 v3, 0x40

    const-string v5, "Data validation:  number > 4.5"

    const/4 v6, 0x0

    invoke-direct {v0, v6, v3, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1198
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1200
    new-instance v0, Ljxl/write/Blank;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v3}, Ljxl/write/Blank;-><init>(II)V

    .line 1201
    new-instance v3, Ljxl/write/WritableCellFeatures;

    invoke-direct {v3}, Ljxl/write/WritableCellFeatures;-><init>()V

    const-wide/high16 v5, 0x4012000000000000L    # 4.5

    .line 1202
    sget-object v7, Ljxl/write/WritableCellFeatures;->GREATER_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    invoke-virtual {v3, v5, v6, v7}, Ljxl/write/WritableCellFeatures;->setNumberValidation(DLjxl/biff/BaseCellFeatures$ValidationCondition;)V

    .line 1203
    invoke-virtual {v0, v3}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1204
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1206
    new-instance v0, Ljxl/write/Label;

    const/16 v3, 0x41

    const-string v5, "Data validation:  named range"

    const/4 v6, 0x0

    invoke-direct {v0, v6, v3, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1207
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1209
    new-instance v0, Ljxl/write/Label;

    const-string v5, "tiger"

    invoke-direct {v0, v4, v3, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1210
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1211
    new-instance v0, Ljxl/write/Label;

    const-string v5, "sword"

    invoke-direct {v0, v2, v3, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1212
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1213
    new-instance v0, Ljxl/write/Label;

    const-string v2, "honour"

    const/4 v5, 0x6

    invoke-direct {v0, v5, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1214
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1215
    new-instance v0, Ljxl/write/Label;

    const-string v2, "company"

    const/4 v5, 0x7

    invoke-direct {v0, v5, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1216
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1217
    new-instance v0, Ljxl/write/Label;

    const-string v2, "victory"

    invoke-direct {v0, v14, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1218
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1219
    new-instance v0, Ljxl/write/Label;

    const-string v2, "fortress"

    const/16 v5, 0x9

    invoke-direct {v0, v5, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1220
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1222
    new-instance v0, Ljxl/write/Blank;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljxl/write/Blank;-><init>(II)V

    .line 1223
    new-instance v2, Ljxl/write/WritableCellFeatures;

    invoke-direct {v2}, Ljxl/write/WritableCellFeatures;-><init>()V

    const-string v3, "validation_range"

    .line 1224
    invoke-virtual {v2, v3}, Ljxl/write/WritableCellFeatures;->setDataValidationRange(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v0, v2}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1226
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x2d

    const/4 v2, 0x0

    .line 1229
    invoke-interface {v12, v1, v0, v2}, Ljxl/write/WritableSheet;->setRowGroup(IIZ)V

    .line 1232
    new-instance v0, Ljxl/write/Label;

    const/16 v3, 0x42

    const-string v5, "Block of cells B67-F71 with data validation"

    invoke-direct {v0, v2, v3, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1233
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Achilles"

    .line 1236
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Agamemnon"

    .line 1237
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Hector"

    .line 1238
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Odysseus"

    .line 1239
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Patroclus"

    .line 1240
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Nestor"

    .line 1241
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    new-instance v2, Ljxl/write/Blank;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v3}, Ljxl/write/Blank;-><init>(II)V

    .line 1244
    new-instance v3, Ljxl/write/WritableCellFeatures;

    invoke-direct {v3}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 1245
    invoke-virtual {v3, v0}, Ljxl/write/WritableCellFeatures;->setDataValidationList(Ljava/util/Collection;)V

    .line 1246
    invoke-virtual {v2, v3}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1247
    invoke-interface {v12, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1248
    invoke-interface {v12, v2, v4, v4}, Ljxl/write/WritableSheet;->applySharedDataValidation(Ljxl/write/WritableCell;II)V

    .line 1250
    new-instance v0, Ljxl/write/WritableCellFeatures;

    invoke-direct {v0}, Ljxl/write/WritableCellFeatures;-><init>()V

    const-string v2, ""

    .line 1251
    invoke-virtual {v0, v2}, Ljxl/write/WritableCellFeatures;->setDataValidationRange(Ljava/lang/String;)V

    .line 1252
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x47

    const-string v4, "Read only cell using empty data validation"

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1253
    invoke-virtual {v2, v0}, Ljxl/write/Label;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1254
    invoke-interface {v12, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x2d

    .line 1257
    invoke-interface {v12, v1, v0, v5}, Ljxl/write/WritableSheet;->setRowGroup(IIZ)V

    return-void
.end method

.method private writeLabelsSheet(Ljxl/write/WritableSheet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 1363
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setProtected(Z)V

    .line 1364
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    const-string v2, "jxl"

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPassword(Ljava/lang/String;)V

    .line 1365
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setVerticalFreeze(I)V

    .line 1366
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    const/16 v3, 0x1f4

    invoke-virtual {v0, v3}, Ljxl/SheetSettings;->setDefaultRowHeight(I)V

    .line 1368
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v3, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 1369
    invoke-virtual {v0, v1}, Ljxl/write/WritableFont;->setItalic(Z)V

    .line 1371
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1373
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    const/16 v4, 0x1900

    .line 1374
    invoke-virtual {v0, v4}, Ljxl/CellView;->setSize(I)V

    .line 1375
    invoke-virtual {v0, v3}, Ljxl/CellView;->setFormat(Ljxl/format/CellFormat;)V

    const/4 v4, 0x0

    .line 1376
    invoke-interface {p1, v4, v0}, Ljxl/write/WritableSheet;->setColumnView(ILjxl/CellView;)V

    const/16 v0, 0xf

    .line 1377
    invoke-interface {p1, v1, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v0, 0x0

    :goto_0
    const-string v5, "Distinct label number "

    const-string v6, "Common Label"

    const/16 v7, 0x3d

    if-ge v0, v7, :cond_0

    .line 1381
    new-instance v7, Ljxl/write/Label;

    invoke-direct {v7, v4, v0, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1382
    new-instance v6, Ljxl/write/Label;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v1, v0, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1383
    invoke-interface {p1, v7}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1384
    invoke-interface {p1, v6}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1390
    :cond_0
    new-instance v0, Ljxl/write/Label;

    invoke-direct {v0, v4, v7, v6, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1391
    new-instance v8, Ljxl/write/Label;

    const-string v9, "1-1234567890"

    invoke-direct {v8, v1, v7, v9, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1392
    new-instance v9, Ljxl/write/Label;

    const/4 v10, 0x2

    const-string v11, "2-1234567890"

    invoke-direct {v9, v10, v7, v11, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1393
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1394
    invoke-interface {p1, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1395
    invoke-interface {p1, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x3e

    :goto_1
    const/16 v3, 0xc8

    if-ge v0, v3, :cond_1

    .line 1399
    new-instance v3, Ljxl/write/Label;

    invoke-direct {v3, v4, v0, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1400
    new-instance v7, Ljxl/write/Label;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v0, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1401
    invoke-interface {p1, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1402
    invoke-interface {p1, v7}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1406
    :cond_1
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v3, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    const/16 v5, 0xa

    sget-object v6, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v3, v5, v6}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    .line 1407
    sget-object v3, Ljxl/format/Colour;->RED:Ljxl/format/Colour;

    invoke-virtual {v0, v3}, Ljxl/write/WritableFont;->setColour(Ljxl/format/Colour;)V

    .line 1408
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1409
    invoke-virtual {v3, v1}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 1410
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0xcd

    const-string v6, "Different format"

    invoke-direct {v0, v4, v5, v6, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1411
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1414
    new-instance v0, Ljxl/write/Label;

    const-string v4, "A column for autosizing"

    invoke-direct {v0, v2, v10, v4, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1415
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1416
    new-instance v0, Ljxl/write/Label;

    const/4 v3, 0x4

    const-string v4, "Another label, longer this time and in a different font"

    invoke-direct {v0, v2, v3, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1418
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1420
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    .line 1421
    invoke-virtual {v0, v1}, Ljxl/CellView;->setAutosize(Z)V

    .line 1422
    invoke-interface {p1, v2, v0}, Ljxl/write/WritableSheet;->setColumnView(ILjxl/CellView;)V

    return-void
.end method

.method private writeNumberFormatSheet(Ljxl/write/WritableSheet;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 149
    new-instance v1, Ljxl/write/WritableCellFormat;

    sget-object v2, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    invoke-direct {v1, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    const/4 v2, 0x1

    .line 151
    invoke-virtual {v1, v2}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    const/16 v3, 0x14

    const/4 v4, 0x0

    .line 153
    invoke-interface {v0, v4, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v5, 0x4

    .line 154
    invoke-interface {v0, v5, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v6, 0x5

    .line 155
    invoke-interface {v0, v6, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v7, 0x6

    .line 156
    invoke-interface {v0, v7, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 159
    new-instance v3, Ljxl/write/Label;

    const-string v8, "+/- Pi - default format"

    invoke-direct {v3, v4, v4, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 160
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 162
    new-instance v3, Ljxl/write/Number;

    const-wide v8, 0x400921fb54411744L    # 3.1415926535

    invoke-direct {v3, v2, v4, v8, v9}, Ljxl/write/Number;-><init>(IID)V

    .line 163
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 165
    new-instance v3, Ljxl/write/Number;

    const/4 v8, 0x2

    const-wide v9, -0x3ff6de04abbee8bcL    # -3.1415926535

    invoke-direct {v3, v8, v4, v9, v10}, Ljxl/write/Number;-><init>(IID)V

    .line 166
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 168
    new-instance v3, Ljxl/write/Label;

    const-string v9, "+/- Pi - integer format"

    invoke-direct {v3, v4, v2, v9, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 169
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 171
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v9, Ljxl/write/NumberFormats;->INTEGER:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v9}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 172
    new-instance v9, Ljxl/write/Number;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-wide v13, 0x400921fb54411744L    # 3.1415926535

    move-object v10, v9

    move-object v15, v3

    invoke-direct/range {v10 .. v15}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 173
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 175
    new-instance v9, Ljxl/write/Number;

    const/4 v11, 0x2

    const-wide v13, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 176
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 178
    new-instance v3, Ljxl/write/Label;

    const-string v9, "+/- Pi - float 2dps"

    invoke-direct {v3, v4, v8, v9, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 179
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 181
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v9, Ljxl/write/NumberFormats;->FLOAT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v9}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 182
    new-instance v9, Ljxl/write/Number;

    const/4 v11, 0x1

    const/4 v12, 0x2

    const-wide v13, 0x400921fb54411744L    # 3.1415926535

    move-object v10, v9

    move-object v15, v3

    invoke-direct/range {v10 .. v15}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 183
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 185
    new-instance v9, Ljxl/write/Number;

    const/4 v11, 0x2

    const-wide v13, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 186
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 188
    new-instance v3, Ljxl/write/Label;

    const/4 v9, 0x3

    const-string v10, "+/- Pi - custom 3dps"

    invoke-direct {v3, v4, v9, v10, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 190
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 192
    new-instance v3, Ljxl/write/NumberFormat;

    const-string v10, "#.###"

    invoke-direct {v3, v10}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 193
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 194
    new-instance v3, Ljxl/write/Number;

    const/4 v12, 0x1

    const/4 v13, 0x3

    const-wide v14, 0x400921fb54411744L    # 3.1415926535

    move-object v11, v3

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 195
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 197
    new-instance v3, Ljxl/write/Number;

    const/4 v12, 0x2

    const-wide v14, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 198
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 200
    new-instance v3, Ljxl/write/Label;

    const-string v10, "+/- Pi - custom &3.14"

    invoke-direct {v3, v4, v5, v10, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 202
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 204
    new-instance v3, Ljxl/write/NumberFormat;

    const-string v10, "&#.00"

    invoke-direct {v3, v10}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 205
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 206
    new-instance v3, Ljxl/write/Number;

    const/4 v12, 0x1

    const/4 v13, 0x4

    const-wide v14, 0x400921fb54411744L    # 3.1415926535

    move-object v11, v3

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 207
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 209
    new-instance v3, Ljxl/write/Number;

    const/4 v12, 0x2

    const-wide v14, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 210
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 212
    new-instance v3, Ljxl/write/Label;

    const-string v10, "+/- Pi - custom Text #.### Text"

    invoke-direct {v3, v4, v6, v10, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 214
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 216
    new-instance v3, Ljxl/write/NumberFormat;

    const-string v10, "Text#.####Text"

    invoke-direct {v3, v10}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 217
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 218
    new-instance v3, Ljxl/write/Number;

    const/4 v12, 0x1

    const/4 v13, 0x5

    const-wide v14, 0x400921fb54411744L    # 3.1415926535

    move-object v11, v3

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 219
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 221
    new-instance v3, Ljxl/write/Number;

    const/4 v12, 0x2

    const-wide v14, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 222
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 225
    new-instance v3, Ljxl/write/Label;

    const-string v10, "+/- Bilko default format"

    invoke-direct {v3, v5, v4, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 226
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 227
    new-instance v3, Ljxl/write/Number;

    const-wide v10, 0x416cb11160000000L    # 1.5042699E7

    invoke-direct {v3, v6, v4, v10, v11}, Ljxl/write/Number;-><init>(IID)V

    .line 228
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 229
    new-instance v3, Ljxl/write/Number;

    const-wide v10, -0x3e934eeea0000000L    # -1.5042699E7

    invoke-direct {v3, v7, v4, v10, v11}, Ljxl/write/Number;-><init>(IID)V

    .line 230
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 232
    new-instance v3, Ljxl/write/Label;

    const-string v10, "+/- Bilko float format"

    invoke-direct {v3, v5, v2, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 233
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 234
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v10, Ljxl/write/NumberFormats;->FLOAT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v10}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 235
    new-instance v10, Ljxl/write/Number;

    const/4 v12, 0x5

    const/4 v13, 0x1

    const-wide v14, 0x416cb11160000000L    # 1.5042699E7

    move-object v11, v10

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 236
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 237
    new-instance v10, Ljxl/write/Number;

    const/4 v12, 0x6

    const-wide v14, -0x3e934eeea0000000L    # -1.5042699E7

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 238
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 240
    new-instance v3, Ljxl/write/Label;

    const-string v10, "+/- Thousands separator"

    invoke-direct {v3, v5, v8, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 241
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 242
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v8, Ljxl/write/NumberFormats;->THOUSANDS_INTEGER:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 244
    new-instance v8, Ljxl/write/Number;

    const/4 v12, 0x5

    const/4 v13, 0x2

    const-wide v14, 0x416cb11160000000L    # 1.5042699E7

    move-object v11, v8

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 245
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 246
    new-instance v8, Ljxl/write/Number;

    const/4 v12, 0x6

    const-wide v14, -0x3e934eeea0000000L    # -1.5042699E7

    move-object v11, v8

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 247
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 249
    new-instance v3, Ljxl/write/Label;

    const-string v8, "+/- Accounting red - added 0.01"

    invoke-direct {v3, v5, v9, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 250
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 251
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v8, Ljxl/write/NumberFormats;->ACCOUNTING_RED_FLOAT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 253
    new-instance v8, Ljxl/write/Number;

    const/4 v11, 0x5

    const/4 v12, 0x3

    const-wide v13, 0x416cb1116051eb85L    # 1.504269901E7

    move-object v10, v8

    move-object v15, v3

    invoke-direct/range {v10 .. v15}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 254
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 255
    new-instance v8, Ljxl/write/Number;

    const/4 v11, 0x6

    const-wide v13, -0x3e934eee9fae147bL    # -1.504269901E7

    move-object v10, v8

    invoke-direct/range {v10 .. v15}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 256
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 258
    new-instance v3, Ljxl/write/Label;

    const-string v8, "+/- Percent"

    invoke-direct {v3, v5, v5, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 259
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 260
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v8, Ljxl/write/NumberFormats;->PERCENT_INTEGER:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 262
    new-instance v8, Ljxl/write/Number;

    const/4 v10, 0x5

    const/4 v11, 0x4

    const-wide v12, 0x416cb11160000000L    # 1.5042699E7

    move-object v9, v8

    move-object v14, v3

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 263
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 264
    new-instance v8, Ljxl/write/Number;

    const/4 v10, 0x6

    const-wide v12, -0x3e934eeea0000000L    # -1.5042699E7

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 265
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 267
    new-instance v3, Ljxl/write/Label;

    const-string v8, "+/- Exponential - 2dps"

    invoke-direct {v3, v5, v6, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 268
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 269
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v6, Ljxl/write/NumberFormats;->EXPONENTIAL:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v6}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 271
    new-instance v6, Ljxl/write/Number;

    const/4 v10, 0x5

    const/4 v11, 0x5

    const-wide v12, 0x416cb11160000000L    # 1.5042699E7

    move-object v9, v6

    move-object v14, v3

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 272
    invoke-interface {v0, v6}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 273
    new-instance v6, Ljxl/write/Number;

    const/4 v10, 0x6

    const-wide v12, -0x3e934eeea0000000L    # -1.5042699E7

    move-object v9, v6

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 274
    invoke-interface {v0, v6}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 276
    new-instance v3, Ljxl/write/Label;

    const-string v6, "+/- Custom exponentional - 3dps"

    invoke-direct {v3, v5, v7, v6, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 277
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 278
    new-instance v3, Ljxl/write/NumberFormat;

    const-string v6, "0.000E0"

    invoke-direct {v3, v6}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 279
    new-instance v6, Ljxl/write/WritableCellFormat;

    invoke-direct {v6, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 280
    new-instance v3, Ljxl/write/Number;

    const/4 v8, 0x5

    const/4 v9, 0x6

    const-wide v10, 0x416cb11160000000L    # 1.5042699E7

    move-object v7, v3

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 281
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 282
    new-instance v3, Ljxl/write/Number;

    const/4 v8, 0x6

    const-wide v10, -0x3e934eeea0000000L    # -1.5042699E7

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 283
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 285
    new-instance v3, Ljxl/write/Label;

    const/4 v6, 0x7

    const-string v7, "Custom neg brackets"

    invoke-direct {v3, v5, v6, v7, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 286
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 287
    new-instance v3, Ljxl/write/NumberFormat;

    const-string v6, "#,##0;(#,##0)"

    invoke-direct {v3, v6}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 288
    new-instance v6, Ljxl/write/WritableCellFormat;

    invoke-direct {v6, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 289
    new-instance v3, Ljxl/write/Number;

    const/4 v8, 0x5

    const/4 v9, 0x7

    const-wide v10, 0x416cb11160000000L    # 1.5042699E7

    move-object v7, v3

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 290
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 291
    new-instance v3, Ljxl/write/Number;

    const/4 v8, 0x6

    const-wide v10, -0x3e934eeea0000000L    # -1.5042699E7

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 292
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 294
    new-instance v3, Ljxl/write/Label;

    const/16 v6, 0x8

    const-string v7, "Custom neg brackets 2"

    invoke-direct {v3, v5, v6, v7, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 295
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 296
    new-instance v3, Ljxl/write/NumberFormat;

    const-string v7, "#,##0;(#,##0)a"

    invoke-direct {v3, v7}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 297
    new-instance v7, Ljxl/write/WritableCellFormat;

    invoke-direct {v7, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 298
    new-instance v3, Ljxl/write/Number;

    const/4 v9, 0x5

    const/16 v10, 0x8

    const-wide v11, 0x416cb11160000000L    # 1.5042699E7

    move-object v8, v3

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 299
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 300
    new-instance v3, Ljxl/write/Number;

    const/4 v9, 0x6

    const-wide v11, -0x3e934eeea0000000L    # -1.5042699E7

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 301
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 303
    new-instance v3, Ljxl/write/Label;

    const/16 v7, 0x9

    const-string v8, "Custom percent"

    invoke-direct {v3, v5, v7, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 304
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 305
    new-instance v3, Ljxl/write/NumberFormat;

    const-string v7, "0.0%"

    invoke-direct {v3, v7}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 306
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 307
    new-instance v3, Ljxl/write/Number;

    const/4 v9, 0x5

    const/16 v10, 0x9

    const-wide v11, 0x400921fb53c8d4f1L    # 3.14159265

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 308
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 312
    new-instance v3, Ljxl/write/Label;

    const/16 v7, 0xa

    const-string v8, "Boolean - TRUE"

    invoke-direct {v3, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 313
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 314
    new-instance v3, Ljxl/write/Boolean;

    invoke-direct {v3, v2, v7, v2}, Ljxl/write/Boolean;-><init>(IIZ)V

    .line 315
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 317
    new-instance v3, Ljxl/write/Label;

    const/16 v7, 0xb

    const-string v8, "Boolean - FALSE"

    invoke-direct {v3, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 318
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 319
    new-instance v3, Ljxl/write/Boolean;

    invoke-direct {v3, v2, v7, v4}, Ljxl/write/Boolean;-><init>(IIZ)V

    .line 320
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 322
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0xc

    const-string v7, "A hidden cell->"

    invoke-direct {v2, v4, v3, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 323
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 324
    new-instance v2, Ljxl/write/Number;

    sget-object v13, Ljxl/write/WritableWorkbook;->HIDDEN_STYLE:Ljxl/write/WritableCellFormat;

    const/4 v9, 0x1

    const/16 v10, 0xc

    const-wide/high16 v11, 0x4031000000000000L    # 17.0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 325
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 328
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x13

    const-string v7, "Currency formats"

    invoke-direct {v2, v5, v3, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 329
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 331
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x15

    const-string v7, "UK Pound"

    invoke-direct {v2, v5, v3, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 332
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 333
    new-instance v2, Ljxl/write/NumberFormat;

    sget-object v3, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v7, "\ufffd #,###.00"

    invoke-direct {v2, v7, v3}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 336
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 337
    new-instance v2, Ljxl/write/Number;

    const/4 v9, 0x5

    const/16 v10, 0x15

    const-wide v11, 0x40c81c8000000000L    # 12345.0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 338
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 340
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x16

    const-string v7, "Euro 1"

    invoke-direct {v2, v5, v3, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 341
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 342
    new-instance v2, Ljxl/write/NumberFormat;

    sget-object v3, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v7, "[$\ufffd-2] #,###.00"

    invoke-direct {v2, v7, v3}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 345
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 347
    new-instance v2, Ljxl/write/Number;

    const/16 v10, 0x16

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 348
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 350
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x17

    const-string v7, "Euro 2"

    invoke-direct {v2, v5, v3, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 351
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 352
    new-instance v2, Ljxl/write/NumberFormat;

    sget-object v3, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v7, "#,###.00[$\ufffd-1]"

    invoke-direct {v2, v7, v3}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 355
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 357
    new-instance v2, Ljxl/write/Number;

    const/16 v10, 0x17

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 358
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 360
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x18

    const-string v7, "Dollar"

    invoke-direct {v2, v5, v3, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 361
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 362
    new-instance v2, Ljxl/write/NumberFormat;

    sget-object v3, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v7, "[$$-409] #,###.00"

    invoke-direct {v2, v7, v3}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 365
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 367
    new-instance v2, Ljxl/write/Number;

    const/16 v10, 0x18

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 368
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 370
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x19

    const-string v7, "Japanese Yen"

    invoke-direct {v2, v5, v3, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 371
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 372
    new-instance v2, Ljxl/write/NumberFormat;

    sget-object v7, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v8, "[$\ufffd-411] #,###.00"

    invoke-direct {v2, v8, v7}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 375
    new-instance v14, Ljxl/write/WritableCellFormat;

    invoke-direct {v14, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 377
    new-instance v2, Ljxl/write/Number;

    const/4 v10, 0x5

    const/16 v11, 0x19

    const-wide v12, 0x40c81c8000000000L    # 12345.0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 378
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 380
    new-instance v2, Ljxl/write/Label;

    const/16 v7, 0x1e

    const-string v8, "Fraction formats"

    invoke-direct {v2, v5, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 381
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 383
    new-instance v2, Ljxl/write/Label;

    const/16 v7, 0x20

    const-string v8, "One digit fraction format"

    invoke-direct {v2, v5, v7, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 384
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 386
    new-instance v14, Ljxl/write/WritableCellFormat;

    sget-object v2, Ljxl/write/NumberFormats;->FRACTION_ONE_DIGIT:Ljxl/biff/DisplayFormat;

    invoke-direct {v14, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 388
    new-instance v2, Ljxl/write/Number;

    const/16 v11, 0x20

    const-wide v12, 0x4009765a9a804966L    # 3.18279

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 389
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 391
    new-instance v2, Ljxl/write/Label;

    const/16 v7, 0x21

    const-string v8, "Two digit fraction format"

    invoke-direct {v2, v5, v7, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 392
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 394
    new-instance v14, Ljxl/write/WritableCellFormat;

    sget-object v2, Ljxl/write/NumberFormats;->FRACTION_TWO_DIGITS:Ljxl/biff/DisplayFormat;

    invoke-direct {v14, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 396
    new-instance v2, Ljxl/write/Number;

    const/16 v11, 0x21

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 397
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 399
    new-instance v2, Ljxl/write/Label;

    const/16 v7, 0x22

    const-string v8, "Three digit fraction format (improper)"

    invoke-direct {v2, v5, v7, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 400
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 402
    new-instance v2, Ljxl/write/NumberFormat;

    sget-object v7, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v8, "???/???"

    invoke-direct {v2, v8, v7}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 405
    new-instance v14, Ljxl/write/WritableCellFormat;

    invoke-direct {v14, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 407
    new-instance v2, Ljxl/write/Number;

    const/16 v11, 0x22

    const-wide v12, 0x4009839ffd60e94fL    # 3.18927

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 408
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 410
    new-instance v2, Ljxl/write/Label;

    const/16 v7, 0x23

    const-string v8, "Three digit fraction format (proper)"

    invoke-direct {v2, v5, v7, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 411
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 413
    new-instance v1, Ljxl/write/NumberFormat;

    sget-object v2, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v5, "# ???/???"

    invoke-direct {v1, v5, v2}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 416
    new-instance v12, Ljxl/write/WritableCellFormat;

    invoke-direct {v12, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 418
    new-instance v1, Ljxl/write/Number;

    const/4 v8, 0x5

    const/16 v9, 0x23

    const-wide v10, 0x4009839ffd60e94fL    # 3.18927

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 419
    invoke-interface {v0, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    const/16 v2, 0x8

    :goto_1
    const/16 v5, 0x6c

    if-ge v2, v5, :cond_0

    .line 426
    new-instance v5, Ljxl/write/Number;

    add-int v7, v2, v1

    int-to-double v7, v7

    invoke-direct {v5, v2, v1, v7, v8}, Ljxl/write/Number;-><init>(IID)V

    .line 427
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x65

    :goto_2
    const/16 v2, 0xbb8

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_2

    .line 436
    new-instance v5, Ljxl/write/Number;

    add-int v6, v2, v1

    int-to-double v6, v6

    invoke-direct {v5, v2, v1, v6, v7}, Ljxl/write/Number;-><init>(IID)V

    .line 437
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public write()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/write/WriteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 104
    new-instance v1, Ljxl/WorkbookSettings;

    invoke-direct {v1}, Ljxl/WorkbookSettings;-><init>()V

    .line 105
    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    const-string v4, "EN"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljxl/WorkbookSettings;->setLocale(Ljava/util/Locale;)V

    .line 106
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Ljxl/demo/Write;->filename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;

    move-result-object v1

    iput-object v1, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const/4 v2, 0x0

    const-string v3, "Number Formats"

    .line 109
    invoke-virtual {v1, v3, v2}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v1

    .line 110
    iget-object v3, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v4, "Date Formats"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v3

    .line 111
    iget-object v4, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v5, "Label Formats"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v4

    .line 112
    iget-object v5, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v6, "Borders"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v5

    .line 113
    iget-object v6, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const/4 v15, 0x4

    const-string v7, "Labels"

    invoke-virtual {v6, v7, v15}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v6

    .line 114
    iget-object v7, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v8, "Formulas"

    const/4 v9, 0x5

    invoke-virtual {v7, v8, v9}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v7

    .line 115
    iget-object v8, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v9, "Images"

    const/4 v10, 0x6

    invoke-virtual {v8, v9, v10}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v14

    .line 120
    iget-object v8, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    sget-object v9, Ljxl/format/Colour;->LIME:Ljxl/format/Colour;

    const/16 v10, 0xff

    invoke-virtual {v8, v9, v10, v2, v2}, Ljxl/write/WritableWorkbook;->setColourRGB(Ljxl/format/Colour;III)V

    .line 123
    iget-object v8, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v9, "namedrange"

    const/4 v11, 0x1

    const/16 v12, 0xb

    const/4 v13, 0x5

    const/16 v2, 0xe

    move-object v10, v5

    move-object/from16 v23, v14

    move v14, v2

    invoke-virtual/range {v8 .. v14}, Ljxl/write/WritableWorkbook;->addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V

    .line 124
    iget-object v2, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v8, "validation_range"

    const/4 v10, 0x4

    const/16 v11, 0x41

    const/16 v12, 0x9

    const/16 v13, 0x41

    move-object v14, v7

    move-object v7, v2

    move-object v9, v4

    invoke-virtual/range {v7 .. v13}, Ljxl/write/WritableWorkbook;->addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V

    .line 125
    iget-object v2, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v17, "formulavalue"

    const/16 v19, 0x1

    const/16 v20, 0x2d

    const/16 v21, 0x1

    const/16 v22, 0x2d

    move-object/from16 v16, v2

    move-object/from16 v18, v14

    invoke-virtual/range {v16 .. v22}, Ljxl/write/WritableWorkbook;->addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V

    .line 128
    invoke-interface {v6}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v2

    const/16 v7, 0xf

    const/16 v8, 0x23

    invoke-virtual {v2, v15, v15, v7, v8}, Ljxl/SheetSettings;->setPrintArea(IIII)V

    .line 130
    invoke-direct {v0, v4}, Ljxl/demo/Write;->writeLabelFormatSheet(Ljxl/write/WritableSheet;)V

    .line 131
    invoke-direct {v0, v1}, Ljxl/demo/Write;->writeNumberFormatSheet(Ljxl/write/WritableSheet;)V

    .line 132
    invoke-direct {v0, v3}, Ljxl/demo/Write;->writeDateFormatSheet(Ljxl/write/WritableSheet;)V

    .line 133
    invoke-direct {v0, v5}, Ljxl/demo/Write;->writeBordersSheet(Ljxl/write/WritableSheet;)V

    .line 134
    invoke-direct {v0, v6}, Ljxl/demo/Write;->writeLabelsSheet(Ljxl/write/WritableSheet;)V

    .line 135
    invoke-direct {v0, v14}, Ljxl/demo/Write;->writeFormulaSheet(Ljxl/write/WritableSheet;)V

    move-object/from16 v1, v23

    .line 136
    invoke-direct {v0, v1}, Ljxl/demo/Write;->writeImageSheet(Ljxl/write/WritableSheet;)V

    .line 138
    iget-object v1, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    invoke-virtual {v1}, Ljxl/write/WritableWorkbook;->write()V

    .line 139
    iget-object v1, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    invoke-virtual {v1}, Ljxl/write/WritableWorkbook;->close()V

    return-void
.end method
