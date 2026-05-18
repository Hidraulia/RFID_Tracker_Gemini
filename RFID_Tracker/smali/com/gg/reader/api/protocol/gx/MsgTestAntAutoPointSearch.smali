.class public Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestAntAutoPointSearch.java"


# instance fields
.field private ant:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 14
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 15
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x18

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 62
    new-instance p0, Lcom/gg/reader/api/dal/GClient;

    invoke-direct {p0}, Lcom/gg/reader/api/dal/GClient;-><init>()V

    .line 64
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;-><init>()V

    const-wide/16 v1, 0x1

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->setAnt(J)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 47
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;)V

    .line 53
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->setRtCode(B)V

    .line 55
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAnt()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->ant:J

    return-wide v0
.end method

.method public pack()V
    .locals 6

    .line 34
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 35
    iget-wide v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->ant:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 37
    iget-wide v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->ant:J

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 38
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->cData:[B

    .line 39
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setAnt(J)V
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntAutoPointSearch;->ant:J

    return-void
.end method
