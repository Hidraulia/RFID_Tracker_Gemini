.class Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ReadOrWriteActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;

.field final synthetic val$target:Lcom/example/rederdemo/ReadOrWriteActivity;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;Lcom/example/rederdemo/ReadOrWriteActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$3;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;

    iput-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$3;->val$target:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$3;->val$target:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-virtual {p1}, Lcom/example/rederdemo/ReadOrWriteActivity;->cleanData()V

    return-void
.end method
