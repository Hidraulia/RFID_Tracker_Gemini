.class Lcom/example/rederdemo/EntryActivity$6;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "EntryActivity.java"

.field final synthetic this$0:Lcom/example/rederdemo/EntryActivity;

.method constructor <init>(Lcom/example/rederdemo/EntryActivity;)V
    .locals 0
    iput-object p1, p0, Lcom/example/rederdemo/EntryActivity$6;->this$0:Lcom/example/rederdemo/EntryActivity;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity$6;->this$0:Lcom/example/rederdemo/EntryActivity;
    invoke-virtual {v0}, Lcom/example/rederdemo/EntryActivity;->safetyMode()V
    return-void
.end method
