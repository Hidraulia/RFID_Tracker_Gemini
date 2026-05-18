.class Lcom/example/rederdemo/SafetyActivity$5;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SafetyActivity.java"
.field final synthetic this$0:Lcom/example/rederdemo/SafetyActivity;
.method constructor <init>(Lcom/example/rederdemo/SafetyActivity;)V
    .locals 0
    iput-object p1, p0, Lcom/example/rederdemo/SafetyActivity$5;->this$0:Lcom/example/rederdemo/SafetyActivity;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method
.method public run()V
    .locals 2
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity$5;->this$0:Lcom/example/rederdemo/SafetyActivity;
    invoke-static {v0}, Lcom/example/rederdemo/SafetyActivity;->access$client(Lcom/example/rederdemo/SafetyActivity;)Lcom/gg/reader/api/dal/GClient;
    move-result-object v0
    if-eqz v0, :done
    :try_start
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;
    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V
    :try_end
    .catch Ljava/lang/Throwable; {:try_start .. :try_end} :catch
    :catch
    :done
    return-void
.end method
