.class Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc/trity/floatingactionbutton/FloatingActionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotatingDrawable"
.end annotation


# instance fields
.field private mRotation:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 124
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 143
    iget v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;->mRotation:F

    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 144
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getRotation()F
    .locals 1

    .line 131
    iget v0, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;->mRotation:F

    return v0
.end method

.method public setRotation(F)V
    .locals 0

    .line 136
    iput p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;->mRotation:F

    .line 137
    invoke-virtual {p0}, Lcc/trity/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;->invalidateSelf()V

    return-void
.end method
