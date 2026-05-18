.class public Ljxl/biff/DVParser;
.super Ljava/lang/Object;
.source "DVParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/DVParser$Condition;,
        Ljxl/biff/DVParser$ErrorStyle;,
        Ljxl/biff/DVParser$DVType;
    }
.end annotation


# static fields
.field public static final ANY:Ljxl/biff/DVParser$DVType;

.field public static final BETWEEN:Ljxl/biff/DVParser$Condition;

.field public static final DATE:Ljxl/biff/DVParser$DVType;

.field public static final DECIMAL:Ljxl/biff/DVParser$DVType;

.field private static DECIMAL_FORMAT:Ljava/text/DecimalFormat; = null

.field private static final EMPTY_CELLS_ALLOWED_MASK:I = 0x100

.field public static final EQUAL:Ljxl/biff/DVParser$Condition;

.field public static final FORMULA:Ljxl/biff/DVParser$DVType;

.field public static final GREATER_EQUAL:Ljxl/biff/DVParser$Condition;

.field public static final GREATER_THAN:Ljxl/biff/DVParser$Condition;

.field public static final INFO:Ljxl/biff/DVParser$ErrorStyle;

.field public static final INTEGER:Ljxl/biff/DVParser$DVType;

.field public static final LESS_EQUAL:Ljxl/biff/DVParser$Condition;

.field public static final LESS_THAN:Ljxl/biff/DVParser$Condition;

.field public static final LIST:Ljxl/biff/DVParser$DVType;

.field private static final MAX_COLUMNS:I = 0xff

.field private static final MAX_ROWS:I = 0xffff

.field private static final MAX_VALIDATION_LIST_LENGTH:I = 0xfe

.field public static final NOT_BETWEEN:Ljxl/biff/DVParser$Condition;

.field public static final NOT_EQUAL:Ljxl/biff/DVParser$Condition;

.field private static final SHOW_ERROR_MASK:I = 0x80000

.field private static final SHOW_PROMPT_MASK:I = 0x40000

.field public static final STOP:Ljxl/biff/DVParser$ErrorStyle;

.field private static final STRING_LIST_GIVEN_MASK:I = 0x80

.field private static final SUPPRESS_ARROW_MASK:I = 0x200

.field public static final TEXT_LENGTH:Ljxl/biff/DVParser$DVType;

.field public static final TIME:Ljxl/biff/DVParser$DVType;

.field public static final WARNING:Ljxl/biff/DVParser$ErrorStyle;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private column1:I

.field private column2:I

.field private condition:Ljxl/biff/DVParser$Condition;

.field private copied:Z

.field private emptyCellsAllowed:Z

.field private errorStyle:Ljxl/biff/DVParser$ErrorStyle;

.field private errorText:Ljava/lang/String;

.field private errorTitle:Ljava/lang/String;

.field private extendedCellsValidation:Z

.field private formula1:Ljxl/biff/formula/FormulaParser;

.field private formula1String:Ljava/lang/String;

.field private formula2:Ljxl/biff/formula/FormulaParser;

.field private formula2String:Ljava/lang/String;

.field private promptText:Ljava/lang/String;

.field private promptTitle:Ljava/lang/String;

.field private row1:I

.field private row2:I

.field private showError:Z

.field private showPrompt:Z

.field private stringListGiven:Z

.field private suppressArrow:Z

