.class public Lcom/example/rederdemo/util/CheckCommunication;
.super Ljava/lang/Object;
.source "CheckCommunication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check()Z
    .locals 2

    .line 8
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 9
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 10
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "\u901a\u4fe1\u8d85\u65f6"

    .line 13
    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
