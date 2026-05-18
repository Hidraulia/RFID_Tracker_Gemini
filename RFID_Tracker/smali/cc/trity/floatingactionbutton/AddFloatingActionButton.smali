.class public Lcc/trity/floatingactionbutton/AddFloatingActionButton;
.super Lcc/trity/floatingactionbutton/FloatingActionButton;
.source "AddFloatingActionButton.java"


# instance fields
.field mPlusColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcc/trity/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcc/trity/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getBitmapDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 92
    new-instance v0, Lcc/trity/floatingactionbutton/AddFloatingActionButton$2;

    invoke-direct {v0, p0, p1}, Lcc/trity/floatingactionbutton/AddFloatingActionButton$2;-><init>(Lcc/trity/floatingactionbutton/AddFloatingActionButton;I)V

    .line 99
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 101
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 102
    iget v1, p0, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object p1
.end method

.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 67
    sget v0, Lcc/trity/floatingactionbutton/R$dimen;->fab_icon_size_12:I

    invoke-virtual {p0, v0}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getDimension(I)F

    move-result v6

    const/high16 v0, 0x40000000    # 2.0f

    div-float v4, v6, v0

    .line 70
    sget v1, Lcc/trity/floatingactionbutton/R$dimen;->fab_plus_icon_size:I

    invoke-virtual {p0, v1}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getDimension(I)F

    move-result v1

    .line 71
    sget v2, Lcc/trity/floatingactionbutton/R$dimen;->fab_plus_icon_stroke:I

    invoke-virtual {p0, v2}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getDimension(I)F

    move-result v2

    div-float v5, v2, v0

    sub-float v1, v6, v1

    div-float v3, v1, v0

    .line 74
    new-instance v0, Lcc/trity/floatingactionbutton/AddFloatingActionButton$1;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcc/trity/floatingactionbutton/AddFloatingActionButton$1;-><init>(Lcc/trity/floatingactionbutton/AddFloatingActionButton;FFFF)V

    .line 81
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 83
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 84
    iget v2, p0, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x1

    .line 86
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v1
.end method

.method public getPlusColor()I
    .locals 1

    .line 46
    iget v0, p0, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    return v0
.end method

.method init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 35
    sget-object v0, Lcc/trity/floatingactionbutton/R$styleable;->AddFloatingActionButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    sget v1, Lcc/trity/floatingactionbutton/R$styleable;->AddFloatingActionButton_fab_plusIconColor:I

    const v2, 0x106000b

    invoke-virtual {p0, v2}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    invoke-super {p0, p1, p2}, Lcc/trity/floatingactionbutton/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use FloatingActionButton if you want to use custom icon"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPlusColor(I)V
    .locals 1

    .line 54
    iget v0, p0, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    if-eq v0, p1, :cond_0

    .line 55
    iput p1, p0, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    .line 56
    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->updateBackground()V

    :cond_0
    return-void
.end method

.method public setPlusColorResId(I)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->setPlusColor(I)V

    return-void
.end method
