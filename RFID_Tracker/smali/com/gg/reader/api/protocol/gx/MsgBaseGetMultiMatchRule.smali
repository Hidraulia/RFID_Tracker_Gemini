.class public Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseGetMultiMatchRule.java"


# instance fields
.field private filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

.field private packetNumber:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 13
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 14
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x19

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->cData:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x20

    .line 60
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->packetNumber:Ljava/lang/Long;

    const/16 v2, 0x10

    .line 61
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 63
    new-array v2, v2, [B

    .line 64
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 65
    new-instance v0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v0, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>([B)V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    .line 67
    :cond_0
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->setRtCode(B)V

    :cond_1
    return-void
.end method

.method public getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-object v0
.end method

.method public getPacketNumber()Ljava/lang/Long;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->packetNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public pack()V
    .locals 4

    .line 41
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->packetNumber:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 48
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->cData:[B

    .line 49
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-void
.end method

.method public setPacketNumber(Ljava/lang/Long;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetMultiMatchRule;->packetNumber:Ljava/lang/Long;

    return-void
.end method
