.class public Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestWorkModeInit.java"


# instance fields
.field private param:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 15
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 16
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x1b

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->param:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->type:I

    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 59
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;)V

    .line 67
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->setRtCode(B)V

    .line 69
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->type:I

    return v0
.end method

.method public pack()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->param:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->param:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 52
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->type:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 53
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->cData:[B

    .line 54
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->dataLen:I

    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->param:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;->type:I

    return-void
.end method
