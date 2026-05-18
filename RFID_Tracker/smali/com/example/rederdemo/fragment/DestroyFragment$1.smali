.class Lcom/example/rederdemo/fragment/DestroyFragment$1;
.super Ljava/lang/Object;
.source "DestroyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/fragment/DestroyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/fragment/DestroyFragment;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/fragment/DestroyFragment;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment$1;->this$0:Lcom/example/rederdemo/fragment/DestroyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment$1;->this$0:Lcom/example/rederdemo/fragment/DestroyFragment;

    invoke-virtual {p1}, Lcom/example/rederdemo/fragment/DestroyFragment;->destroy6c()V

    return-void
.end method
