.class public Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseInventory6b.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private area:I

.field private bMatchTid:[B

.field private hexMatchTid:Ljava/lang/String;

.field private inventoryMode:I

.field private readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->timeout:I

    .line 26
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 27
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x40

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6

    .line 36
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;-><init>()V

    if-eqz p1, :cond_4

    .line 38
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x20

    .line 41
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->antennaEnable:Ljava/lang/Long;

    const/16 v2, 0x8

    .line 42
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->inventoryMode:I

    .line 43
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->area:I

    .line 44
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 45
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v4, :cond_3

    if-eq v3, v5, :cond_2

    const/16 v4, 0x17

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->timeout:I

    goto :goto_0

    :cond_2
    new-array v3, v2, [B

    .line 55
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    .line 56
    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->hexMatchTid:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-array v3, v5, [B

    .line 50
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 51
    new-instance v4, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    invoke-direct {v4, v3}, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;-><init>([B)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 153
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;)V

    .line 164
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 165
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setRtCode(B)V

    .line 166
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getArea()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->area:I

    return v0
.end method

.method public getHexMatchTid()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->hexMatchTid:Ljava/lang/String;

    return-object v0
.end method

.method public getInventoryMode()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->inventoryMode:I

    return v0
.end method

.method public getReadUserdata()Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->timeout:I

    return v0
.end method

.method public getbMatchTid()[B
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    return-object v0
.end method

.method public pack()V
    .locals 5

    .line 128
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 130
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->inventoryMode:I

    int-to-long v1, v1

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 131
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->area:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 133
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 135
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->toBytes()[B

    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x2

    .line 139
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 140
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 142
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->timeout:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    const/16 v1, 0x17

    .line 143
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 144
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->timeout:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 147
    :cond_2
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->cData:[B

    .line 148
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->dataLen:I

    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setArea(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->area:I

    return-void
.end method

.method public setHexMatchTid(Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->hexMatchTid:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    :cond_0
    return-void
.end method

.method public setInventoryMode(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->inventoryMode:I

    return-void
.end method

.method public setReadUserdata(Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->timeout:I

    return-void
.end method

.method public setbMatchTid([B)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseInventory6b{antennaEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inventoryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->inventoryMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->area:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", readUserdata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hexMatchTid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->hexMatchTid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", bMatchTid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    .line 180
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
