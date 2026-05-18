.class Ljxl/write/biff/ReadFormulaRecord;
.super Ljxl/write/biff/CellValue;
.source "ReadFormulaRecord.java"

# interfaces
.implements Ljxl/biff/FormulaData;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private formula:Ljxl/biff/FormulaData;

.field private parser:Ljxl/biff/formula/FormulaParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Ljxl/write/biff/ReadFormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/FormulaData;)V
    .locals 1

    .line 70
    sget-object v0, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;Ljxl/Cell;)V

    .line 71
    iput-object p1, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    return-void
.end method


# virtual methods
.method columnInserted(Ljxl/Sheet;II)V
    .locals 10

    .line 272
    :try_start_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v0}, Ljxl/biff/FormulaData;->getFormulaData()[B

    move-result-object v0

    .line 275
    array-length v2, v0

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    new-array v5, v2, [B

    .line 276
    invoke-static {v0, v3, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v7

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v8

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object v9

    move-object v4, v0

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 283
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 286
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p2, p3, v1}, Ljxl/biff/formula/FormulaParser;->columnInserted(IIZ)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 290
    sget-object p2, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot insert column within formula:  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method columnRemoved(Ljxl/Sheet;II)V
    .locals 10

    .line 306
    :try_start_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v0}, Ljxl/biff/FormulaData;->getFormulaData()[B

    move-result-object v0

    .line 309
    array-length v2, v0

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    new-array v5, v2, [B

    .line 310
    invoke-static {v0, v3, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v7

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v8

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object v9

    move-object v4, v0

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 317
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 320
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p2, p3, v1}, Ljxl/biff/formula/FormulaParser;->columnRemoved(IIZ)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 324
    sget-object p2, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot remove column within formula:  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public copyTo(II)Ljxl/write/WritableCell;
    .locals 1

    .line 242
    new-instance v0, Ljxl/write/biff/FormulaRecord;

    invoke-direct {v0, p1, p2, p0}, Ljxl/write/biff/FormulaRecord;-><init>(IILjxl/write/biff/ReadFormulaRecord;)V

    return-object v0
.end method

.method protected final getCellData()[B
    .locals 1

    .line 76
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v0}, Ljxl/biff/FormulaData;->getContents()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 7

    .line 134
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v0

    .line 139
    :try_start_0
    iget-object v1, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v1}, Ljxl/biff/FormulaData;->getFormulaData()[B

    move-result-object v1

    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v1

    .line 146
    array-length v3, v1

    const/16 v4, 0x10

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 147
    array-length v5, v1

    const/16 v6, 0xe

    invoke-static {v5, v3, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 148
    array-length v5, v1

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v3

    :goto_0
    const/16 v3, 0x8

    .line 153
    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 155
    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 157
    array-length v4, v0

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    array-length v0, v0

    array-length v4, v1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 166
    sget-object v1, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getColumn()I

    move-result v3

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getRow()I

    move-result v4

    invoke-static {v3, v4}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->handleFormulaException()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    check-cast v0, Ljxl/FormulaCell;

    invoke-interface {v0}, Ljxl/FormulaCell;->getFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormulaBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getFormulaData()[B

    move-result-object v0

    .line 227
    array-length v1, v0

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 228
    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public getFormulaData()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v0}, Ljxl/biff/FormulaData;->getFormulaData()[B

    move-result-object v0

    .line 202
    array-length v1, v0

    new-array v1, v1, [B

    .line 204
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    .line 207
    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    return-object v1
.end method

.method protected getReadFormula()Ljxl/biff/FormulaData;
    .locals 1

    .line 403
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 180
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v0}, Ljxl/biff/FormulaData;->getType()Ljxl/CellType;

    move-result-object v0

    return-object v0
.end method

.method protected handleFormulaException()[B
    .locals 8

    .line 89
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v1

    .line 93
    new-instance v2, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getContents()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljxl/write/biff/WritableWorkbookImpl;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v4

    invoke-direct {v2, v3, v1, v1, v4}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v2, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    const/4 v3, 0x0

    .line 99
    :try_start_0
    invoke-virtual {v2}, Ljxl/biff/formula/FormulaParser;->parse()V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 103
    sget-object v4, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    invoke-virtual {v2}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 104
    new-instance v2, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v1}, Ljxl/write/biff/WritableWorkbookImpl;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v4

    const-string v5, "\"ERROR\""

    invoke-direct {v2, v5, v1, v1, v4}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v2, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 105
    :try_start_1
    invoke-virtual {v2}, Ljxl/biff/formula/FormulaParser;->parse()V
    :try_end_1
    .catch Ljxl/biff/formula/FormulaException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 106
    :catch_1
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 108
    :goto_0
    iget-object v1, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v1

    .line 109
    array-length v2, v1

    const/16 v4, 0x10

    add-int/2addr v2, v4

    new-array v5, v2, [B

    .line 110
    array-length v6, v1

    const/16 v7, 0xe

    invoke-static {v6, v5, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 111
    array-length v6, v1

    invoke-static {v1, v3, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x8

    .line 115
    aget-byte v4, v5, v1

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    aput-byte v4, v5, v1

    .line 117
    array-length v1, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 119
    array-length v4, v0

    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    array-length v0, v0

    invoke-static {v5, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public handleImportedCellReferences(Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)Z
    .locals 10

    const/4 v0, 0x0

    .line 428
    :try_start_0
    iget-object v1, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    if-nez v1, :cond_0

    .line 430
    iget-object v1, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v1}, Ljxl/biff/FormulaData;->getFormulaData()[B

    move-result-object v1

    .line 431
    array-length v2, v1

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    new-array v5, v2, [B

    .line 432
    invoke-static {v1, v3, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    new-instance v1, Ljxl/biff/formula/FormulaParser;

    move-object v4, v1

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v1, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 437
    invoke-virtual {v1}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 440
    :cond_0
    iget-object p1, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->handleImportedCellReferences()Z

    move-result p1
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 444
    sget-object p2, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot import formula:  "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return v0
.end method

.method rowInserted(Ljxl/Sheet;II)V
    .locals 10

    .line 340
    :try_start_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v0}, Ljxl/biff/FormulaData;->getFormulaData()[B

    move-result-object v0

    .line 343
    array-length v2, v0

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    new-array v5, v2, [B

    .line 344
    invoke-static {v0, v3, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v7

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v8

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object v9

    move-object v4, v0

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 351
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 354
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p2, p3, v1}, Ljxl/biff/formula/FormulaParser;->rowInserted(IIZ)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 358
    sget-object p2, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot insert row within formula:  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method rowRemoved(Ljxl/Sheet;II)V
    .locals 10

    .line 374
    :try_start_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->formula:Ljxl/biff/FormulaData;

    invoke-interface {v0}, Ljxl/biff/FormulaData;->getFormulaData()[B

    move-result-object v0

    .line 377
    array-length v2, v0

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    new-array v5, v2, [B

    .line 378
    invoke-static {v0, v3, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v7

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v8

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object v9

    move-object v4, v0

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 385
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 388
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/ReadFormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p2, p3, v1}, Ljxl/biff/formula/FormulaParser;->rowRemoved(IIZ)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 392
    sget-object p2, Ljxl/write/biff/ReadFormulaRecord;->logger:Ljxl/common/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot remove row within formula:  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V
    .locals 0

    .line 256
    invoke-super {p0, p1, p2, p3}, Ljxl/write/biff/CellValue;->setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V

    .line 257
    invoke-virtual {p3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljxl/write/biff/WritableWorkbookImpl;->addRCIRCell(Ljxl/write/biff/CellValue;)V

    return-void
.end method
