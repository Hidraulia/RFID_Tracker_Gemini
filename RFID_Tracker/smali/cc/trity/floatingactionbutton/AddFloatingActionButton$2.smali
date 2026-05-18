.class Lcc/trity/floatingactionbutton/AddFloatingActionButton$2;
.super Landroid/graphics/drawable/shapes/Shape;
.source "AddFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getBitmapDrawable(I)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

.field final synthetic val$resIcon:I


# direct methods
.method constructor <init>(Lcc/trity/floatingactionbutton/AddFloatingActionButton;I)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcc/trity/floatingactionbutton/AddFloatingActionButton$2;->this$0:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    iput p2, p0, Lcc/trity/floatingactionbutton/AddFloatingActionButton$2;->val$resIcon:I

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcc/trity/floatingactionbutton/AddFloatingActionButton$2;->this$0:Lcc/trity/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v0}, Lcc/trity/floatingactionbutton/AddFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcc/trity/floatingactionbutton/AddFloatingActionButton$2;->val$resIcon:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method
