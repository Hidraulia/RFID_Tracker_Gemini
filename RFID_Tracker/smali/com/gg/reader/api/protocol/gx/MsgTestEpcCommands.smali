.class public Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestEpcCommands.java"


# instance fields
.field private antennaNum:Ljava/lang/Long;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 16
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 17
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    int-to-byte p1, p1

    iput-byte p1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 26
    invoke-direct {p0, p2}, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;-><init>(I)V

    if-eqz p1, :cond_1

    .line 28
    :try_start_0
    array-length p2, p1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 p2, 0x0

    .line 30
    invoke-virtual {p1, p2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 p2, 0x20

    .line 31
    invoke-virtual {p1, p2}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->antennaNum:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 56
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;)V

    .line 67
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->setRtCode(B)V

    .line 69
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaNum()Ljava/lang/Long;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->antennaNum:Ljava/lang/Long;

    return-object v0
.end method

.method public pack()V
    .locals 4

    .line 48
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->antennaNum:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 50
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->cData:[B

    .line 51
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->dataLen:I

    return-void
.end method

.method public setAntennaNum(Ljava/lang/Long;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEpcCommands;->antennaNum:Ljava/lang/Long;

    return-void
.end method
