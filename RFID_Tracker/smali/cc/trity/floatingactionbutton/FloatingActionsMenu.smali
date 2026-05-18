.class public Lcc/trity/floatingactionbutton/FloatingActionsMenu;
.super Landroid/view/ViewGroup;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;,
        Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;,
        Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;,
        Lcc/trity/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final COLLAPSED_PLUS_ROTATION:F = 0.0f

.field private static final EXPANDED_PLUS_ROTATION:F = 135.0f

.field public static final EXPAND_DOWN:I = 0x1

.field public static final EXPAND_LEFT:I = 0x2

.field public static final EXPAND_RIGHT:I = 0x3

.field public static final EXPAND_UP:I = 0x0

.field public static final LABELS_ON_LEFT_SIDE:I = 0x0

.field public static final LABELS_ON_RIGHT_SIDE:I = 0x1

.field private static sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

.field private static sCollapseInterpolator:Landroid/view/animation/Interpolator;

.field private static sExpandInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

.field private mAddButtonColorNormal:I

.field private mAddButtonColorPressed:I

.field private mAddButtonPlusColor:I

.field private mAddButtonSize:I

.field private mAddButtonStrokeVisible:Z

.field private mButtonSpacing:I

.field private mButtonsCount:I

.field private mCollapseAnimation:Landroid/animation/AnimatorSet;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mExpandDirection:I

.field private mExpanded:Z

.field private mLabelsMargin:I

.field private mLabelsPosition:I

.field private mLabelsStyle:I

.field private mLabelsVerticalOffset:I

.field private mListener:Lcc/trity/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

.field private mMaxButtonHeight:I

.field private mMaxButtonWidth:I

.field private mResIcon:I

.field private mRotatingDrawable:Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

.field private mTouchDelegateGroup:Lcc/trity/floatingactionbutton/TouchDelegateGroup;

.field private rotate:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 433
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    .line 434
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 435
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 52
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mResIcon:I

    const/high16 v0, 0x43070000    # 135.0f

    .line 61
    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->rotate:F

    .line 78
    invoke-direct {p0, p1, p2}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p3

    iput-object p3, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 52
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p3

    iput-object p3, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    const/4 p3, -0x1

    .line 60
    iput p3, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mResIcon:I

    const/high16 p3, 0x43070000    # 135.0f

    .line 61
    iput p3, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->rotate:F

    .line 83
    invoke-direct {p0, p1, p2}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 25
    iget p0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I

    return p0
.end method

