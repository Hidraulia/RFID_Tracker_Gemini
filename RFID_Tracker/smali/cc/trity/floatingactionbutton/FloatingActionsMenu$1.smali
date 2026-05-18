.class Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;
.super Lcc/trity/floatingactionbutton/AddFloatingActionButton;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/trity/floatingactionbutton/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;


# direct methods
.method constructor <init>(Lcc/trity/floatingactionbutton/FloatingActionsMenu;Landroid/content/Context;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-direct {p0, p2}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 163
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$400(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 164
    new-instance v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    iget-object v1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$400(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->getBitmapDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 167
    :cond_0
    new-instance v0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    invoke-super {p0}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :goto_0
    iget-object v1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v1, v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$502(Lcc/trity/floatingactionbutton/FloatingActionsMenu;Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;)Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    .line 172
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 174
    iget-object v4, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v4}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getRotate()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x0

    const/4 v6, 0x1

    aput v4, v3, v6

    const-string v7, "rotation"

    invoke-static {v0, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v2, v2, [F

    aput v4, v2, v5

    .line 175
    iget-object v4, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v4}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->getRotate()F

    move-result v4

    aput v4, v2, v6

    invoke-static {v0, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 177
    invoke-virtual {v3, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    iget-object v1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$600(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 181
    iget-object v1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$700(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method

.method updateBackground()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$000(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->mPlusColor:I

    .line 154
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$100(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->mColorNormal:I

    .line 155
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$200(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->mColorPressed:I

    .line 156
    iget-object v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->access$300(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)Z

    move-result v0

    iput-boolean v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$1;->mStrokeVisible:Z

    .line 157
    invoke-super {p0}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->updateBackground()V

    return-void
.end method
