.class public Ljxl/biff/BaseCellFeatures;
.super Ljava/lang/Object;
.source "BaseCellFeatures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/BaseCellFeatures$ValidationCondition;
    }
.end annotation


# static fields
.field public static final BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final GREATER_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final GREATER_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final LESS_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final LESS_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final NOT_BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final NOT_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field private static final defaultCommentHeight:D = 4.0

.field private static final defaultCommentWidth:D = 3.0

.field public static logger:Ljxl/common/Logger;


# instance fields
.field private comboBox:Ljxl/biff/drawing/ComboBox;

.field private comment:Ljava/lang/String;

.field private commentDrawing:Ljxl/biff/drawing/Comment;

.field private commentHeight:D

.field private commentWidth:D

.field private dataValidation:Z

.field private dropDown:Z

.field private dvParser:Ljxl/biff/DVParser;

.field private validationSettings:Ljxl/biff/DataValiditySettingsRecord;

.field private writableCell:Ljxl/write/biff/CellValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-class v0, Ljxl/biff/BaseCellFeatures;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/BaseCellFeatures;->logger:Ljxl/common/Logger;

    .line 119
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 121
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->NOT_BETWEEN:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->NOT_BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 123
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->EQUAL:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 125
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->NOT_EQUAL:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->NOT_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 127
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->GREATER_THAN:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->GREATER_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 129
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->LESS_THAN:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->LESS_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 131
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->GREATER_EQUAL:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->GREATER_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 133
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->LESS_EQUAL:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->LESS_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljxl/biff/BaseCellFeatures;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iget-object v0, p1, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    .line 152
    iget-wide v0, p1, Ljxl/biff/BaseCellFeatures;->commentWidth:D

    iput-wide v0, p0, Ljxl/biff/BaseCellFeatures;->commentWidth:D

    .line 153
    iget-wide v0, p1, Ljxl/biff/BaseCellFeatures;->commentHeight:D

    iput-wide v0, p0, Ljxl/biff/BaseCellFeatures;->commentHeight:D

    .line 156
    iget-boolean v0, p1, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    iput-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    .line 157
    iget-boolean v0, p1, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    iput-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    .line 159
    iget-object v0, p1, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    .line 161
    iget-object v0, p1, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljxl/biff/DVParser;

    iget-object p1, p1, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    invoke-direct {v0, p1}, Ljxl/biff/DVParser;-><init>(Ljxl/biff/DVParser;)V

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    :cond_0
    return-void
.end method

.method private clearValidationSettings()V
    .locals 2

    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    .line 461
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 v1, 0x0

    .line 462
    iput-boolean v1, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    .line 463
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->comboBox:Ljxl/biff/drawing/ComboBox;

    .line 464
    iput-boolean v1, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method


# virtual methods
.method protected getComment()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getCommentDrawing()Ljxl/biff/drawing/Comment;
    .locals 1

    .line 332
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    return-object v0
.end method

.method public getCommentHeight()D
    .locals 2

    .line 188
    iget-wide v0, p0, Ljxl/biff/BaseCellFeatures;->commentHeight:D

    return-wide v0
.end method

.method public getCommentWidth()D
    .locals 2

    .line 180
    iget-wide v0, p0, Ljxl/biff/BaseCellFeatures;->commentWidth:D

    return-wide v0
.end method

.method public getDVParser()Ljxl/biff/DVParser;
    .locals 2

    .line 493
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    if-eqz v0, :cond_0

    return-object v0

    .line 499
    :cond_0
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    if-eqz v0, :cond_1

    .line 501
    new-instance v0, Ljxl/biff/DVParser;

    iget-object v1, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/DVParser;-><init>(Ljxl/biff/DVParser;)V

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataValidationList()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 347
    :cond_0
    invoke-virtual {v0}, Ljxl/biff/DataValiditySettingsRecord;->getValidationFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedDataValidationRange()Ljxl/Range;
    .locals 8

    .line 540
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 545
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    .line 547
    new-instance v7, Ljxl/biff/SheetRangeImpl;

    iget-object v1, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v2

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v3

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result v4

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getLastColumn()I

    move-result v5

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getLastRow()I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    return-object v7
.end method

.method public hasDataValidation()Z
    .locals 1

    .line 452
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return v0
.end method

.method public hasDropDown()Z
    .locals 1

    .line 474
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    return v0
.end method

.method public removeComment()V
    .locals 3

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    if-eqz v1, :cond_0

    .line 267
    iget-object v2, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-virtual {v2, v1}, Ljxl/write/biff/CellValue;->removeComment(Ljxl/biff/drawing/Comment;)V

    .line 268
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    :cond_0
    return-void
.end method

.method public removeDataValidation()V
    .locals 5

    .line 277
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    sget-object v1, Ljxl/biff/BaseCellFeatures;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot remove data validation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-static {v3}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as it is part of the shared reference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v3

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result v4

    invoke-static {v3, v4}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getLastColumn()I

    move-result v3

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getLastRow()I

    move-result v0

    invoke-static {v3, v0}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-virtual {v0}, Ljxl/write/biff/CellValue;->removeDataValidation()V

    .line 299
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    return-void
.end method

.method public removeSharedDataValidation()V
    .locals 1

    .line 309
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-virtual {v0}, Ljxl/write/biff/CellValue;->removeDataValidation()V

    .line 316
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    return-void
.end method

.method public setComboBox(Ljxl/biff/drawing/ComboBox;)V
    .locals 0

    .line 484
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->comboBox:Ljxl/biff/drawing/ComboBox;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 6

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    move-object v0, p0

    move-object v1, p1

    .line 229
    invoke-virtual/range {v0 .. v5}, Ljxl/biff/BaseCellFeatures;->setComment(Ljava/lang/String;DD)V

    return-void
