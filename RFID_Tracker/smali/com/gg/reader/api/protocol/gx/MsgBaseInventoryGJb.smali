.class public Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseInventoryGJb.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

.field private hexPassword:Ljava/lang/String;

.field private inventoryMode:I

.field private readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

.field private readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

.field private safeCertificationFlag:I

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->safeCertificationFlag:I

    .line 23
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->timeout:I

    .line 27
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 28
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x60

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 37
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;-><init>()V

    if-eqz p1, :cond_8

    .line 39
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x20

    .line 42
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->antennaEnable:Ljava/lang/Long;

    const/16 v2, 0x8

    .line 43
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->inventoryMode:I

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    array-length v4, p1

    if-ge v3, v4, :cond_8

    .line 45
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->timeout:I

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->safeCertificationFlag:I

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    new-array v3, v3, [B

    .line 68
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 69
    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->hexPassword:Ljava/lang/String;

    goto :goto_0

    :cond_5
    new-array v3, v4, [B

    .line 63
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 64
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-direct {v4, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;-><init>([B)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    goto :goto_0

    :cond_6
    new-array v3, v4, [B

    .line 58
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 59
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {v4, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>([B)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    goto :goto_0

    :cond_7
    const/16 v3, 0x10

    .line 49
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 50
    new-array v4, v3, [B

    if-lez v3, :cond_1

    .line 52
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 53
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v3, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>([B)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 191
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;)V

    .line 203
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 204
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setRtCode(B)V

    .line 205
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-object v0
.end method

.method public getHexPassword()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->hexPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getInventoryMode()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->inventoryMode:I

    return v0
.end method

.method public getReadTid()Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    return-object v0
.end method

.method public getReadUserdata()Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    return-object v0
.end method

.method public getSafeCertificationFlag()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->safeCertificationFlag:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->timeout:I

    return v0
.end method

.method public pack()V
    .locals 6

    .line 149
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 151
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->inventoryMode:I

    int-to-long v1, v1

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 153
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 154
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 155
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->toBytes()[B

    move-result-object v1

    .line 156
    array-length v2, v1

    const/16 v5, 0x10

    invoke-virtual {v0, v2, v5}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 157
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 160
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 161
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->toBytes()[B

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 165
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 166
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->toBytes()[B

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x5

    .line 170
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 171
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 174
    :cond_3
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->safeCertificationFlag:I

    const v2, 0x7fffffff

    if-eq v2, v1, :cond_4

    const/4 v1, 0x6

    .line 175
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 176
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->safeCertificationFlag:I

    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 179
    :cond_4
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->timeout:I

    if-eq v1, v2, :cond_5

    const/16 v1, 0x17

    .line 180
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 181
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->timeout:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 184
    :cond_5
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->cData:[B

    .line 185
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->dataLen:I

    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-void
.end method

.method public setHexPassword(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->hexPassword:Ljava/lang/String;

    return-void
.end method

.method public setInventoryMode(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->inventoryMode:I

    return-void
.end method

.method public setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    return-void
.end method

.method public setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    return-void
.end method

.method public setSafeCertificationFlag(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->safeCertificationFlag:I

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->timeout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseInventoryGb{antennaEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inventoryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->inventoryMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readTid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readUserdata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hexPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->hexPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", safeCertificationFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->safeCertificationFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
