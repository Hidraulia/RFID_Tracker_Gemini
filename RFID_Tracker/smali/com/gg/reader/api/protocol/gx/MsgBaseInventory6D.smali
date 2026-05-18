.class public Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseInventory6D.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private inventoryMode:I

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 12
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->timeout:I

    .line 16
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 17
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x75

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 26
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;-><init>()V

    if-eqz p1, :cond_2

    .line 28
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x20

    .line 31
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->antennaEnable:Ljava/lang/Long;

    const/16 v2, 0x8

    .line 32
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->inventoryMode:I

    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 34
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->timeout:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 92
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;)V

    .line 103
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->setRtCode(B)V

    .line 105
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getInventoryMode()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->inventoryMode:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->timeout:I

    return v0
.end method

.method public pack()V
    .locals 5

    .line 73
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 75
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->inventoryMode:I

    int-to-long v1, v1

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 76
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->timeout:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    const/16 v1, 0x17

    .line 77
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 78
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->timeout:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->cData:[B

    .line 82
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setInventoryMode(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->inventoryMode:I

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6D;->timeout:I

    return-void
.end method
