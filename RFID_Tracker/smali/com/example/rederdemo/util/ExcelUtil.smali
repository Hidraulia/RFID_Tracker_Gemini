.class public Lcom/example/rederdemo/util/ExcelUtil;
.super Ljava/lang/Object;
.source "ExcelUtil.java"


# static fields
.field public static final GBK_ENCODING:Ljava/lang/String; = "GBK"

.field public static final UTF8_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static arial10font:Ljxl/write/WritableFont;

.field public static arial10format:Ljxl/write/WritableCellFormat;

.field public static arial12font:Ljxl/write/WritableFont;

.field public static arial12format:Ljxl/write/WritableCellFormat;

.field public static arial14font:Ljxl/write/WritableFont;

.field public static arial14format:Ljxl/write/WritableCellFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format()V
    .locals 4

    .line 42
    :try_start_0
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    const/16 v2, 0xe

    sget-object v3, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v1, v2, v3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    sput-object v0, Lcom/example/rederdemo/util/ExcelUtil;->arial14font:Ljxl/write/WritableFont;

    .line 43
    sget-object v1, Ljxl/format/Colour;->LIGHT_BLUE:Ljxl/format/Colour;

    invoke-virtual {v0, v1}, Ljxl/write/WritableFont;->setColour(Ljxl/format/Colour;)V

    .line 44
    new-instance v0, Ljxl/write/WritableCellFormat;

    sget-object v1, Lcom/example/rederdemo/util/ExcelUtil;->arial14font:Ljxl/write/WritableFont;

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    sput-object v0, Lcom/example/rederdemo/util/ExcelUtil;->arial14format:Ljxl/write/WritableCellFormat;

    .line 45
    sget-object v1, Ljxl/format/Alignment;->CENTRE:Ljxl/format/Alignment;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 46
    sget-object v0, Lcom/example/rederdemo/util/ExcelUtil;->arial14format:Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v2, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v1, v2}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 47
    sget-object v0, Lcom/example/rederdemo/util/ExcelUtil;->arial14format:Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/format/Colour;->VERY_LIGHT_YELLOW:Ljxl/format/Colour;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 49
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v2, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    sput-object v0, Lcom/example/rederdemo/util/ExcelUtil;->arial10font:Ljxl/write/WritableFont;

    .line 50
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    sput-object v1, Lcom/example/rederdemo/util/ExcelUtil;->arial10format:Ljxl/write/WritableCellFormat;

    .line 51
    sget-object v0, Ljxl/format/Alignment;->CENTRE:Ljxl/format/Alignment;

    invoke-virtual {v1, v0}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 52
    sget-object v0, Lcom/example/rederdemo/util/ExcelUtil;->arial10format:Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v2, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v1, v2}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 53
    sget-object v0, Lcom/example/rederdemo/util/ExcelUtil;->arial10format:Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/format/Colour;->GRAY_25:Ljxl/format/Colour;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 55
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    invoke-direct {v0, v1, v3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    sput-object v0, Lcom/example/rederdemo/util/ExcelUtil;->arial12font:Ljxl/write/WritableFont;

    .line 56
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    sput-object v1, Lcom/example/rederdemo/util/ExcelUtil;->arial12format:Ljxl/write/WritableCellFormat;

    .line 57
    sget-object v0, Lcom/example/rederdemo/util/ExcelUtil;->arial10format:Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/format/Alignment;->CENTRE:Ljxl/format/Alignment;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 58
    sget-object v0, Lcom/example/rederdemo/util/ExcelUtil;->arial12format:Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v2, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v1, v2}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V
    :try_end_0
    .catch Ljxl/write/WriteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljxl/write/WriteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 2

    .line 154
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 158
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initExcel(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 72
    invoke-static {}, Lcom/example/rederdemo/util/ExcelUtil;->format()V

    const/4 v0, 0x0

    .line 76
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 80
    :cond_0
    invoke-static {v1}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;)Ljxl/write/WritableWorkbook;

    move-result-object v0

    const/4 p0, 0x0

    .line 81
    invoke-virtual {v0, p1, p0}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v1

    .line 83
    new-instance v2, Ljxl/write/Label;

    sget-object v3, Lcom/example/rederdemo/util/ExcelUtil;->arial14format:Ljxl/write/WritableCellFormat;

    invoke-direct {v2, p0, p0, p1, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    invoke-interface {v1, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/4 p1, 0x0

    .line 84
    :goto_0
    array-length v2, p2

    if-ge p1, v2, :cond_1

    .line 85
    new-instance v2, Ljxl/write/Label;

    aget-object v3, p2, p1

    sget-object v4, Lcom/example/rederdemo/util/ExcelUtil;->arial10format:Ljxl/write/WritableCellFormat;

    invoke-direct {v2, p1, p0, v3, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    invoke-interface {v1, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x154

    .line 87
    invoke-interface {v1, p0, p1}, Ljxl/write/WritableSheet;->setRowView(II)V

    .line 88
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->write()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 94
    :try_start_1
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 90
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 94
    :try_start_3
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_3

    .line 94
    :try_start_4
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    :cond_3
    :goto_3
    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static makeDir(Ljava/io/File;)V
    .locals 1

    .line 163
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ExcelUtil;->makeDir(Ljava/io/File;)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    return-void
.end method

.method public static writeObjListToExcel(Ljava/util/ArrayList;Ljava/lang/String;Lme/weyye/hipermission/PermissionCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Lme/weyye/hipermission/PermissionCallback;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 104
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_7

    const/4 p2, 0x0

    .line 108
    :try_start_0
    new-instance v0, Ljxl/WorkbookSettings;

    invoke-direct {v0}, Ljxl/WorkbookSettings;-><init>()V

    const-string v1, "UTF-8"

    .line 109
    invoke-virtual {v0, v1}, Ljxl/WorkbookSettings;->setEncoding(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    invoke-static {v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/InputStream;)Ljxl/Workbook;

    move-result-object v1

    .line 112
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;Ljxl/Workbook;)Ljxl/write/WritableWorkbook;

    move-result-object p2

    const/4 p1, 0x0

    .line 113
    invoke-virtual {p2, p1}, Ljxl/write/WritableWorkbook;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v1

    const/4 v2, 0x0

    .line 115
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 116
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 117
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 118
    new-instance v5, Ljxl/write/Label;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/example/rederdemo/util/ExcelUtil;->arial12format:Ljxl/write/WritableCellFormat;

    invoke-direct {v5, v4, v6, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    invoke-interface {v1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 119
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_0

    .line 120
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    invoke-interface {v1, v4, v5}, Ljxl/write/WritableSheet;->setColumnView(II)V

    goto :goto_2

    .line 122
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v6

    invoke-interface {v1, v4, v5}, Ljxl/write/WritableSheet;->setColumnView(II)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x15e

    .line 125
    invoke-interface {v1, v2, v3}, Ljxl/write/WritableSheet;->setRowView(II)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p2}, Ljxl/write/WritableWorkbook;->write()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_3

    .line 134
    :try_start_2
    invoke-virtual {p2}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    :cond_3
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_9

    :catch_1
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v0, p2

    goto :goto_6

    :catch_2
    move-exception p0

    move-object v0, p2

    .line 130
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p2, :cond_4

    .line 134
    :try_start_5
    invoke-virtual {p2}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_5
    if-eqz v0, :cond_7

    .line 142
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    :catch_4
    move-exception p0

    .line 144
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catchall_1
    move-exception p0

    :goto_6
    if-eqz p2, :cond_5

    .line 134
    :try_start_7
    invoke-virtual {p2}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_7
    if-eqz v0, :cond_6

    .line 142
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    :catch_6
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    :cond_6
    :goto_8
    throw p0

    :cond_7
    :goto_9
    return-void
.end method
