.class Lcom/example/rederdemo/EntryActivity_ViewBinding$6;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EntryActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/EntryActivity_ViewBinding;-><init>(Lcom/example/rederdemo/EntryActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/EntryActivity_ViewBinding;

.field final synthetic val$target:Lcom/example/rederdemo/EntryActivity;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/EntryActivity_ViewBinding;Lcom/example/rederdemo/EntryActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding$6;->this$0:Lcom/example/rederdemo/EntryActivity_ViewBinding;

    iput-object p2, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding$6;->val$target:Lcom/example/rederdemo/EntryActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding$6;->val$target:Lcom/example/rederdemo/EntryActivity;

    invoke-virtual {p1}, Lcom/example/rederdemo/EntryActivity;->searchDevice()V

    return-void
.end method
