.class Lcom/example/rederdemo/fragment/WriteFragment$3;
.super Ljava/lang/Object;
.source "WriteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/fragment/WriteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/fragment/WriteFragment;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/fragment/WriteFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment$3;->this$0:Lcom/example/rederdemo/fragment/WriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment$3;->this$0:Lcom/example/rederdemo/fragment/WriteFragment;

    invoke-virtual {p1}, Lcom/example/rederdemo/fragment/WriteFragment;->writeGb()V

    return-void
.end method
