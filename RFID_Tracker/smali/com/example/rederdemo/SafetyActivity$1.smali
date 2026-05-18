.class Lcom/example/rederdemo/SafetyActivity$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SafetyActivity.java"
.field final synthetic this$0:Lcom/example/rederdemo/SafetyActivity;
.method constructor <init>(Lcom/example/rederdemo/SafetyActivity;)V
    .locals 0
    iput-object p1, p0, Lcom/example/rederdemo/SafetyActivity$1;->this$0:Lcom/example/rederdemo/SafetyActivity;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method
.method public run()V
    .locals 1
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity$1;->this$0:Lcom/example/rederdemo/SafetyActivity;
    invoke-virtual {v0}, Lcom/example/rederdemo/SafetyActivity;->startRfidScan()V
    return-void
.end method
