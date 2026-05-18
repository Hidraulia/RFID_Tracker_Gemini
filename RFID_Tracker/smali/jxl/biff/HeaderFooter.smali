.class public abstract Ljxl/biff/HeaderFooter;
.super Ljava/lang/Object;
.source "HeaderFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/HeaderFooter$Contents;
    }
.end annotation


# static fields
.field private static final BOLD_TOGGLE:Ljava/lang/String; = "&B"

.field private static final CENTRE:Ljava/lang/String; = "&C"

.field private static final DATE:Ljava/lang/String; = "&D"

.field private static final DOUBLE_UNDERLINE_TOGGLE:Ljava/lang/String; = "&E"

.field private static final ITALICS_TOGGLE:Ljava/lang/String; = "&I"

.field private static final LEFT_ALIGN:Ljava/lang/String; = "&L"

.field private static final OUTLINE_TOGGLE:Ljava/lang/String; = "&O"

.field private static final PAGENUM:Ljava/lang/String; = "&P"

.field private static final RIGHT_ALIGN:Ljava/lang/String; = "&R"

.field private static final SHADOW_TOGGLE:Ljava/lang/String; = "&H"

.field private static final STRIKETHROUGH_TOGGLE:Ljava/lang/String; = "&S"

.field private static final SUBSCRIPT_TOGGLE:Ljava/lang/String; = "&Y"

.field private static final SUPERSCRIPT_TOGGLE:Ljava/lang/String; = "&X"

.field private static final TIME:Ljava/lang/String; = "&T"

.field private static final TOTAL_PAGENUM:Ljava/lang/String; = "&N"

.field private static final UNDERLINE_TOGGLE:Ljava/lang/String; = "&U"

.field private static final WORKBOOK_NAME:Ljava/lang/String; = "&F"

.field private static final WORKSHEET_NAME:Ljava/lang/String; = "&A"

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private centre:Ljxl/biff/HeaderFooter$Contents;

.field private left:Ljxl/biff/HeaderFooter$Contents;

.field private right:Ljxl/biff/HeaderFooter$Contents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Ljxl/biff/HeaderFooter;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/HeaderFooter;->logger:Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 474
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 475
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_11

    .line 496
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v0, "&L"

    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "&R"

    .line 505
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "&C"

    .line 506
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    if-ne v1, v3, :cond_1

    if-ne v2, v3, :cond_1

    .line 511
    invoke-virtual {p0, p1}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    goto/16 :goto_5

    :cond_1
    if-eq v0, v3, :cond_5

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v0, :cond_3

    if-le v1, v0, :cond_2

    if-le v2, v1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    if-le v1, v0, :cond_4

    :goto_0
    move v4, v1

    :cond_4
    :goto_1
    add-int/lit8 v5, v0, 0x2

    .line 550
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v4

    iput-object v4, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    :cond_5
    if-eq v1, v3, :cond_9

    .line 557
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v1, :cond_7

    if-le v0, v1, :cond_6

    if-le v2, v0, :cond_6

    goto :goto_2

    :cond_6
    move v4, v2

    goto :goto_3

    :cond_7
    if-le v0, v1, :cond_8

    :goto_2
    move v4, v0

    :cond_8
    :goto_3
    add-int/lit8 v5, v1, 0x2

    .line 585
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v4

    iput-object v4, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    :cond_9
    if-eq v2, v3, :cond_d

    .line 592
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v2, :cond_b

    if-le v0, v2, :cond_a

    if-le v1, v0, :cond_a

    goto :goto_4

    :cond_a
    move v0, v1

    goto :goto_4

    :cond_b
    if-le v0, v2, :cond_c

    goto :goto_4

    :cond_c
    move v0, v3

    :goto_4
    add-int/lit8 v2, v2, 0x2

    .line 620
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    .line 625
    :cond_d
    :goto_5
    iget-object p1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    if-nez p1, :cond_e

    .line 627
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 630
    :cond_e
    iget-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    if-nez p1, :cond_f

    .line 632
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    .line 635
    :cond_f
    iget-object p1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    if-nez p1, :cond_10

    .line 637
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    :cond_10
    return-void

    .line 498
    :cond_11
    :goto_6
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 499
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 500
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/HeaderFooter;)V
    .locals 1

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iget-object v0, p1, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 486
    iget-object v0, p1, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 487
    iget-object p1, p1, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {p0, p1}, Ljxl/biff/HeaderFooter;->createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .line 706
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v0}, Ljxl/biff/HeaderFooter$Contents;->clear()V

    .line 707
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v0}, Ljxl/biff/HeaderFooter$Contents;->clear()V

    .line 708
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v0}, Ljxl/biff/HeaderFooter$Contents;->clear()V

    return-void
.end method

.method protected abstract createContents()Ljxl/biff/HeaderFooter$Contents;
.end method

.method protected abstract createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;
.end method

.method protected abstract createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;
.end method

.method protected getCentreText()Ljxl/biff/HeaderFooter$Contents;
    .locals 1

    .line 688
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    return-object v0
.end method

.method protected getLeftText()Ljxl/biff/HeaderFooter$Contents;
    .locals 1

    .line 698
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    return-object v0
.end method

.method protected getRightText()Ljxl/biff/HeaderFooter$Contents;
    .locals 1

    .line 678
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 649
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 650
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "&L"

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    :cond_0
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "&C"

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    :cond_1
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "&R"

    .line 664
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 668
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
