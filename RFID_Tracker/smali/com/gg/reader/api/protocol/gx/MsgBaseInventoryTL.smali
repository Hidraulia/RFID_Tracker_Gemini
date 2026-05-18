.class public Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseInventoryTL.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private inventoryMode:I

.field private tagType:I

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->timeout:I

    .line 22
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x70

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 32
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;-><init>()V

    if-eqz p1, :cond_2

    .line 34
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x20

    .line 37
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->antennaEnable:Ljava/lang/Long;

    const/16 v2, 0x8

    .line 38
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->inventoryMode:I

    .line 39
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 40
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->timeout:I
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

    .line 114
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;)V

    .line 125
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 126
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->setRtCode(B)V

    .line 127
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getInventoryMode()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->inventoryMode:I

    return v0
.end method

.method public getTagType()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->tagType:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->timeout:I

    return v0
.end method

.method public pack()V
    .locals 5

    .line 88
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 90
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->inventoryMode:I

    int-to-long v1, v1

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 98
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->timeout:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    const/16 v1, 0x17

    .line 99
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 100
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->timeout:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->cData:[B

    .line 104
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setInventoryMode(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->inventoryMode:I

    return-void
.end method

.method public setTagType(I)V
    .locals 1

    .line 65
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->tagType:I

    .line 66
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->tagType:I

    int-to-byte v0, v0

    iput-byte v0, p1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->timeout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseInventoryGbT{antennaEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inventoryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->inventoryMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryTL;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
