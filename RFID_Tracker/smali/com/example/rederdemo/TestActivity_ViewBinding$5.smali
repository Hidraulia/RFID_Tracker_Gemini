.class Lcom/example/rederdemo/TestActivity_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TestActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/TestActivity_ViewBinding;-><init>(Lcom/example/rederdemo/TestActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/TestActivity_ViewBinding;

.field final synthetic val$target:Lcom/example/rederdemo/TestActivity;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/TestActivity_ViewBinding;Lcom/example/rederdemo/TestActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/example/rederdemo/TestActivity_ViewBinding$5;->this$0:Lcom/example/rederdemo/TestActivity_ViewBinding;

    iput-object p2, p0, Lcom/example/rederdemo/TestActivity_ViewBinding$5;->val$target:Lcom/example/rederdemo/TestActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/example/rederdemo/TestActivity_ViewBinding$5;->val$target:Lcom/example/rederdemo/TestActivity;

    invoke-virtual {p1}, Lcom/example/rederdemo/TestActivity;->baudRateQueryEvent()V

    return-void
.end method
