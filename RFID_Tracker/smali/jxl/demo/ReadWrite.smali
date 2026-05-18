.class public Ljxl/demo/ReadWrite;
.super Ljava/lang/Object;
.source "ReadWrite.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private inputWorkbook:Ljava/io/File;

.field private outputWorkbook:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Ljxl/demo/ReadWrite;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/demo/ReadWrite;->inputWorkbook:Ljava/io/File;

    .line 93
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/demo/ReadWrite;->outputWorkbook:Ljava/io/File;

    .line 94
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    const-string v1, "jxl.nowarnings"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->setSuppressWarnings(Z)V

    .line 95
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input file:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 96
    sget-object p1, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Output file:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    return-void
.end method

.method private modify(Ljxl/write/WritableWorkbook;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 131
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    const-string v1, "Modifying..."

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    const-string v0, "modified"

    move-object/from16 v1, p1

    .line 133
    invoke-virtual {v1, v0}, Ljxl/write/WritableWorkbook;->getSheet(Ljava/lang/String;)Ljxl/write/WritableSheet;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 141
    invoke-interface {v1, v3, v2}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 142
    new-instance v4, Ljxl/write/WritableFont;

    sget-object v5, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v6, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    const/16 v7, 0xa

    invoke-direct {v4, v5, v7, v6}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    .line 145
    new-instance v5, Ljxl/write/WritableCellFormat;

    invoke-direct {v5, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 146
    invoke-interface {v0, v5}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    const/4 v4, 0x4

    .line 149
    invoke-interface {v1, v3, v4}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 150
    new-instance v5, Ljxl/write/WritableFont;

    sget-object v9, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v11, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v13, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    const/16 v10, 0xa

    const/4 v12, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 155
    new-instance v6, Ljxl/write/WritableCellFormat;

    invoke-direct {v6, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 156
    invoke-interface {v0, v6}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    const/4 v5, 0x5

    .line 159
    invoke-interface {v1, v3, v5}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 160
    new-instance v6, Ljxl/write/WritableFont;

    sget-object v8, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    invoke-direct {v6, v8, v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 161
    new-instance v8, Ljxl/write/WritableCellFormat;

    invoke-direct {v8, v6}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 162
    invoke-interface {v0, v8}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    const/4 v6, 0x6

    .line 165
    invoke-interface {v1, v3, v6}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v8

    sget-object v9, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v8, v9, :cond_0

    .line 168
    check-cast v0, Ljxl/write/Label;

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljxl/write/Label;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " - mod"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    :cond_0
    const/16 v8, 0x9

    .line 173
    invoke-interface {v1, v3, v8}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 174
    new-instance v9, Ljxl/write/NumberFormat;

    const-string v10, "#.0000000"

    invoke-direct {v9, v10}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v9}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 176
    invoke-interface {v0, v10}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 180
    invoke-interface {v1, v3, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 181
    new-instance v7, Ljxl/write/NumberFormat;

    const-string v9, "0.####E0"

    invoke-direct {v7, v9}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 182
    new-instance v9, Ljxl/write/WritableCellFormat;

    invoke-direct {v9, v7}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 183
    invoke-interface {v0, v9}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    const/16 v0, 0xb

    .line 186
    invoke-interface {v1, v3, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v7

    .line 187
    sget-object v9, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-interface {v7, v9}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    const/16 v7, 0xc

    .line 190
    invoke-interface {v1, v3, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v7

    .line 191
    invoke-interface {v7}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v9

    sget-object v10, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v9, v10, :cond_1

    .line 193
    check-cast v7, Ljxl/write/Number;

    const-wide/high16 v9, 0x4045000000000000L    # 42.0

    .line 194
    invoke-virtual {v7, v9, v10}, Ljxl/write/Number;->setValue(D)V

    :cond_1
    const/16 v7, 0xd

    .line 198
    invoke-interface {v1, v3, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v7

    .line 199
    invoke-interface {v7}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v9

    sget-object v10, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v9, v10, :cond_2

    .line 201
    check-cast v7, Ljxl/write/Number;

    .line 202
    invoke-virtual {v7}, Ljxl/write/Number;->getValue()D

    move-result-wide v9

    const-wide v11, 0x3fb999999999999aL    # 0.1

    add-double/2addr v9, v11

    invoke-virtual {v7, v9, v10}, Ljxl/write/Number;->setValue(D)V

    :cond_2
    const/16 v7, 0x10

    .line 206
    invoke-interface {v1, v3, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v9

    .line 207
    new-instance v10, Ljxl/write/DateFormat;

    const-string v11, "dd MMM yyyy HH:mm:ss"

    invoke-direct {v10, v11}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 208
    new-instance v11, Ljxl/write/WritableCellFormat;

    invoke-direct {v11, v10}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 209
    invoke-interface {v9, v11}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    const/16 v9, 0x11

    .line 212
    invoke-interface {v1, v3, v9}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v9

    .line 213
    new-instance v10, Ljxl/write/WritableCellFormat;

    sget-object v11, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v10, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 214
    invoke-interface {v9, v10}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    const/16 v9, 0x12

    .line 217
    invoke-interface {v1, v3, v9}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v9

    .line 218
    invoke-interface {v9}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v11

    sget-object v12, Ljxl/CellType;->DATE:Ljxl/CellType;

    if-ne v11, v12, :cond_3

    .line 220
    check-cast v9, Ljxl/write/DateTime;

    .line 221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    const/16 v12, 0x7ce

    const/4 v13, 0x1

    const/16 v14, 0x12

    const/16 v15, 0xb

    const/16 v16, 0x17

    const/16 v17, 0x1c

    move-object/from16 v11, v18

    .line 222
    invoke-virtual/range {v11 .. v17}, Ljava/util/Calendar;->set(IIIIII)V

    .line 223
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    .line 224
    invoke-virtual {v9, v11}, Ljxl/write/DateTime;->setDate(Ljava/util/Date;)V

    :cond_3
    const/16 v9, 0x16

    .line 229
    invoke-interface {v1, v3, v9}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v9

    .line 230
    invoke-interface {v9}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v11

    sget-object v12, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v11, v12, :cond_4

    .line 232
    check-cast v9, Ljxl/write/Number;

    const-wide v11, 0x401b333333333333L    # 6.8

    .line 233
    invoke-virtual {v9, v11, v12}, Ljxl/write/Number;->setValue(D)V

    :cond_4
    const/16 v9, 0x1d

    .line 238
    invoke-interface {v1, v3, v9}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v9

    .line 239
    invoke-interface {v9}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v11

    sget-object v12, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v11, v12, :cond_5

    .line 241
    check-cast v9, Ljxl/write/Label;

    const-string v11, "Modified string contents"

    .line 242
    invoke-virtual {v9, v11}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    :cond_5
    const/16 v9, 0x22

    .line 245
    invoke-interface {v1, v9}, Ljxl/write/WritableSheet;->insertRow(I)V

    const/16 v9, 0x26

    .line 248
    invoke-interface {v1, v9}, Ljxl/write/WritableSheet;->removeRow(I)V

    .line 251
    invoke-interface {v1, v8}, Ljxl/write/WritableSheet;->insertColumn(I)V

    .line 254
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->removeColumn(I)V

    const/16 v0, 0x2b

    .line 258
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->removeRow(I)V

    .line 259
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->insertRow(I)V

    .line 262
    invoke-interface {v1}, Ljxl/write/WritableSheet;->getWritableHyperlinks()[Ljxl/write/WritableHyperlink;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 264
    :goto_0
    array-length v0, v9

    const/16 v13, 0x27

    if-ge v12, v0, :cond_a

    .line 266
    aget-object v0, v9, v12

    .line 267
    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v14

    if-ne v14, v3, :cond_6

    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v14

    if-ne v14, v13, :cond_6

    .line 272
    :try_start_0
    new-instance v13, Ljava/net/URL;

    const-string v14, "http://www.andykhan.com/jexcelapi/index.html"

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljxl/write/WritableHyperlink;->setURL(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 276
    sget-object v13, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_1

    .line 279
    :cond_6
    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v13

    if-ne v13, v3, :cond_7

    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v13

    const/16 v14, 0x28

    if-ne v13, v14, :cond_7

    .line 281
    new-instance v13, Ljava/io/File;

    const-string v14, "../jexcelapi/docs/overview-summary.html"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljxl/write/WritableHyperlink;->setFile(Ljava/io/File;)V

    goto :goto_1

    .line 283
    :cond_7
    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v13

    if-ne v13, v3, :cond_8

    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v13

    const/16 v14, 0x29

    if-ne v13, v14, :cond_8

    .line 285
    new-instance v13, Ljava/io/File;

    const-string v14, "d:/home/jexcelapi/docs/jxl/package-summary.html"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljxl/write/WritableHyperlink;->setFile(Ljava/io/File;)V

    goto :goto_1

    .line 287
    :cond_8
    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v13

    if-ne v13, v3, :cond_9

    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v13

    const/16 v14, 0x2c

    if-ne v13, v14, :cond_9

    .line 290
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->removeHyperlink(Ljxl/write/WritableHyperlink;)V

    :cond_9
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_a
    const/16 v0, 0x1e

    .line 295
    invoke-interface {v1, v5, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 296
    new-instance v5, Ljxl/write/WritableCellFormat;

    invoke-interface {v0}, Ljxl/write/WritableCell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v9

    invoke-direct {v5, v9}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/format/CellFormat;)V

    .line 297
    sget-object v9, Ljxl/format/Colour;->RED:Ljxl/format/Colour;

    invoke-virtual {v5, v9}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 298
    invoke-interface {v0, v5}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 301
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x31

    const-string v9, "Modified merged cells"

    invoke-direct {v0, v11, v5, v9}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 302
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x46

    .line 305
    invoke-interface {v1, v11, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    check-cast v0, Ljxl/write/Number;

    const-wide/high16 v14, 0x4022000000000000L    # 9.0

    .line 306
    invoke-virtual {v0, v14, v15}, Ljxl/write/Number;->setValue(D)V

    const/16 v0, 0x47

    .line 308
    invoke-interface {v1, v11, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    check-cast v0, Ljxl/write/Number;

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    .line 309
    invoke-virtual {v0, v14, v15}, Ljxl/write/Number;->setValue(D)V

    const/16 v0, 0x49

    .line 311
    invoke-interface {v1, v11, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    check-cast v0, Ljxl/write/Number;

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    .line 312
    invoke-virtual {v0, v14, v15}, Ljxl/write/Number;->setValue(D)V

    .line 315
    new-instance v0, Ljxl/write/Formula;

    const/16 v5, 0x50

    const-string v9, "ROUND(COS(original!B10),2)"

    invoke-direct {v0, v3, v5, v9}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 316
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 319
    new-instance v0, Ljxl/write/Formula;

    const/16 v5, 0x53

    const-string v9, "value1+value2"

    invoke-direct {v0, v3, v5, v9}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 320
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 323
    new-instance v0, Ljxl/write/Formula;

    const/16 v5, 0x54

    const-string v9, "AVERAGE(value1,value1*4,value2)"

    invoke-direct {v0, v3, v5, v9}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 324
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 330
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x58

    const-string v9, "Some copied cells"

    invoke-direct {v0, v11, v5, v9, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 331
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 333
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x59

    const-string v9, "Number from B9"

    invoke-direct {v0, v11, v5, v9}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 334
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 336
    invoke-interface {v1, v3, v8}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 337
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 339
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x5a

    const-string v8, "Label from B4 (modified format)"

    invoke-direct {v0, v11, v5, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 340
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 342
    invoke-interface {v1, v3, v2}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 343
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 345
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x5b

    const-string v5, "Date from B17"

    invoke-direct {v0, v11, v2, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 346
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 348
    invoke-interface {v1, v3, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 349
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 351
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x5c

    const-string v5, "Boolean from E16"

    invoke-direct {v0, v11, v2, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 352
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0xf

    .line 354
    invoke-interface {v1, v4, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 355
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 357
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x5d

    const-string v4, "URL from B40"

    invoke-direct {v0, v11, v2, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 358
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 360
    invoke-interface {v1, v3, v13}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 361
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_b

    .line 366
    new-instance v2, Ljxl/write/Number;

    add-int/lit8 v4, v0, 0x5e

    add-int/lit8 v5, v0, 0x1

    int-to-double v7, v5

    int-to-double v9, v0

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v12

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    invoke-direct {v2, v3, v4, v7, v8}, Ljxl/write/Number;-><init>(IID)V

    .line 367
    invoke-interface {v1, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    move v0, v5

    goto :goto_2

    .line 370
    :cond_b
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x64

    const-string v4, "Formula from B27"

    invoke-direct {v0, v11, v2, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 371
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x1a

    .line 373
    invoke-interface {v1, v3, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 374
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 376
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x65

    const-string v4, "A brand new formula"

    invoke-direct {v0, v11, v2, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 377
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 379
    new-instance v0, Ljxl/write/Formula;

    const-string v4, "SUM(B94:B96)"

    invoke-direct {v0, v3, v2, v4}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 380
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 382
    new-instance v0, Ljxl/write/Label;

    const/16 v4, 0x66

    const-string v5, "A copy of it"

    invoke-direct {v0, v11, v4, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 383
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 385
    invoke-interface {v1, v3, v2}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 386
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 389
    invoke-interface {v1, v3}, Ljxl/write/WritableSheet;->getImage(I)Ljxl/write/WritableImage;

    move-result-object v0

    .line 390
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->removeImage(Ljxl/write/WritableImage;)V

    .line 392
    new-instance v0, Ljxl/write/WritableImage;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x405d000000000000L    # 116.0

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    const-wide/high16 v19, 0x4022000000000000L    # 9.0

    new-instance v2, Ljava/io/File;

    const-string v4, "resources/littlemoretonhall.png"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    move-object/from16 v21, v2

    invoke-direct/range {v12 .. v21}, Ljxl/write/WritableImage;-><init>(DDDDLjava/io/File;)V

    .line 394
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addImage(Ljxl/write/WritableImage;)V

    .line 397
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x97

    const-string v4, "Added drop down validation"

    invoke-direct {v0, v11, v2, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 398
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 400
    new-instance v0, Ljxl/write/Blank;

    invoke-direct {v0, v3, v2}, Ljxl/write/Blank;-><init>(II)V

    .line 401
    new-instance v2, Ljxl/write/WritableCellFeatures;

    invoke-direct {v2}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 402
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "The Fellowship of the Ring"

    .line 403
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "The Two Towers"

    .line 404
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "The Return of the King"

    .line 405
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-virtual {v2, v4}, Ljxl/write/WritableCellFeatures;->setDataValidationList(Ljava/util/Collection;)V

    .line 407
    invoke-virtual {v0, v2}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 408
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 411
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x98

    const-string v4, "Added number validation 2.718 < x < 3.142"

    invoke-direct {v0, v11, v2, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 412
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 413
    new-instance v0, Ljxl/write/Blank;

    invoke-direct {v0, v3, v2}, Ljxl/write/Blank;-><init>(II)V

    .line 414
    new-instance v2, Ljxl/write/WritableCellFeatures;

    invoke-direct {v2}, Ljxl/write/WritableCellFeatures;-><init>()V

    const-wide v5, 0x4005be76c8b43958L    # 2.718

    const-wide v7, 0x400922d0e5604189L    # 3.142

    .line 415
    sget-object v9, Ljxl/write/WritableCellFeatures;->BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Ljxl/write/WritableCellFeatures;->setNumberValidation(DDLjxl/biff/BaseCellFeatures$ValidationCondition;)V

    .line 416
    invoke-virtual {v0, v2}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 417
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x9c

    .line 420
    invoke-interface {v1, v11, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 421
    check-cast v0, Ljxl/write/Label;

    const-string v2, "Label text modified"

    .line 422
    invoke-virtual {v0, v2}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    const/16 v0, 0x9d

    .line 424
    invoke-interface {v1, v11, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 425
    invoke-interface {v0}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v0

    const-string v2, "modified comment text"

    .line 426
    invoke-virtual {v0, v2}, Ljxl/write/WritableCellFeatures;->setComment(Ljava/lang/String;)V

    const/16 v0, 0x9e

    .line 428
    invoke-interface {v1, v11, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 429
    invoke-interface {v0}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->removeComment()V

    const/16 v0, 0xac

    .line 433
    invoke-interface {v1, v11, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 434
    invoke-interface {v0}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Ljxl/write/WritableCellFeatures;->getSharedDataValidationRange()Ljxl/Range;

    move-result-object v4

    .line 436
    invoke-interface {v4}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v4

    .line 437
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->removeSharedDataValidation(Ljxl/write/WritableCell;)V

    .line 438
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "Stanley Featherstonehaugh Ukridge"

    .line 439
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "Major Plank"

    .line 440
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "Earl of Ickenham"

    .line 441
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "Sir Gregory Parsloe-Parsloe"

    .line 442
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "Honoria Glossop"

    .line 443
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "Stiffy Byng"

    .line 444
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "Bingo Little"

    .line 445
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v2, v5}, Ljxl/write/WritableCellFeatures;->setDataValidationList(Ljava/util/Collection;)V

    .line 447
    invoke-interface {v0, v2}, Ljxl/write/WritableCell;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 448
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v2

    invoke-interface {v0}, Ljxl/write/WritableCell;->getColumn()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-interface {v1, v0, v2, v3}, Ljxl/write/WritableSheet;->applySharedDataValidation(Ljxl/write/WritableCell;II)V

    return-void
.end method


# virtual methods
.method public readWrite()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;,
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 107
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    const-string v1, "Reading..."

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Ljxl/demo/ReadWrite;->inputWorkbook:Ljava/io/File;

    invoke-static {v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;)Ljxl/Workbook;

    move-result-object v0

    .line 110
    sget-object v1, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    const-string v2, "Copying..."

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 111
    iget-object v1, p0, Ljxl/demo/ReadWrite;->outputWorkbook:Ljava/io/File;

    invoke-static {v1, v0}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;Ljxl/Workbook;)Ljxl/write/WritableWorkbook;

    move-result-object v0

    .line 113
    iget-object v1, p0, Ljxl/demo/ReadWrite;->inputWorkbook:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jxlrwtest.xls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-direct {p0, v0}, Ljxl/demo/ReadWrite;->modify(Ljxl/write/WritableWorkbook;)V

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->write()V

    .line 119
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V

    .line 120
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    const-string v1, "Done"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    return-void
.end method
