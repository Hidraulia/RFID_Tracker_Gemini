.class Lcom/example/rederdemo/fragment/LockFragment$4;
.super Ljava/lang/Object;
.source "LockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/fragment/LockFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/fragment/LockFragment;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/fragment/LockFragment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment$4;->this$0:Lcom/example/rederdemo/fragment/LockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment$4;->this$0:Lcom/example/rederdemo/fragment/LockFragment;

    invoke-virtual {p1}, Lcom/example/rederdemo/fragment/LockFragment;->lockGb()V

    return-void
.end method
