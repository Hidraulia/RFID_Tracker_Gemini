.class public Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseWriteEpc.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private area:I

.field private block:I

.field private bwriteData:[B

.field private eBookFlag:I

.field private errorIndex:I

.field private filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

.field private hexPassword:Ljava/lang/String;

.field private hexWriteData:Ljava/lang/String;

.field private safeCertificationFlag:I

.field private start:I

.field private stayCarrierWave:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->block:I

    const v1, 0x7fffffff

    .line 23
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->stayCarrierWave:I

    .line 24
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->eBookFlag:I

    .line 26
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->safeCertificationFlag:I

    .line 30
    :try_start_0
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 31
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v2, "0010"

    iput-object v2, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v2, 0x11

    iput-byte v2, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    .line 34
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6

    .line 40
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;-><init>()V

    if-eqz p1, :cond_6

    .line 42
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x20

    .line 45
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->antennaEnable:Ljava/lang/Long;

    const/16 v1, 0x8

    .line 46
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->area:I

    const/16 v2, 0x10

    .line 47
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->start:I

    .line 48
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 50
    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->bwriteData:[B

    .line 51
    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->hexWriteData:Ljava/lang/String;

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v1

    array-length v4, p1

    if-ge v3, v4, :cond_6

    .line 54
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    if-eq v3, v5, :cond_2

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->stayCarrierWave:I

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->block:I

    goto :goto_0

    :cond_4
    new-array v3, v5, [B

    .line 67
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 68
    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->hexPassword:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_5
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 59
    new-array v4, v3, [B

    if-lez v3, :cond_1

    .line 61
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 62
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v3, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>([B)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 4

    .line 231
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;)V

    .line 247
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->cData:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 248
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->cData:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setRtCode(B)V

    .line 249
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->cData:[B

    aget-byte v1, v1, v3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->cData:[B

    aget-byte v1, v1, v3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setRtMsg(Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->cData:[B

    array-length v0, v0

    if-le v0, v2, :cond_1

    .line 253
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/16 v1, 0x8

    .line 254
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 255
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x10

    .line 256
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->errorIndex:I

    :cond_1
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getArea()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->area:I

    return v0
.end method

.method public getBlock()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->block:I

    return v0
.end method

.method public getBwriteData()[B
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->bwriteData:[B

    return-object v0
.end method

.method public getErrorIndex()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->errorIndex:I

    return v0
.end method

.method public getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-object v0
.end method

.method public getHexPassword()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->hexPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getHexWriteData()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->hexWriteData:Ljava/lang/String;

    return-object v0
.end method

.method public getSafeCertificationFlag()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->safeCertificationFlag:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->start:I

    return v0
.end method

.method public getStayCarrierWave()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->stayCarrierWave:I

    return v0
.end method

.method public geteBookFlag()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->eBookFlag:I

    return v0
.end method

.method public pack()V
    .locals 5

    .line 185
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 187
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->area:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 188
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->start:I

    int-to-long v1, v1

    const/16 v4, 0x10

    invoke-virtual {v0, v1, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 189
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->bwriteData:[B

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 190
    array-length v1, v1

    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 191
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->bwriteData:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 195
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 196
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->toBytes()[B

    move-result-object v1

    .line 197
    array-length v2, v1

    invoke-virtual {v0, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 198
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 201
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 202
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 205
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->block:I

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 206
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 207
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->block:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 209
    :cond_3
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->stayCarrierWave:I

    const v2, 0x7fffffff

    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    .line 210
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 211
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->stayCarrierWave:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 214
    :cond_4
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->eBookFlag:I

    if-eq v2, v1, :cond_5

    const/4 v1, 0x5

    .line 215
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 216
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->eBookFlag:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 219
    :cond_5
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->safeCertificationFlag:I

    if-eq v2, v1, :cond_6

    const/4 v1, 0x6

    .line 220
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 221
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->safeCertificationFlag:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 224
    :cond_6
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->cData:[B

    .line 225
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->dataLen:I

    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setArea(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->area:I

    return-void
.end method

.method public setBlock(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->block:I

    return-void
.end method

.method public setBwriteData([B)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->bwriteData:[B

    return-void
.end method

.method public setErrorIndex(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->errorIndex:I

    return-void
.end method

.method public setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-void
.end method

.method public setHexPassword(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->hexPassword:Ljava/lang/String;

    return-void
.end method

.method public setHexWriteData(Ljava/lang/String;)V
    .locals 1

    .line 113
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->hexWriteData:Ljava/lang/String;

    .line 115
    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->bwriteData:[B

    :cond_0
    return-void
.end method

.method public setSafeCertificationFlag(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->safeCertificationFlag:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->start:I

    return-void
.end method

.method public setStayCarrierWave(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->stayCarrierWave:I

    return-void
.end method

.method public seteBookFlag(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->eBookFlag:I

    return-void
.end method
