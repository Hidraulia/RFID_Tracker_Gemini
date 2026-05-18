.class Lcom/example/rederdemo/SafetyActivity$6;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SafetyActivity.java"
.field final synthetic this$1:Lcom/example/rederdemo/SafetyActivity$4;
.field final synthetic val$epc:Ljava/lang/String;
.field final synthetic val$rssi:Ljava/lang/String;
.method constructor <init>(Lcom/example/rederdemo/SafetyActivity$4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    iput-object p1, p0, Lcom/example/rederdemo/SafetyActivity$6;->this$1:Lcom/example/rederdemo/SafetyActivity$4;
    iput-object p2, p0, Lcom/example/rederdemo/SafetyActivity$6;->val$epc:Ljava/lang/String;
    iput-object p3, p0, Lcom/example/rederdemo/SafetyActivity$6;->val$rssi:Ljava/lang/String;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method
.method public run()V
    .locals 3
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity$6;->this$1:Lcom/example/rederdemo/SafetyActivity$4;
    iget-object v0, v0, Lcom/example/rederdemo/SafetyActivity$4;->this$0:Lcom/example/rederdemo/SafetyActivity;
    iget-object v1, p0, Lcom/example/rederdemo/SafetyActivity$6;->val$epc:Ljava/lang/String;
    iget-object v2, p0, Lcom/example/rederdemo/SafetyActivity$6;->val$rssi:Ljava/lang/String;
    invoke-virtual {v0, v1, v2}, Lcom/example/rederdemo/SafetyActivity;->onTagDetected(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method
