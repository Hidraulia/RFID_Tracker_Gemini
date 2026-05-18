.class Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc/trity/floatingactionbutton/FloatingActionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutParams"
.end annotation


# instance fields
.field private animationsSetToPlay:Z

.field private mCollapseAlpha:Landroid/animation/ObjectAnimator;

.field private mCollapseDir:Landroid/animation/ObjectAnimator;

.field private mExpandAlpha:Landroid/animation/ObjectAnimator;

.field private mExpandDir:Landroid/animation/ObjectAnimator;

.field final synthetic this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;


# direct methods
.method public constructor <init>(Lcc/trity/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 445
    iput-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    .line 446
    invoke-direct {p0, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    .line 440
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    .line 441
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    .line 442
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    .line 448
    iget-object p2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$1000()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 449
    iget-object p2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 450
    iget-object p2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$1200()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 451
    iget-object p2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$1200()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 453
    iget-object p2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 454
    iget-object p2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 456
    iget-object p2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 457
    iget-object p2, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 459
    invoke-static {p1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$1300(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    iget-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 468
    iget-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 463
    iget-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$800(Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 437
    iget-object p0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$900(Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 437
    iget-object p0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    return-object p0
.end method


# virtual methods
.method public setAnimationsTarget(Landroid/view/View;)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 477
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 480
    iget-boolean p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->animationsSetToPlay:Z

    if-nez p1, :cond_0

    .line 481
    iget-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-static {p1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$700(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 482
    iget-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-static {p1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$700(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 483
    iget-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-static {p1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$600(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 484
    iget-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-static {p1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$600(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 p1, 0x1

    .line 485
    iput-boolean p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$LayoutParams;->animationsSetToPlay:Z

    :cond_0
    return-void
.end method