.end method

.method public setComment(Ljava/lang/String;DD)V
    .locals 1

    .line 241
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    .line 242
    iput-wide p2, p0, Ljxl/biff/BaseCellFeatures;->commentWidth:D

    .line 243
    iput-wide p4, p0, Ljxl/biff/BaseCellFeatures;->commentHeight:D

    .line 245
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1}, Ljxl/biff/drawing/Comment;->setCommentText(Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    invoke-virtual {p1, p2, p3}, Ljxl/biff/drawing/Comment;->setWidth(D)V

    .line 249
    iget-object p1, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    invoke-virtual {p1, p4, p5}, Ljxl/biff/drawing/Comment;->setWidth(D)V

    :cond_0
    return-void
.end method

.method public final setCommentDrawing(Ljxl/biff/drawing/Comment;)V
    .locals 0

    .line 324
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    return-void
.end method

.method public setDataValidationList(Ljava/util/Collection;)V
    .locals 2

    .line 359
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    sget-object p1, Ljxl/biff/BaseCellFeatures;->logger:Ljxl/common/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set data validation on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-static {v1}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as it is part of a shared data validation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .line 366
    :cond_0
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    .line 367
    new-instance v0, Ljxl/biff/DVParser;

    invoke-direct {v0, p1}, Ljxl/biff/DVParser;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 p1, 0x1

    .line 368
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    .line 369
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method

.method public setDataValidationRange(IIII)V
    .locals 1

    .line 379
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    sget-object p1, Ljxl/biff/BaseCellFeatures;->logger:Ljxl/common/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot set data validation on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-static {p3}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " as it is part of a shared data validation"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .line 386
    :cond_0
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    .line 387
    new-instance v0, Ljxl/biff/DVParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljxl/biff/DVParser;-><init>(IIII)V

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 p1, 0x1

    .line 388
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    .line 389
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method

.method public setDataValidationRange(Ljava/lang/String;)V
    .locals 2

    .line 397
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    sget-object p1, Ljxl/biff/BaseCellFeatures;->logger:Ljxl/common/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set data validation on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-static {v1}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as it is part of a shared data validation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .line 404
    :cond_0
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    .line 405
    new-instance v0, Ljxl/biff/DVParser;

    invoke-direct {v0, p1}, Ljxl/biff/DVParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 p1, 0x1

    .line 406
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    .line 407
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method

.method public setNumberValidation(DDLjxl/biff/BaseCellFeatures$ValidationCondition;)V
    .locals 7

    .line 431
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    sget-object p1, Ljxl/biff/BaseCellFeatures;->logger:Ljxl/common/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot set data validation on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-static {p3}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " as it is part of a shared data validation"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .line 438
    :cond_0
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    .line 439
    new-instance v6, Ljxl/biff/DVParser;

    invoke-virtual {p5}, Ljxl/biff/BaseCellFeatures$ValidationCondition;->getCondition()Ljxl/biff/DVParser$Condition;

    move-result-object v5

    move-object v0, v6

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Ljxl/biff/DVParser;-><init>(DDLjxl/biff/DVParser$Condition;)V

    iput-object v6, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 p1, 0x0

    .line 440
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    const/4 p1, 0x1

    .line 441
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method

.method public setNumberValidation(DLjxl/biff/BaseCellFeatures$ValidationCondition;)V
    .locals 7

    .line 415
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    sget-object p1, Ljxl/biff/BaseCellFeatures;->logger:Ljxl/common/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot set data validation on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-static {p3}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " as it is part of a shared data validation"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .line 422
    :cond_0
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    .line 423
    new-instance v6, Ljxl/biff/DVParser;

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p3}, Ljxl/biff/BaseCellFeatures$ValidationCondition;->getCondition()Ljxl/biff/DVParser$Condition;

    move-result-object v5

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Ljxl/biff/DVParser;-><init>(DDLjxl/biff/DVParser$Condition;)V

    iput-object v6, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 p1, 0x0

    .line 424
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    const/4 p1, 0x1

    .line 425
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method

.method public setReadComment(Ljava/lang/String;DD)V
    .locals 0

    .line 206
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    .line 207
    iput-wide p2, p0, Ljxl/biff/BaseCellFeatures;->commentWidth:D

    .line 208
    iput-wide p4, p0, Ljxl/biff/BaseCellFeatures;->commentHeight:D

    return-void
.end method

.method public setValidationSettings(Ljxl/biff/DataValiditySettingsRecord;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 216
    :goto_0
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 218
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    .line 219
    iput-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method

.method public final setWritableCell(Ljxl/write/biff/CellValue;)V
    .locals 0

    .line 198
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    return-void
.end method

.method public shareDataValidation(Ljxl/biff/BaseCellFeatures;)V
    .locals 2

    .line 515
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    if-eqz v0, :cond_0

    .line 517
    sget-object p1, Ljxl/biff/BaseCellFeatures;->logger:Ljxl/common/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to share a data validation on cell "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-static {v1}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " which already has a data validation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .line 522
    :cond_0
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    .line 523
    invoke-virtual {p1}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    const/4 v0, 0x1

    .line 525
    iput-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    .line 526
    iget-boolean v0, p1, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    iput-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    .line 527
    iget-object p1, p1, Ljxl/biff/BaseCellFeatures;->comboBox:Ljxl/biff/drawing/ComboBox;

    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->comboBox:Ljxl/biff/drawing/ComboBox;

    return-void
.end method
