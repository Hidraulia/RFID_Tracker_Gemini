.class public Ljxl/write/biff/FormulaRecord;
.super Ljxl/write/biff/CellValue;
.source "FormulaRecord.java"

# interfaces
.implements Ljxl/biff/FormulaData;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private copiedFrom:Ljxl/write/biff/CellValue;

.field private formulaBytes:[B

.field private formulaString:Ljava/lang/String;

.field private formulaToParse:Ljava/lang/String;

.field private parser:Ljxl/biff/formula/FormulaParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Ljxl/write/biff/FormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/FormulaRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 84
    sget-object v0, Ljxl/biff/Type;->FORMULA2:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;II)V

    .line 85
    iput-object p3, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljxl/format/CellFormat;)V
    .locals 1

    .line 96
    sget-object v0, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p4}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    .line 97
    iput-object p3, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    return-void
.end method

.method protected constructor <init>(IILjxl/write/biff/FormulaRecord;)V
    .locals 1

    .line 110
    sget-object v0, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/write/biff/CellValue;)V

    .line 111
    iput-object p3, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    .line 112
    iget-object p1, p3, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    array-length p1, p1

    new-array p1, p1, [B

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    .line 113
    iget-object p2, p3, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    array-length p3, p1

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected constructor <init>(IILjxl/write/biff/ReadFormulaRecord;)V
    .locals 1

    .line 125
    sget-object v0, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/write/biff/CellValue;)V

    .line 128
    :try_start_0
    iput-object p3, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    .line 129
    invoke-virtual {p3}, Ljxl/write/biff/ReadFormulaRecord;->getFormulaBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    sget-object p2, Ljxl/write/biff/FormulaRecord;->logger:Ljxl/common/Logger;

    const-string p3, ""

    invoke-virtual {p2, p3, p1}, Ljxl/common/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private initialize(Ljxl/WorkbookSettings;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;)V
    .locals 4

    .line 150
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/FormulaRecord;->initializeCopiedFormula(Ljxl/WorkbookSettings;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;)V

    return-void

    .line 156
    :cond_0
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    invoke-direct {v0, v1, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 160
    :try_start_0
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 161
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    sget-object v1, Ljxl/write/biff/FormulaRecord;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " when parsing formula "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in cell "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getColumn()I

    move-result v0

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getRow()I

    move-result v3

    invoke-static {v0, v3}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :try_start_1
    const-string v0, "ERROR(1)"

    .line 175
    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    .line 176
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    invoke-direct {v0, v1, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 177
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 178
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    .line 179
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B
    :try_end_1
    .catch Ljxl/biff/formula/FormulaException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 184
    sget-object p2, Ljxl/write/biff/FormulaRecord;->logger:Ljxl/common/Logger;

    const-string p3, ""

    invoke-virtual {p2, p3, p1}, Ljxl/common/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private initializeCopiedFormula(Ljxl/WorkbookSettings;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;)V
    .locals 7

    .line 202
    :try_start_0
    new-instance v6, Ljxl/biff/formula/FormulaParser;

    iget-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    move-object v0, v6

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v6, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 203
    invoke-virtual {v6}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 204
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getColumn()I

    move-result v1

    iget-object v2, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    invoke-virtual {v2}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getRow()I

    move-result v2

    iget-object v3, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getRow()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljxl/biff/formula/FormulaParser;->adjustRelativeCellReferences(II)V

    .line 207
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v0, "ERROR(1)"

    .line 215
    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    .line 216
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    invoke-direct {v0, v1, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 217
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 218
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    .line 219
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B
    :try_end_1
    .catch Ljxl/biff/formula/FormulaException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 225
    sget-object p2, Ljxl/write/biff/FormulaRecord;->logger:Ljxl/common/Logger;

    const-string p3, ""

    invoke-virtual {p2, p3, p1}, Ljxl/common/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method columnInserted(Ljxl/Sheet;II)V
    .locals 2

    .line 333
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;->columnInserted(IIZ)V

    .line 334
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    return-void
.end method

.method columnRemoved(Ljxl/Sheet;II)V
    .locals 2

    .line 347
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;->columnRemoved(IIZ)V

    .line 348
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    return-void
.end method

.method public copyTo(II)Ljxl/write/WritableCell;
    .locals 0

    const/4 p1, 0x0

    .line 319
    invoke-static {p1}, Ljxl/common/Assert;->verify(Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 5

    .line 254
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getFormulaData()[B

    move-result-object v1

    .line 256
    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 257
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getFormulaData()[B
    .locals 5

    .line 293
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    array-length v1, v0

    const/16 v2, 0x10

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 294
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x6

    .line 296
    aput-byte v2, v1, v0

    const/4 v0, 0x7

    const/16 v2, 0x40

    .line 297
    aput-byte v2, v1, v0

    const/16 v0, 0xc

    const/16 v2, -0x20

    .line 298
    aput-byte v2, v1, v0

    const/16 v0, 0xd

    const/4 v2, -0x4

    .line 299
    aput-byte v2, v1, v0

    const/16 v0, 0x8

    .line 301
    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 304
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    array-length v0, v0

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v1
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 270
    sget-object v0, Ljxl/CellType;->ERROR:Ljxl/CellType;

    return-object v0
.end method

.method rowInserted(Ljxl/Sheet;II)V
    .locals 2

    .line 361
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;->rowInserted(IIZ)V

    .line 362
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    return-void
.end method

.method rowRemoved(Ljxl/Sheet;II)V
    .locals 2

    .line 375
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;->rowRemoved(IIZ)V

    .line 376
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    return-void
.end method

.method setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V
    .locals 1

    .line 242
    invoke-super {p0, p1, p2, p3}, Ljxl/write/biff/CellValue;->setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V

    .line 243
    invoke-virtual {p3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object p1

    invoke-virtual {p3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object p2

    invoke-virtual {p3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljxl/write/biff/FormulaRecord;->initialize(Ljxl/WorkbookSettings;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;)V

    .line 244
    invoke-virtual {p3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljxl/write/biff/WritableWorkbookImpl;->addRCIRCell(Ljxl/write/biff/CellValue;)V

    return-void
.end method
