.class public Lme/weyye/hipermission/WrapHeightGridView;
.super Landroid/widget/GridView;
.source "WrapHeightGridView.java"


# instance fields
.field public isOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lme/weyye/hipermission/WrapHeightGridView;->isOnMeasure:Z

    .line 38
    invoke-super/range {p0 .. p5}, Landroid/widget/GridView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 p2, 0x1

    .line 29
    iput-boolean p2, p0, Lme/weyye/hipermission/WrapHeightGridView;->isOnMeasure:Z

    const p2, 0x1fffffff

    const/high16 v0, -0x80000000

    .line 30
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 32
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    return-void
.end method
