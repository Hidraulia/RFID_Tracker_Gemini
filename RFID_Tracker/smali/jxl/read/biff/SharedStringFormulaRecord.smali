.class public Ljxl/read/biff/SharedStringFormulaRecord;
.super Ljxl/read/biff/BaseSharedFormulaRecord;
.source "SharedStringFormulaRecord.java"

# interfaces
.implements Ljxl/LabelCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/StringFormulaCell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;
    }
.end annotation


# static fields
.field protected static final EMPTY_STRING:Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-class v0, Ljxl/read/biff/SharedStringFormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SharedStringFormulaRecord;->logger:Ljxl/common/Logger;

    .line 60
    new-instance v0, Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;-><init>(Ljxl/read/biff/SharedStringFormulaRecord$1;)V

    sput-object v0, Ljxl/read/biff/SharedStringFormulaRecord;->EMPTY_STRING:Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V
    .locals 7

    .line 81
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/BaseSharedFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;I)V

    .line 82
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result p1

    .line 85
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result p3

    .line 89
    invoke-virtual {p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p4

    const/4 p5, 0x0

    const/4 p6, 0x0

    .line 91
    :goto_0
    invoke-virtual {p4}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v0

    sget-object v1, Ljxl/biff/Type;->STRING:Ljxl/biff/Type;

    const/4 v2, 0x4

    if-eq v0, v1, :cond_0

    if-ge p6, v2, :cond_0

    .line 93
    invoke-virtual {p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p4

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ge p6, v2, :cond_1

    const/4 p6, 0x1

    goto :goto_1

    :cond_1
    const/4 p6, 0x0

    .line 96
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Ljxl/common/Assert;->verify(ZLjava/lang/String;)V

    .line 98
    invoke-virtual {p4}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    .line 101
    invoke-virtual {p2}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object p4

    .line 102
    :goto_2
    invoke-virtual {p4}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p4

    sget-object p6, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p4, p6, :cond_2

    .line 104
    invoke-virtual {p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p4

    .line 105
    array-length p6, p1

    invoke-virtual {p4}, Ljxl/read/biff/Record;->getLength()I

    move-result v1

    add-int/2addr p6, v1

    sub-int/2addr p6, v0

    new-array p6, p6, [B

    .line 106
    array-length v1, p1

    invoke-static {p1, p5, p6, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    invoke-virtual {p4}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v1

    array-length p1, p1

    invoke-virtual {p4}, Ljxl/read/biff/Record;->getLength()I

    move-result p4

    sub-int/2addr p4, v0

    invoke-static {v1, v0, p6, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    invoke-virtual {p2}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object p4

    move-object p1, p6

    goto :goto_2

    .line 113
    :cond_2
    aget-byte p4, p1, p5

    aget-byte p6, p1, v0

    invoke-static {p4, p6}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p4

    .line 117
    array-length p6, p1

    add-int/lit8 v1, p4, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p6, v1, :cond_3

    const/4 v2, 0x2

    goto :goto_3

    .line 124
    :cond_3
    aget-byte p6, p1, v3

    if-ne p6, v0, :cond_4

    const/4 p5, 0x1

    :cond_4
    :goto_3
    if-nez p5, :cond_5

    .line 139
    invoke-static {p1, p4, v2, p7}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    goto :goto_4

    .line 143
    :cond_5
    invoke-static {p1, p4, v2}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    .line 148
    :goto_4
    invoke-virtual {p2, p3}, Ljxl/read/biff/File;->setPos(I)V

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;)V
    .locals 7

    .line 170
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/BaseSharedFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;I)V

    const-string p1, ""

    .line 172
    iput-object p1, p0, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getFormulaData()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getTokens()[B

    move-result-object v2

    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getExternalSheet()Ljxl/biff/formula/ExternalSheet;

    move-result-object v4

    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getNameTable()Ljxl/biff/WorkbookMethods;

    move-result-object v5

    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 225
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 226
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    .line 228
    array-length v1, v0

    const/16 v2, 0x16

    add-int/2addr v1, v2

    new-array v3, v1, [B

    .line 231
    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getRow()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 232
    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getColumn()I

    move-result v4

    const/4 v6, 0x2

    invoke-static {v4, v3, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 233
    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getXFIndex()I

    move-result v4

    const/4 v6, 0x4

    invoke-static {v4, v3, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v4, 0x6

    .line 237
    aput-byte v5, v3, v4

    const/16 v6, 0xc

    const/4 v7, -0x1

    .line 238
    aput-byte v7, v3, v6

    const/16 v6, 0xd

    .line 239
    aput-byte v7, v3, v6

    .line 242
    array-length v6, v0

    invoke-static {v0, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    array-length v0, v0

    const/16 v2, 0x14

    invoke-static {v0, v3, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    sub-int/2addr v1, v4

    .line 246
    new-array v0, v1, [B

    .line 247
    invoke-static {v3, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 216
    :cond_0
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 202
    sget-object v0, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    return-object v0
.end method
