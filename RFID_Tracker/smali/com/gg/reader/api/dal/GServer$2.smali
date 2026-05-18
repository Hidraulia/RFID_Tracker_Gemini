.class Lcom/gg/reader/api/dal/GServer$2;
.super Ljava/lang/Object;
.source "GServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/GServer;->processConnect(Lcom/gg/reader/api/dal/communication/TcpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/GServer;

.field final synthetic val$client:Lcom/gg/reader/api/dal/communication/TcpClient;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/GServer;Lcom/gg/reader/api/dal/communication/TcpClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/gg/reader/api/dal/GServer$2;->this$0:Lcom/gg/reader/api/dal/GServer;

    iput-object p2, p0, Lcom/gg/reader/api/dal/GServer$2;->val$client:Lcom/gg/reader/api/dal/communication/TcpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 122
    new-instance v0, Lcom/gg/reader/api/dal/GClient;

    invoke-direct {v0}, Lcom/gg/reader/api/dal/GClient;-><init>()V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gg/reader/api/dal/GServer$2;->val$client:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/TcpClient;->serverIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GServer$2;->val$client:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget v2, v2, Lcom/gg/reader/api/dal/communication/TcpClient;->serverPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/gg/reader/api/dal/GServer$2;->val$client:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget-object v3, p0, Lcom/gg/reader/api/dal/GServer$2;->this$0:Lcom/gg/reader/api/dal/GServer;

    invoke-static {v3}, Lcom/gg/reader/api/dal/GServer;->access$000(Lcom/gg/reader/api/dal/GServer;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/dal/GClient;->open(Ljava/lang/String;Lcom/gg/reader/api/dal/communication/CommunicationInterface;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/dal/GClient;->setName(Ljava/lang/String;)V

    .line 137
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;-><init>()V

    .line 138
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 139
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getRtCode()B

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/gg/reader/api/dal/GClient;->close()Z

    return-void

    .line 144
    :cond_0
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getReaderSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {v0}, Lcom/gg/reader/api/dal/GClient;->close()Z

    return-void

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/gg/reader/api/dal/GServer$2;->this$0:Lcom/gg/reader/api/dal/GServer;

    invoke-static {v2}, Lcom/gg/reader/api/dal/GServer;->access$100(Lcom/gg/reader/api/dal/GServer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 150
    new-instance v2, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;

    iget-object v3, p0, Lcom/gg/reader/api/dal/GServer$2;->this$0:Lcom/gg/reader/api/dal/GServer;

    invoke-static {v3}, Lcom/gg/reader/api/dal/GServer;->access$100(Lcom/gg/reader/api/dal/GServer;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/dal/GClient;->sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 151
    iget-object v2, p0, Lcom/gg/reader/api/dal/GServer$2;->this$0:Lcom/gg/reader/api/dal/GServer;

    invoke-static {v2}, Lcom/gg/reader/api/dal/GServer;->access$100(Lcom/gg/reader/api/dal/GServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/dal/GClient;->setInitParam(Ljava/lang/String;)V

    .line 153
    :cond_2
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getReaderSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/dal/GClient;->setSerialNumber(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/gg/reader/api/dal/GServer$2;->this$0:Lcom/gg/reader/api/dal/GServer;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getReaderSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/gg/reader/api/dal/GServer;->triggerGClientConnectedEvent(Lcom/gg/reader/api/dal/GClient;Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/gg/reader/api/dal/GServer$2;->this$0:Lcom/gg/reader/api/dal/GServer;

    invoke-static {v2}, Lcom/gg/reader/api/dal/GServer;->access$200(Lcom/gg/reader/api/dal/GServer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getReaderSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/dal/GClient;->close()Z

    :goto_0
    return-void
.end method
