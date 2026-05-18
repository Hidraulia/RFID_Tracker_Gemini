.class public Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseSetMultiMatchRule.java"


# instance fields
.field private filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

.field private packetNumber:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 15
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 16
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x18

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 4

    .line 61
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;)V

    .line 67
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->cData:[B

    invoke-static {v1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x20

    .line 70
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->packetNumber:Ljava/lang/Long;

    const/16 v2, 0x8

    .line 71
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getByteUnsigned(I)B

    move-result v1

    .line 72
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->setRtCode(B)V

    .line 73
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-object v0
.end method

.method public getPacketNumber()Ljava/lang/Long;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->packetNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public pack()V
    .locals 4

    .line 43
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->packetNumber:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 45
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->toBytes()[B

    move-result-object v1

    .line 47
    array-length v3, v1

    invoke-virtual {v0, v3, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 48
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 52
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->cData:[B

    .line 53
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-void
.end method

.method public setPacketNumber(Ljava/lang/Long;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetMultiMatchRule;->packetNumber:Ljava/lang/Long;

    return-void
.end method
