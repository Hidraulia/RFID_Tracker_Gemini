.class public Lcom/gg/reader/api/utils/MultiFilterUtils;
.super Ljava/lang/Object;
.source "MultiFilterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clean(Lcom/gg/reader/api/dal/GClient;)Z
    .locals 3

    .line 53
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;-><init>()V

    const-wide v1, 0xffffffffL

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->setPacketNumber(Ljava/lang/Long;)V

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 57
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->getRtCode()B

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static get(Lcom/gg/reader/api/dal/GClient;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gg/reader/api/dal/GClient;",
            ")",
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    const-wide v3, 0xfffffffeL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 36
    new-instance v5, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;

    invoke-direct {v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;-><init>()V

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->setPacketNumber(Ljava/lang/Long;)V

    .line 38
    invoke-virtual {p0, v5}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 39
    invoke-virtual {v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->getRtCode()B

    move-result v6

    if-nez v6, :cond_1

    .line 40
    invoke-virtual {v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->getPacketNumber()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 41
    invoke-virtual {v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->getPacketNumber()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-eqz v8, :cond_0

    .line 42
    invoke-virtual {v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetMultiMatchRule["

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->getRtCode()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public static set(Lcom/gg/reader/api/dal/GClient;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gg/reader/api/dal/GClient;",
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;",
            ">;)Z"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_2

    .line 17
    new-instance v2, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;-><init>()V

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->setPacketNumber(Ljava/lang/Long;)V

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const-wide v3, 0xfffffffeL

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->setPacketNumber(Ljava/lang/Long;)V

    :cond_0
    long-to-int v3, v0

    .line 22
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v2, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 23
    invoke-virtual {p0, v2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 24
    invoke-virtual {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->getRtCode()B

    move-result v3

    if-eqz v3, :cond_1

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SetMultiMatchRule["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    return v4
.end method