.field private type:Ljxl/biff/DVParser$DVType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 45
    const-class v0, Ljxl/biff/DVParser;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/DVParser;->logger:Ljxl/common/Logger;

    .line 167
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v1, 0x0

    const-string v2, "any"

    invoke-direct {v0, v1, v2}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->ANY:Ljxl/biff/DVParser$DVType;

    .line 168
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v2, 0x1

    const-string v3, "int"

    invoke-direct {v0, v2, v3}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->INTEGER:Ljxl/biff/DVParser$DVType;

    .line 169
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v3, 0x2

    const-string v4, "dec"

    invoke-direct {v0, v3, v4}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->DECIMAL:Ljxl/biff/DVParser$DVType;

    .line 170
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v4, 0x3

    const-string v5, "list"

    invoke-direct {v0, v4, v5}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    .line 171
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v5, 0x4

    const-string v6, "date"

    invoke-direct {v0, v5, v6}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->DATE:Ljxl/biff/DVParser$DVType;

    .line 172
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v6, 0x5

    const-string v7, "time"

    invoke-direct {v0, v6, v7}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->TIME:Ljxl/biff/DVParser$DVType;

    .line 173
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v7, 0x6

    const-string v8, "strlen"

    invoke-direct {v0, v7, v8}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->TEXT_LENGTH:Ljxl/biff/DVParser$DVType;

    .line 174
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v8, 0x7

    const-string v9, "form"

    invoke-direct {v0, v8, v9}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->FORMULA:Ljxl/biff/DVParser$DVType;

    .line 177
    new-instance v0, Ljxl/biff/DVParser$ErrorStyle;

    invoke-direct {v0, v1}, Ljxl/biff/DVParser$ErrorStyle;-><init>(I)V

    sput-object v0, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    .line 178
    new-instance v0, Ljxl/biff/DVParser$ErrorStyle;

    invoke-direct {v0, v2}, Ljxl/biff/DVParser$ErrorStyle;-><init>(I)V

    sput-object v0, Ljxl/biff/DVParser;->WARNING:Ljxl/biff/DVParser$ErrorStyle;

    .line 179
    new-instance v0, Ljxl/biff/DVParser$ErrorStyle;

    invoke-direct {v0, v3}, Ljxl/biff/DVParser$ErrorStyle;-><init>(I)V

    sput-object v0, Ljxl/biff/DVParser;->INFO:Ljxl/biff/DVParser$ErrorStyle;

    .line 182
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v9, "{0} <= x <= {1}"

    invoke-direct {v0, v1, v9}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    .line 183
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "!({0} <= x <= {1}"

    invoke-direct {v0, v2, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->NOT_BETWEEN:Ljxl/biff/DVParser$Condition;

    .line 185
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "x == {0}"

    invoke-direct {v0, v3, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->EQUAL:Ljxl/biff/DVParser$Condition;

    .line 186
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "x != {0}"

    invoke-direct {v0, v4, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->NOT_EQUAL:Ljxl/biff/DVParser$Condition;

    .line 187
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "x > {0}"

    invoke-direct {v0, v5, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->GREATER_THAN:Ljxl/biff/DVParser$Condition;

    .line 188
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "x < {0}"

    invoke-direct {v0, v6, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->LESS_THAN:Ljxl/biff/DVParser$Condition;

    .line 189
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "x >= {0}"

    invoke-direct {v0, v7, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->GREATER_EQUAL:Ljxl/biff/DVParser$Condition;

    .line 190
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "x <= {0}"

    invoke-direct {v0, v8, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->LESS_EQUAL:Ljxl/biff/DVParser$Condition;

    .line 200
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(DDLjxl/biff/DVParser$Condition;)V
    .locals 2

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 609
    iput-boolean v0, p0, Ljxl/biff/DVParser;->copied:Z

    .line 610
    sget-object v1, Ljxl/biff/DVParser;->DECIMAL:Ljxl/biff/DVParser$DVType;

    iput-object v1, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 611
    sget-object v1, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v1, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 612
    iput-object p5, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 613
    iput-boolean v0, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    .line 616
    iput-boolean v0, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    const/4 p5, 0x1

    .line 617
    iput-boolean p5, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 618
    iput-boolean v0, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 619
    iput-boolean p5, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 620
    iput-boolean p5, p0, Ljxl/biff/DVParser;->showError:Z

    const-string p5, "\u0000"

    .line 622
    iput-object p5, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 623
    iput-object p5, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 624
    iput-object p5, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 625
    iput-object p5, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 626
    sget-object p5, Ljxl/biff/DVParser;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {p5, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    .line 628
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_0

    .line 630
    sget-object p1, Ljxl/biff/DVParser;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 580
    iput-boolean v0, p0, Ljxl/biff/DVParser;->copied:Z

    .line 581
    sget-object v1, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    iput-object v1, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 582
    sget-object v1, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v1, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 583
    sget-object v1, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    iput-object v1, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 584
    iput-boolean v0, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    .line 587
    iput-boolean v0, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    const/4 v1, 0x1

    .line 588
    iput-boolean v1, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 589
    iput-boolean v0, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 590
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 591
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showError:Z

    const-string v0, "\u0000"

    .line 593
    iput-object v0, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 594
    iput-object v0, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 595
    iput-object v0, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 596
    iput-object v0, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 597
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 598
    invoke-static {p1, p2, v0}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    const/16 p1, 0x3a

    .line 599
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 600
    invoke-static {p3, p4, v0}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "\u0000"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 535
    iput-boolean v3, p0, Ljxl/biff/DVParser;->copied:Z

    .line 536
    sget-object p1, Ljxl/biff/DVParser;->FORMULA:Ljxl/biff/DVParser$DVType;

    iput-object p1, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 537
    sget-object p1, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    iput-object p1, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 538
    sget-object p1, Ljxl/biff/DVParser;->EQUAL:Ljxl/biff/DVParser$Condition;

    iput-object p1, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 539
    iput-boolean v3, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    .line 541
    iput-boolean v3, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    .line 542
    iput-boolean v3, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 543
    iput-boolean v3, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 544
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 545
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showError:Z

    .line 547
    iput-object v2, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 548
    iput-object v2, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 549
    iput-object v2, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 550
    iput-object v2, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    const-string p1, "\"\""

    .line 551
    iput-object p1, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    return-void

    .line 555
    :cond_0
    iput-boolean v3, p0, Ljxl/biff/DVParser;->copied:Z

    .line 556
    sget-object v0, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    iput-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 557
    sget-object v0, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 558
    sget-object v0, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    iput-object v0, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 559
    iput-boolean v3, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    .line 562
    iput-boolean v3, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    .line 563
    iput-boolean v1, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 564
    iput-boolean v3, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 565
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 566
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showError:Z

    .line 568
    iput-object v2, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 569
    iput-object v2, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 570
    iput-object v2, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 571
    iput-object v2, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 572
    iput-object p1, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 478
    iput-boolean v0, p0, Ljxl/biff/DVParser;->copied:Z

    .line 479
    sget-object v1, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    iput-object v1, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 480
    sget-object v1, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v1, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 481
    sget-object v1, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    iput-object v1, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 482
    iput-boolean v0, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    const/4 v1, 0x1

    .line 485
    iput-boolean v1, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    .line 486
    iput-boolean v1, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 487
    iput-boolean v0, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 488
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 489
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showError:Z

    const-string v1, "\u0000"

    .line 491
    iput-object v1, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 492
    iput-object v1, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 493
    iput-object v1, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 494
    iput-object v1, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 495
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 497
    sget-object v1, Ljxl/biff/DVParser;->logger:Ljxl/common/Logger;

    const-string v2, "no validation strings - ignoring"

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 500
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 501
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 503
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 506
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    .line 507
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 508
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/16 v2, 0xfe

    if-le p1, v2, :cond_2

    .line 515
    sget-object p1, Ljxl/biff/DVParser;->logger:Ljxl/common/Logger;

    const-string v3, "Validation list exceeds maximum number of characters - truncating"

    invoke-virtual {p1, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 517
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_2
    const/16 p1, 0x22

    .line 522
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 523
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 524
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/DVParser;)V
    .locals 3

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 639
    iput-boolean v0, p0, Ljxl/biff/DVParser;->copied:Z

    .line 640
    iget-object v0, p1, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    iput-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 641
    iget-object v0, p1, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 642
    iget-object v0, p1, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    iput-object v0, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 643
    iget-boolean v0, p1, Ljxl/biff/DVParser;->stringListGiven:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    .line 644
    iget-boolean v0, p1, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 645
    iget-boolean v0, p1, Ljxl/biff/DVParser;->suppressArrow:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 646
    iget-boolean v0, p1, Ljxl/biff/DVParser;->showPrompt:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 647
    iget-boolean v0, p1, Ljxl/biff/DVParser;->showError:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->showError:Z

    .line 648
    iget-object v0, p1, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 649
    iget-object v0, p1, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 650
    iget-object v0, p1, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 651
    iget-object v0, p1, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 652
    iget-boolean v0, p1, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    .line 654
    iget v0, p1, Ljxl/biff/DVParser;->row1:I

    iput v0, p0, Ljxl/biff/DVParser;->row1:I

    .line 655
    iget v0, p1, Ljxl/biff/DVParser;->row2:I

    iput v0, p0, Ljxl/biff/DVParser;->row2:I

    .line 656
    iget v0, p1, Ljxl/biff/DVParser;->column1:I

    iput v0, p0, Ljxl/biff/DVParser;->column1:I

    .line 657
    iget v0, p1, Ljxl/biff/DVParser;->column2:I

    iput v0, p0, Ljxl/biff/DVParser;->column2:I

    .line 660
    iget-object v0, p1, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 662
    iput-object v0, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    .line 663
    iget-object p1, p1, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;

    iput-object p1, p0, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;

    goto :goto_1

    .line 669
    :cond_0
    :try_start_0
    iget-object v0, p1, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    .line 670
    iget-object v0, p1, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_1

    iget-object p1, p1, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 675
    sget-object v0, Ljxl/biff/DVParser;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse validation formula:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public constructor <init>([BLjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p4

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 328
    :goto_0
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 330
    iput-boolean v10, v1, Ljxl/biff/DVParser;->copied:Z

    .line 331
    aget-byte v3, v0, v10

    aget-byte v4, v0, v2

    const/4 v5, 0x2

    aget-byte v6, v0, v5

    const/4 v7, 0x3

    aget-byte v8, v0, v7

    invoke-static {v3, v4, v6, v8}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v3

    and-int/lit8 v4, v3, 0xf

    .line 334
    invoke-static {v4}, Ljxl/biff/DVParser$DVType;->getType(I)Ljxl/biff/DVParser$DVType;

    move-result-object v4

    iput-object v4, v1, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    and-int/lit8 v4, v3, 0x70

    const/4 v6, 0x4

    shr-int/2addr v4, v6

    .line 337
    invoke-static {v4}, Ljxl/biff/DVParser$ErrorStyle;->getErrorStyle(I)Ljxl/biff/DVParser$ErrorStyle;

    move-result-object v4

    iput-object v4, v1, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    const/high16 v4, 0xf00000

    and-int/2addr v4, v3

    shr-int/lit8 v4, v4, 0x14

    .line 340
    invoke-static {v4}, Ljxl/biff/DVParser$Condition;->getCondition(I)Ljxl/biff/DVParser$Condition;

    move-result-object v4

    iput-object v4, v1, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 342
    :goto_1
    iput-boolean v4, v1, Ljxl/biff/DVParser;->stringListGiven:Z

    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 343
    :goto_2
    iput-boolean v4, v1, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 344
    :goto_3
    iput-boolean v4, v1, Ljxl/biff/DVParser;->suppressArrow:Z

    const/high16 v4, 0x40000

    and-int/2addr v4, v3

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 345
    :goto_4
    iput-boolean v4, v1, Ljxl/biff/DVParser;->showPrompt:Z

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    .line 346
    :goto_5
    iput-boolean v3, v1, Ljxl/biff/DVParser;->showError:Z

    .line 349
    aget-byte v3, v0, v6

    const/4 v4, 0x5

    aget-byte v4, v0, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    const/4 v4, 0x7

    if-lez v3, :cond_6

    const/4 v8, 0x6

    .line 350
    aget-byte v8, v0, v8

    if-nez v8, :cond_6

    .line 352
    invoke-static {v0, v3, v4, v9}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    add-int/2addr v3, v7

    add-int/lit8 v4, v3, 0x4

    goto :goto_6

    :cond_6
    if-lez v3, :cond_7

    .line 357
    invoke-static {v0, v3, v4}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v7

    add-int v4, v6, v3

    .line 365
    :cond_7
    :goto_6
    aget-byte v3, v0, v4

    add-int/lit8 v8, v4, 0x1

    aget-byte v8, v0, v8

    invoke-static {v3, v8}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    if-lez v3, :cond_8

    add-int/lit8 v8, v4, 0x2

    .line 366
    aget-byte v8, v0, v8

    if-nez v8, :cond_8

    add-int/lit8 v8, v4, 0x3

    .line 368
    invoke-static {v0, v3, v8, v9}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    goto :goto_7

    :cond_8
    if-lez v3, :cond_9

    add-int/lit8 v8, v4, 0x3

    .line 373
    invoke-static {v0, v3, v8}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    mul-int/lit8 v3, v3, 0x2

    :goto_7
    add-int/2addr v3, v7

    add-int/2addr v4, v3

    goto :goto_8

    :cond_9
    add-int/2addr v4, v7

    .line 381
    :goto_8
    aget-byte v3, v0, v4

    add-int/lit8 v8, v4, 0x1

    aget-byte v8, v0, v8

    invoke-static {v3, v8}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    if-lez v3, :cond_a

    add-int/lit8 v8, v4, 0x2

    .line 382
    aget-byte v8, v0, v8

    if-nez v8, :cond_a

    add-int/lit8 v8, v4, 0x3

    .line 384
    invoke-static {v0, v3, v8, v9}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    goto :goto_9

    :cond_a
    if-lez v3, :cond_b

    add-int/lit8 v8, v4, 0x3

    .line 389
    invoke-static {v0, v3, v8}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    mul-int/lit8 v3, v3, 0x2

    :goto_9
    add-int/2addr v3, v7

    add-int/2addr v4, v3

    goto :goto_a

    :cond_b
    add-int/2addr v4, v7

    .line 397
    :goto_a
    aget-byte v3, v0, v4

    add-int/lit8 v8, v4, 0x1

    aget-byte v8, v0, v8

    invoke-static {v3, v8}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    if-lez v3, :cond_c

    add-int/lit8 v8, v4, 0x2

    .line 398
    aget-byte v8, v0, v8

    if-nez v8, :cond_c

    add-int/lit8 v8, v4, 0x3

    .line 400
    invoke-static {v0, v3, v8, v9}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    goto :goto_b

    :cond_c
    if-lez v3, :cond_d

    add-int/lit8 v8, v4, 0x3

    .line 405
    invoke-static {v0, v3, v8}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    mul-int/lit8 v3, v3, 0x2

    :goto_b
    add-int/2addr v3, v7

    add-int/2addr v4, v3

    goto :goto_c

    :cond_d
    add-int/2addr v4, v7

    .line 413
    :goto_c
    aget-byte v3, v0, v4

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v0, v7

    invoke-static {v3, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    add-int/2addr v4, v6

    add-int v7, v4, v3

    .line 418
    aget-byte v8, v0, v7

    add-int/lit8 v11, v7, 0x1

    aget-byte v11, v0, v11

    invoke-static {v8, v11}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v11

    add-int/lit8 v12, v7, 0x4

    add-int v6, v12, v11

    add-int/2addr v6, v5

    .line 425
    aget-byte v7, v0, v6

    add-int/lit8 v8, v6, 0x1

    aget-byte v8, v0, v8

    invoke-static {v7, v8}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v7

    iput v7, v1, Ljxl/biff/DVParser;->row1:I

    add-int/2addr v6, v5

    .line 428
    aget-byte v7, v0, v6

    add-int/lit8 v8, v6, 0x1

    aget-byte v8, v0, v8

    invoke-static {v7, v8}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v7

    iput v7, v1, Ljxl/biff/DVParser;->row2:I

    add-int/2addr v6, v5

    .line 431
    aget-byte v7, v0, v6

    add-int/lit8 v8, v6, 0x1

    aget-byte v8, v0, v8

    invoke-static {v7, v8}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v7

    iput v7, v1, Ljxl/biff/DVParser;->column1:I

    add-int/2addr v6, v5

    .line 434
    aget-byte v5, v0, v6

    add-int/2addr v6, v2

    aget-byte v6, v0, v6

    invoke-static {v5, v6}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    iput v5, v1, Ljxl/biff/DVParser;->column2:I

    .line 437
    iget v6, v1, Ljxl/biff/DVParser;->row1:I

    iget v7, v1, Ljxl/biff/DVParser;->row2:I

    if-ne v6, v7, :cond_e

    iget v6, v1, Ljxl/biff/DVParser;->column1:I

    if-ne v6, v5, :cond_e

    const/4 v2, 0x0

    :cond_e
    iput-boolean v2, v1, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    .line 445
    :try_start_0
    new-instance v13, Ljxl/biff/EmptyCell;

    iget v2, v1, Ljxl/biff/DVParser;->column1:I

    iget v5, v1, Ljxl/biff/DVParser;->row1:I

    invoke-direct {v13, v2, v5}, Ljxl/biff/EmptyCell;-><init>(II)V

    if-eqz v3, :cond_f

    .line 449
    new-array v5, v3, [B

    .line 450
    invoke-static {v0, v4, v5, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    new-instance v14, Ljxl/biff/formula/FormulaParser;

    sget-object v8, Ljxl/biff/formula/ParseContext;->DATA_VALIDATION:Ljxl/biff/formula/ParseContext;

    move-object v2, v14

    move-object v3, v5

    move-object v4, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;Ljxl/biff/formula/ParseContext;)V

    iput-object v14, v1, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    .line 453
    invoke-virtual {v14}, Ljxl/biff/formula/FormulaParser;->parse()V

    :cond_f
    if-eqz v11, :cond_10

    .line 458
    new-array v3, v11, [B

    .line 459
    invoke-static {v0, v12, v3, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    sget-object v8, Ljxl/biff/formula/ParseContext;->DATA_VALIDATION:Ljxl/biff/formula/ParseContext;

    move-object v2, v0

    move-object v4, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;Ljxl/biff/formula/ParseContext;)V

    iput-object v0, v1, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    .line 462
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    .line 467
    sget-object v2, Ljxl/biff/DVParser;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for cells "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ljxl/biff/DVParser;->column1:I

    iget v4, v1, Ljxl/biff/DVParser;->row1:I

    invoke-static {v0, v4}, Ljxl/biff/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ljxl/biff/DVParser;->column2:I

    iget v4, v1, Ljxl/biff/DVParser;->row2:I

    invoke-static {v0, v4}, Ljxl/biff/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_10
    :goto_d
    return-void
.end method


# virtual methods
.method public copied()Z
    .locals 1

    .line 1040
    iget-boolean v0, p0, Ljxl/biff/DVParser;->copied:Z

    return v0
.end method

.method public extendCellValidation(II)V
    .locals 1

    .line 1024
    iget v0, p0, Ljxl/biff/DVParser;->row1:I

    add-int/2addr v0, p2

    iput v0, p0, Ljxl/biff/DVParser;->row2:I

    .line 1025
    iget p2, p0, Ljxl/biff/DVParser;->column1:I

    add-int/2addr p2, p1

    iput p2, p0, Ljxl/biff/DVParser;->column2:I

    const/4 p1, 0x1

    .line 1026
    iput-boolean p1, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    return-void
.end method

.method public extendedCellsValidation()Z
    .locals 1

    .line 1035
    iget-boolean v0, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    return v0
.end method

.method public getData()[B
    .locals 8

    .line 687
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v1, [B

    .line 688
    :goto_0
    iget-object v2, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v2

    goto :goto_1

    :cond_1
    new-array v2, v1, [B

    .line 689
    :goto_1
    iget-object v3, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    iget-object v5, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x3

    iget-object v5, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x3

    iget-object v5, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x3

    array-length v5, v0

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    array-length v5, v2

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xa

    .line 700
    new-array v3, v3, [B

    .line 707
    iget-object v5, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    invoke-virtual {v5}, Ljxl/biff/DVParser$DVType;->getValue()I

    move-result v5

    or-int/2addr v5, v1

    .line 708
    iget-object v6, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    invoke-virtual {v6}, Ljxl/biff/DVParser$ErrorStyle;->getValue()I

    move-result v6

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    .line 709
    iget-object v6, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    invoke-virtual {v6}, Ljxl/biff/DVParser$Condition;->getValue()I

    move-result v6

    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v5, v6

    .line 711
    iget-boolean v6, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    if-eqz v6, :cond_2

    or-int/lit16 v5, v5, 0x80

    .line 716
    :cond_2
    iget-boolean v6, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    if-eqz v6, :cond_3

    or-int/lit16 v5, v5, 0x100

    .line 721
    :cond_3
    iget-boolean v6, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    if-eqz v6, :cond_4

    or-int/lit16 v5, v5, 0x200

    .line 726
    :cond_4
    iget-boolean v6, p0, Ljxl/biff/DVParser;->showPrompt:Z

    if-eqz v6, :cond_5

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    .line 731
    :cond_5
    iget-boolean v6, p0, Ljxl/biff/DVParser;->showError:Z

    if-eqz v6, :cond_6

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    .line 737
    :cond_6
    invoke-static {v5, v3, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 740
    iget-object v5, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5, v3, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v5, 0x6

    const/4 v6, 0x1

    .line 743
    aput-byte v6, v3, v5

    const/4 v5, 0x7

    .line 746
    iget-object v7, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    invoke-static {v7, v3, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 747
    iget-object v7, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 749
    iget-object v7, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v5, v5, 0x2

    .line 752
    aput-byte v6, v3, v5

    add-int/2addr v5, v6

    .line 755
    iget-object v7, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    invoke-static {v7, v3, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 756
    iget-object v7, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 758
    iget-object v7, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v5, v5, 0x2

    .line 761
    aput-byte v6, v3, v5

    add-int/2addr v5, v6

    .line 764
    iget-object v7, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    invoke-static {v7, v3, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 765
    iget-object v7, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 767
    iget-object v7, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v5, v5, 0x2

    .line 770
    aput-byte v6, v3, v5

    add-int/2addr v5, v6

    .line 773
    iget-object v7, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    invoke-static {v7, v3, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 774
    iget-object v7, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 777
    array-length v7, v0

    invoke-static {v7, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/2addr v5, v4

    .line 780
    array-length v7, v0

    invoke-static {v0, v1, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 781
    array-length v0, v0

    add-int/2addr v5, v0

    .line 784
    array-length v0, v2

    invoke-static {v0, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/2addr v5, v4

    .line 787
    array-length v0, v2

    invoke-static {v2, v1, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    array-length v0, v2

    add-int/2addr v5, v0

    .line 791
    invoke-static {v6, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v5, v5, 0x2

    .line 794
    iget v0, p0, Ljxl/biff/DVParser;->row1:I

    invoke-static {v0, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v5, v5, 0x2

    .line 797
    iget v0, p0, Ljxl/biff/DVParser;->row2:I

    invoke-static {v0, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v5, v5, 0x2

    .line 800
    iget v0, p0, Ljxl/biff/DVParser;->column1:I

    invoke-static {v0, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v5, v5, 0x2

    .line 803
    iget v0, p0, Ljxl/biff/DVParser;->column2:I

    invoke-static {v0, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v3
.end method

.method public getFirstColumn()I
    .locals 1

    .line 928
    iget v0, p0, Ljxl/biff/DVParser;->column1:I

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    .line 948
    iget v0, p0, Ljxl/biff/DVParser;->row1:I

    return v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 938
    iget v0, p0, Ljxl/biff/DVParser;->column2:I

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 958
    iget v0, p0, Ljxl/biff/DVParser;->row2:I

    return v0
.end method

.method getValidationFormula()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 969
    iget-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    sget-object v1, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    if-ne v0, v1, :cond_0

    .line 971
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 974
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    .line 975
    iget-object v1, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 976
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    invoke-virtual {v3, v0, v1}, Ljxl/biff/DVParser$Condition;->getConditionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; x "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    invoke-virtual {v0}, Ljxl/biff/DVParser$DVType;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertColumn(I)V
    .locals 3

    .line 844
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->columnInserted(IIZ)V

    .line 849
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_1

    .line 851
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->columnInserted(IIZ)V

    .line 854
    :cond_1
    iget v0, p0, Ljxl/biff/DVParser;->column1:I

    if-lt v0, p1, :cond_2

    add-int/2addr v0, v2

    .line 856
    iput v0, p0, Ljxl/biff/DVParser;->column1:I

    .line 859
    :cond_2
    iget v0, p0, Ljxl/biff/DVParser;->column2:I

    if-lt v0, p1, :cond_3

    const/16 p1, 0xff

    if-eq v0, p1, :cond_3

    add-int/2addr v0, v2

    .line 861
    iput v0, p0, Ljxl/biff/DVParser;->column2:I

    :cond_3
    return-void
.end method

.method public insertRow(I)V
    .locals 3

    .line 816
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->rowInserted(IIZ)V

    .line 821
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_1

    .line 823
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->rowInserted(IIZ)V

    .line 826
    :cond_1
    iget v0, p0, Ljxl/biff/DVParser;->row1:I

    if-lt v0, p1, :cond_2

    add-int/2addr v0, v2

    .line 828
    iput v0, p0, Ljxl/biff/DVParser;->row1:I

    .line 831
    :cond_2
    iget v0, p0, Ljxl/biff/DVParser;->row2:I

    if-lt v0, p1, :cond_3

    const p1, 0xffff

    if-eq v0, p1, :cond_3

    add-int/2addr v0, v2

    .line 833
    iput v0, p0, Ljxl/biff/DVParser;->row2:I

    :cond_3
    return-void
.end method

.method public removeColumn(I)V
    .locals 3

    .line 900
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->columnRemoved(IIZ)V

    .line 905
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_1

    .line 907
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->columnRemoved(IIZ)V

    .line 910
    :cond_1
    iget v0, p0, Ljxl/biff/DVParser;->column1:I

    if-le v0, p1, :cond_2

    sub-int/2addr v0, v2

    .line 912
    iput v0, p0, Ljxl/biff/DVParser;->column1:I

    .line 915
    :cond_2
    iget v0, p0, Ljxl/biff/DVParser;->column2:I

    if-lt v0, p1, :cond_3

    const/16 p1, 0xff

    if-eq v0, p1, :cond_3

    sub-int/2addr v0, v2

    .line 917
    iput v0, p0, Ljxl/biff/DVParser;->column2:I

    :cond_3
    return-void
.end method

.method public removeRow(I)V
    .locals 3

    .line 872
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->rowRemoved(IIZ)V

    .line 877
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->rowRemoved(IIZ)V

    .line 882
    :cond_1
    iget v0, p0, Ljxl/biff/DVParser;->row1:I

    if-le v0, p1, :cond_2

    sub-int/2addr v0, v2

    .line 884
    iput v0, p0, Ljxl/biff/DVParser;->row1:I

    .line 887
    :cond_2
    iget v0, p0, Ljxl/biff/DVParser;->row2:I

    if-lt v0, p1, :cond_3

    sub-int/2addr v0, v2

    .line 889
    iput v0, p0, Ljxl/biff/DVParser;->row2:I

    :cond_3
    return-void
.end method

.method public setCell(IILjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 992
    iget-boolean v0, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    if-eqz v0, :cond_0

    return-void

    .line 997
    :cond_0
    iput p2, p0, Ljxl/biff/DVParser;->row1:I

    .line 998
    iput p2, p0, Ljxl/biff/DVParser;->row2:I

    .line 999
    iput p1, p0, Ljxl/biff/DVParser;->column1:I

    .line 1000
    iput p1, p0, Ljxl/biff/DVParser;->column2:I

    .line 1002
    new-instance p1, Ljxl/biff/formula/FormulaParser;

    iget-object v2, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    sget-object v6, Ljxl/biff/formula/ParseContext;->DATA_VALIDATION:Ljxl/biff/formula/ParseContext;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;Ljxl/biff/formula/ParseContext;)V

    iput-object p1, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    .line 1005
    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 1007
    iget-object p1, p0, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1009
    new-instance p1, Ljxl/biff/formula/FormulaParser;

    iget-object v1, p0, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;

    sget-object v5, Ljxl/biff/formula/ParseContext;->DATA_VALIDATION:Ljxl/biff/formula/ParseContext;

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;Ljxl/biff/formula/ParseContext;)V

    iput-object p1, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    .line 1012
    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->parse()V

    :cond_1
    return-void
.end method