.method static synthetic access$100(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 25
    iget p0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I

    return p0
.end method

.method static synthetic access$1000()Landroid/view/animation/Interpolator;
    .locals 1

    .line 25
    sget-object v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/view/animation/Interpolator;
    .locals 1

    .line 25
    sget-object v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/view/animation/Interpolator;
    .locals 1

    .line 25
    sget-object v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1300(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 25
    iget p0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    return p0
.end method

.method static synthetic access$200(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 25
    iget p0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I

    return p0
.end method

.method static synthetic access$300(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButtonStrokeVisible:Z

    return p0
.end method

.method static synthetic access$400(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 25
    iget p0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mResIcon:I

    return p0
.end method

.method static synthetic access$502(Lcc/trity/floatingactionbutton/FloatingActionsMenu;Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;)Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;
    .locals 0

    .line 25
    iput-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    return-object p1
.end method

.method static synthetic access$600(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 25
    iget-object p0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$700(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 25
    iget-object p0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private adjustForOvershoot(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0xc

    .line 280
    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method private createAddButton(Landroid/content/Context;)V
    .locals 1

    .line 150
    new-instance v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;

    invoke-direct {v0, p0, p1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;-><init>(Lcc/trity/floatingactionbutton/FloatingActionsMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    .line 187
    sget p1, Lcc/trity/floatingactionbutton/R$id;->fab_expand_menu_button:I

    invoke-virtual {v0, p1}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->setId(I)V

    .line 188
    iget-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    iget v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButtonSize:I

    invoke-virtual {p1, v0}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->setSize(I)V

    .line 189
    iget-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    new-instance v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$2;

    invoke-direct {v0, p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$2;-><init>(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)V

    invoke-virtual {p1, v0}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createLabels()V
    .locals 6

    .line 503
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 505
    :goto_0
    iget v2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    if-ge v1, v2, :cond_2

    .line 506
    invoke-virtual {p0, v1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcc/trity/floatingactionbutton/FloatingActionButton;

    .line 507
    invoke-virtual {v2}, Lcc/trity/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 509
    iget-object v4, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    if-eq v2, v4, :cond_1

    if-eqz v3, :cond_1

    sget v3, Lcc/trity/floatingactionbutton/R$id;->fab_label:I

    .line 510
    invoke-virtual {v2, v3}, Lcc/trity/floatingactionbutton/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 512
    :cond_0
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 513
    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 514
    invoke-virtual {v2}, Lcc/trity/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {p0, v3}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;)V

    .line 517
    sget v4, Lcc/trity/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v2, v4, v3}, Lcc/trity/floatingactionbutton/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private expandsHorizontally()Z
    .locals 2

    .line 119
    iget v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getColor(I)I
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 87
    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcc/trity/floatingactionbutton/R$dimen;->fab_actions_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcc/trity/floatingactionbutton/R$dimen;->fab_shadow_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcc/trity/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    .line 88
    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcc/trity/floatingactionbutton/R$dimen;->fab_labels_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    .line 89
    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcc/trity/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsVerticalOffset:I

    .line 91
    new-instance v0, Lcc/trity/floatingactionbutton/TouchDelegateGroup;

    invoke-direct {v0, p0}, Lcc/trity/floatingactionbutton/TouchDelegateGroup;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcc/trity/floatingactionbutton/TouchDelegateGroup;

    .line 92
    invoke-virtual {p0, v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 94
    sget-object v0, Lcc/trity/floatingactionbutton/R$styleable;->FloatingActionsMenu:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 95
    sget v0, Lcc/trity/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonPlusIconColor:I

    const v2, 0x106000b

    invoke-direct {p0, v2}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I

    .line 96
    sget v0, Lcc/trity/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonColorNormal:I

    const v2, 0x1060013

    invoke-direct {p0, v2}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I

    .line 97
    sget v0, Lcc/trity/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonColorPressed:I

    const v2, 0x1060012

    invoke-direct {p0, v2}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I

    .line 98
    sget v0, Lcc/trity/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonSize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButtonSize:I

    .line 99
    sget v0, Lcc/trity/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonStrokeVisible:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButtonStrokeVisible:Z

    .line 100
    sget v0, Lcc/trity/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_expandDirection:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    .line 101
    sget v0, Lcc/trity/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_labelStyle:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    .line 102
    sget v0, Lcc/trity/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_labelsPosition:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    .line 103
    sget v0, Lcc/trity/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_bitmap:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mResIcon:I

    .line 104
    sget v0, Lcc/trity/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_rotation:I

    const/high16 v1, 0x43070000    # 135.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->rotate:F

    .line 105
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    iget p2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Action labels in horizontal expand orientation is not supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addButton(Lcc/trity/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    .line 200
    iget v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;I)V

    .line 201
    iget p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 203
    iget p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz p1, :cond_0

    .line 204
    invoke-direct {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->createLabels()V

    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 430
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    return p1
.end method

.method public collapse()V
    .locals 2

    .line 522
    iget-boolean v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 523
    iput-boolean v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 524
    iget-object v1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcc/trity/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v1, v0}, Lcc/trity/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 525
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 526
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 528
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mListener:Lcc/trity/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 529
    invoke-interface {v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuCollapsed()V

    :cond_0
    return-void
.end method

.method public expand()V
    .locals 2

    .line 543
    iget-boolean v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 544
    iput-boolean v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 545
    iget-object v1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcc/trity/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v1, v0}, Lcc/trity/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 546
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 547
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 549
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mListener:Lcc/trity/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 550
    invoke-interface {v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuExpanded()V

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 415
    new-instance v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcc/trity/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 420
    new-instance v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcc/trity/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 425
    new-instance v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcc/trity/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getRotate()F
    .locals 1

    .line 617
    iget v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->rotate:F

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 556
    iget-boolean v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 492
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 494
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {p0, v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->bringChildToFront(Landroid/view/View;)V

    .line 495
    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getChildCount()I

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 497
    iget v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v0, :cond_0

    .line 498
    invoke-direct {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->createLabels()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 285
    iget v1, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v1, :cond_a

    if-eq v1, v6, :cond_a

    if-eq v1, v7, :cond_0

    const/4 v8, 0x3

    if-eq v1, v8, :cond_0

    goto/16 :goto_16

    .line 373
    :cond_0
    iget v1, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    if-ne v1, v7, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    sub-int v8, p4, p2

    .line 375
    iget-object v9, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v9}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    sub-int v9, p5, p3

    .line 377
    iget v10, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    sub-int/2addr v9, v10

    iget-object v11, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v11}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    add-int/2addr v9, v10

    .line 378
    iget-object v10, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v10}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v12}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual {v10, v8, v9, v11, v12}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->layout(IIII)V

    if-eqz v1, :cond_3

    .line 381
    iget v10, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int v10, v8, v10

    goto :goto_2

    .line 382
    :cond_3
    iget-object v10, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v10}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v8

    iget v11, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v10, v11

    .line 384
    :goto_2
    iget v11, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    sub-int/2addr v11, v6

    :goto_3
    if-ltz v11, :cond_1d

    .line 385
    invoke-virtual {v0, v11}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 387
    iget-object v13, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    if-eq v12, v13, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v2, :cond_4

    goto :goto_6

    :cond_4
    if-eqz v1, :cond_5

    .line 389
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v10, v13

    .line 390
    :cond_5
    iget-object v13, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v13}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/2addr v13, v7

    add-int/2addr v13, v9

    .line 391
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v10

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v12, v10, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    sub-int v13, v8, v10

    int-to-float v13, v13

    .line 396
    iget-boolean v14, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v14, :cond_6

    const/4 v14, 0x0

    goto :goto_4

    :cond_6
    move v14, v13

    :goto_4
    invoke-virtual {v12, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 397
    iget-boolean v14, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v14, :cond_7

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v12, v14}, Landroid/view/View;->setAlpha(F)V

    .line 399
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 400
    invoke-static {v14}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    new-array v3, v7, [F

    aput v4, v3, v5

    aput v13, v3, v6

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 401
    invoke-static {v14}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$900(Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v15, v7, [F

    aput v13, v15, v5

    aput v4, v15, v6

    invoke-virtual {v3, v15}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 402
    invoke-virtual {v14, v12}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    if-eqz v1, :cond_8

    .line 405
    iget v3, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int/2addr v10, v3

    goto :goto_6

    .line 406
    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v10, v3

    iget v3, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v10, v3

    :cond_9
    :goto_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 288
    :cond_a
    iget v1, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :goto_7
    if-eqz p1, :cond_c

    .line 291
    iget-object v3, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcc/trity/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v3}, Lcc/trity/floatingactionbutton/TouchDelegateGroup;->clearTouchDelegates()V

    :cond_c
    if-eqz v1, :cond_d

    sub-int v3, p5, p3

    .line 294
    iget-object v8, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v8}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v3, v8

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    .line 296
    :goto_8
    iget v8, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v8, :cond_e

    sub-int v8, p4, p2

    .line 297
    iget v9, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    goto :goto_9

    .line 298
    :cond_e
    iget v8, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/2addr v8, v7

    .line 299
    :goto_9
    iget-object v9, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v9}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v7

    sub-int v9, v8, v9

    .line 300
    iget-object v10, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v10}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v12}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v3

    invoke-virtual {v10, v9, v3, v11, v12}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->layout(IIII)V

    .line 302
    iget v9, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/2addr v9, v7

    iget v10, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    add-int/2addr v9, v10

    .line 303
    iget v10, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v10, :cond_f

    sub-int v9, v8, v9

    goto :goto_a

    :cond_f
    add-int/2addr v9, v8

    :goto_a
    if-eqz v1, :cond_10

    .line 308
    iget v10, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int v10, v3, v10

    goto :goto_b

    .line 309
    :cond_10
    iget-object v10, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v10}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v3

    iget v11, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v10, v11

    .line 311
    :goto_b
    iget v11, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    sub-int/2addr v11, v6

    :goto_c
    if-ltz v11, :cond_1d

    .line 312
    invoke-virtual {v0, v11}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 314
    iget-object v13, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    if-eq v12, v13, :cond_1c

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v2, :cond_11

    goto/16 :goto_14

    .line 316
    :cond_11
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int/2addr v13, v7

    sub-int v13, v8, v13

    if-eqz v1, :cond_12

    .line 317
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v10, v14

    .line 318
    :cond_12
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v10

    invoke-virtual {v12, v13, v10, v14, v15}, Landroid/view/View;->layout(IIII)V

    sub-int v14, v3, v10

    int-to-float v14, v14

    .line 323
    iget-boolean v15, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v15, :cond_13

    const/4 v15, 0x0

    goto :goto_d

    :cond_13
    move v15, v14

    :goto_d
    invoke-virtual {v12, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 324
    iget-boolean v15, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v15, :cond_14

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_14
    const/4 v15, 0x0

    :goto_e
    invoke-virtual {v12, v15}, Landroid/view/View;->setAlpha(F)V

    .line 326
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 327
    invoke-static {v15}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move/from16 p1, v3

    new-array v3, v7, [F

    aput v4, v3, v5

    aput v14, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 328
    invoke-static {v15}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$900(Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v7, [F

    aput v14, v3, v5

    aput v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 329
    invoke-virtual {v15, v12}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 331
    sget v2, Lcc/trity/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v12, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1a

    .line 333
    iget v3, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v3, :cond_15

    .line 334
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v9, v3

    goto :goto_f

    .line 335
    :cond_15
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v9

    .line 337
    :goto_f
    iget v15, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v15, :cond_16

    move v15, v3

    goto :goto_10

    :cond_16
    move v15, v9

    .line 341
    :goto_10
    iget v6, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v6, :cond_17

    move v3, v9

    .line 345
    :cond_17
    iget v6, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsVerticalOffset:I

    sub-int v6, v10, v6

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    add-int v6, v6, v16

    .line 347
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v4, v6, v16

    invoke-virtual {v2, v15, v6, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 349
    new-instance v4, Landroid/graphics/Rect;

    .line 350
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v15, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    div-int/2addr v15, v7

    sub-int v15, v10, v15

    .line 352
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v13, v13, v16

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 353
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v10

    iget v5, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    div-int/2addr v5, v7

    add-int/2addr v13, v5

    invoke-direct {v4, v6, v15, v3, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 354
    iget-object v3, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcc/trity/floatingactionbutton/TouchDelegateGroup;

    new-instance v5, Landroid/view/TouchDelegate;

    invoke-direct {v5, v4, v12}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Lcc/trity/floatingactionbutton/TouchDelegateGroup;->addTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 356
    iget-boolean v3, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_11

    :cond_18
    move v3, v14

    :goto_11
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 357
    iget-boolean v3, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v3, :cond_19

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_12

    :cond_19
    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 359
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 360
    invoke-static {v3}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v7, [F

    const/4 v6, 0x0

    const/4 v13, 0x0

    aput v6, v5, v13

    const/4 v15, 0x1

    aput v14, v5, v15

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 361
    invoke-static {v3}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$900(Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v7, [F

    aput v14, v5, v13

    aput v6, v5, v15

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 362
    invoke-virtual {v3, v2}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    goto :goto_13

    :cond_1a
    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_13
    if-eqz v1, :cond_1b

    .line 366
    iget v2, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int/2addr v10, v2

    goto :goto_15

    .line 367
    :cond_1b
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v10, v2

    iget v2, v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v10, v2

    goto :goto_15

    :cond_1c
    :goto_14
    move/from16 p1, v3

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_15
    add-int/lit8 v11, v11, -0x1

    move/from16 v3, p1

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_c

    :cond_1d
    :goto_16
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 220
    invoke-virtual {p0, p1, p2}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->measureChildren(II)V

    const/4 p1, 0x0

    .line 225
    iput p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    .line 226
    iput p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 229
    :goto_0
    iget v3, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge p2, v3, :cond_4

    .line 230
    invoke-virtual {p0, p2}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 232
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto :goto_2

    .line 236
    :cond_0
    iget v7, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    if-eqz v7, :cond_2

    if-eq v7, v6, :cond_2

    if-eq v7, v5, :cond_1

    if-eq v7, v4, :cond_1

    goto :goto_1

    .line 244
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 245
    iget v4, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    goto :goto_1

    .line 239
    :cond_2
    iget v4, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    .line 240
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 249
    :goto_1
    invoke-direct {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v4

    if-nez v4, :cond_3

    .line 250
    sget v4, Lcc/trity/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 252
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 257
    :cond_4
    invoke-direct {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result p2

    if-nez p2, :cond_6

    .line 258
    iget p2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    if-lez v0, :cond_5

    iget p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    add-int/2addr p1, v0

    :cond_5
    add-int v2, p2, p1

    goto :goto_3

    .line 260
    :cond_6
    iget v1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    .line 263
    :goto_3
    iget p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    if-eqz p1, :cond_8

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_7

    goto :goto_4

    .line 271
    :cond_7
    iget p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v6

    mul-int p1, p1, p2

    add-int/2addr v2, p1

    .line 272
    invoke-direct {p0, v2}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v2

    goto :goto_4

    .line 266
    :cond_8
    iget p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v6

    mul-int p1, p1, p2

    add-int/2addr v1, p1

    .line 267
    invoke-direct {p0, v1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v1

    .line 276
    :goto_4
    invoke-virtual {p0, v2, v1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 570
    instance-of v0, p1, Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;

    if-eqz v0, :cond_2

    .line 571
    check-cast p1, Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;

    .line 572
    iget-boolean v0, p1, Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    iput-boolean v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 573
    iget-object v1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcc/trity/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v1, v0}, Lcc/trity/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 575
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    if-eqz v0, :cond_1

    .line 576
    iget-boolean v1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getRotation()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;->setRotation(F)V

    .line 579
    :cond_1
    invoke-virtual {p1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1

    .line 581
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 561
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 562
    new-instance v1, Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;

    invoke-direct {v1, v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 563
    iget-boolean v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    iput-boolean v0, v1, Lcc/trity/floatingactionbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    return-object v1
.end method

.method public removeButton(Lcc/trity/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    .line 209
    invoke-virtual {p1}, Lcc/trity/floatingactionbutton/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->removeView(Landroid/view/View;)V

    .line 210
    invoke-virtual {p0, p1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->removeView(Landroid/view/View;)V

    .line 211
    iget p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    return-void
.end method

.method public setOnFloatingActionsMenuUpdateListener(Lcc/trity/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mListener:Lcc/trity/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    return-void
.end method

.method public setRotate(F)V
    .locals 0

    .line 621
    iput p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->rotate:F

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 535
    iget-boolean v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->collapse()V

    goto :goto_0

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->expand()V

    :goto_0
    return-void
.end method
