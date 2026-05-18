.class Lcom/example/rederdemo/SafetyActivity$4;
.super Ljava/lang/Object;
.implements Lcom/gg/reader/api/dal/HandlerTagEpcLog;
.source "SafetyActivity.java"
.field final synthetic this$0:Lcom/example/rederdemo/SafetyActivity;
.method constructor <init>(Lcom/example/rederdemo/SafetyActivity;)V
    .locals 0
    iput-object p1, p0, Lcom/example/rederdemo/SafetyActivity$4;->this$0:Lcom/example/rederdemo/SafetyActivity;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method
.method public log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;)V
    .locals 5
    # Solo procesar si resultado == 0
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getResult()I
    move-result v0
    if-nez v0, :done
    # Obtener EPC
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :done
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-nez v0, :done
    # Obtener RSSI como String
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getRssidBm()I
    move-result v2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    move-result-object v2
    # Despachar al hilo UI via Handler
    iget-object v3, p0, Lcom/example/rederdemo/SafetyActivity$4;->this$0:Lcom/example/rederdemo/SafetyActivity;
    invoke-static {v3}, Lcom/example/rederdemo/SafetyActivity;->access$handler(Lcom/example/rederdemo/SafetyActivity;)Landroid/os/Handler;
    move-result-object v3
    new-instance v4, Lcom/example/rederdemo/SafetyActivity$6;
    invoke-direct {v4, p0, v1, v2}, Lcom/example/rederdemo/SafetyActivity$6;-><init>(Lcom/example/rederdemo/SafetyActivity$4;Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :done
    return-void
.end method
