.class Ljxl/read/biff/StringFormulaRecord;
.super Ljxl/read/biff/CellValue;
.source "StringFormulaRecord.java"

# interfaces
.implements Ljxl/LabelCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/StringFormulaCell;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private data:[B

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private formulaString:Ljava/lang/String;

.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Ljxl/read/biff/StringFormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/StringFormulaRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2, p5}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 151
    iput-object p3, p0, Ljxl/read/biff/StringFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 152
    iput-object p4, p0, Ljxl/read/biff/StringFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 154
    invoke-virtual {p0}, Ljxl/read/biff/StringFormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/StringFormulaRecord;->data:[B

    const-string p1, ""

    .line 155
    iput-object p1, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V
    .locals 2

    .line 95
    invoke-direct {p0, p1, p3, p6}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 97
    iput-object p4, p0, Ljxl/read/biff/StringFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 98
    iput-object p5, p0, Ljxl/read/biff/StringFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 100
    invoke-virtual {p0}, Ljxl/read/biff/StringFormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/StringFormulaRecord;->data:[B

    .line 102
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result p1

    .line 107
    invoke-virtual {p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    .line 109
    :goto_0
    invoke-virtual {p3}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p6

    sget-object v0, Ljxl/biff/Type;->STRING:Ljxl/biff/Type;

    const/4 v1, 0x4

    if-eq p6, v0, :cond_0

    if-ge p5, v1, :cond_0

    .line 111
    invoke-virtual {p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p3

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x1

    if-ge p5, v1, :cond_1

    const/4 p5, 0x1

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    .line 114
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Ljxl/common/Assert;->verify(ZLjava/lang/String;)V

    .line 115
    invoke-virtual {p3}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    .line 118
    invoke-virtual {p2}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object p3

    .line 119
    :goto_2
    invoke-virtual {p3}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p3

    sget-object p5, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p3, p5, :cond_2

    .line 121
    invoke-virtual {p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p3

    .line 122
    array-length p5, p1

    invoke-virtual {p3}, Ljxl/read/biff/Record;->getLength()I

    move-result v0

    add-int/2addr p5, v0

    sub-int/2addr p5, p6

    new-array p5, p5, [B

    .line 123
    array-length v0, p1

    invoke-static {p1, p4, p5, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    invoke-virtual {p3}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    array-length p1, p1

    invoke-virtual {p3}, Ljxl/read/biff/Record;->getLength()I

    move-result p3

    sub-int/2addr p3, p6

    invoke-static {v0, p6, p5, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    invoke-virtual {p2}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object p3

    move-object p1, p5

    goto :goto_2

    .line 129
    :cond_2
    invoke-direct {p0, p1, p7}, Ljxl/read/biff/StringFormulaRecord;->readString([BLjxl/WorkbookSettings;)V

    return-void
.end method

.method private readString([BLjxl/WorkbookSettings;)V
    .locals 7

    const/4 v0, 0x0

    .line 168
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    if-nez v1, :cond_0

    const-string p1, ""

    .line 172
    iput-object p1, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v3, 0x2

    .line 176
    aget-byte v4, p1, v3

    const/4 v5, 0x3

    and-int/lit8 v6, v4, 0xf

    if-eq v6, v4, :cond_1

    .line 184
    aget-byte v1, p1, v0

    invoke-static {v1, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    .line 185
    aget-byte v4, p1, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    :goto_0
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    and-int/lit8 v6, v4, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_4

    add-int/lit8 v3, v3, 0x2

    :cond_4
    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, 0x4

    :cond_5
    and-int/2addr v4, v2

    if-nez v4, :cond_6

    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    .line 210
    invoke-static {p1, v1, v3, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    goto :goto_3

    .line 214
    :cond_7
    invoke-static {p1, v1, v3}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    :goto_3
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->formulaString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->data:[B

    array-length v1, v0

    const/16 v2, 0x16

    sub-int/2addr v1, v2

    new-array v4, v1, [B

    const/4 v3, 0x0

    .line 279
    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v6, p0, Ljxl/read/biff/StringFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    iget-object v7, p0, Ljxl/read/biff/StringFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-virtual {p0}, Ljxl/read/biff/StringFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v8

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 283
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 284
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->formulaString:Ljava/lang/String;

    .line 287
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->formulaString:Ljava/lang/String;

    return-object v0
.end method

.method public getFormulaData()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Ljxl/read/biff/StringFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->data:[B

    array-length v1, v0

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 263
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 258
    :cond_0
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 245
    sget-object v0, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    return-object v0
.end method
