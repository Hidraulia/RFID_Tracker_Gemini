.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetEasAlarm.java"


# instance fields
.field private alarmSwitch:I

.field private byteContent:[B

.field private byteMask:[B

.field private fail:Lcom/gg/reader/api/protocol/gx/ActionParamFail;

.field private filterData:I

.field private hexContent:Ljava/lang/String;

.field private hexMask:Ljava/lang/String;

.field private start:I

.field private success:Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 26
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 27
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x40

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 36
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;-><init>()V

    if-eqz p1, :cond_5

    .line 38
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 41
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->alarmSwitch:I

    .line 42
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->filterData:I

    const/16 v2, 0x10

    .line 43
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->start:I

    .line 44
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 46
    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->byteContent:[B

    .line 47
    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexContent:Ljava/lang/String;

    .line 49
    :cond_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 51
    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->byteMask:[B

    .line 52
    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexMask:Ljava/lang/String;

    .line 54
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v1

    array-length v4, p1

    if-ge v3, v4, :cond_5

    .line 55
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 66
    new-array v3, v3, [B

    .line 67
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 68
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    invoke-direct {v4, v3}, Lcom/gg/reader/api/protocol/gx/ActionParamFail;-><init>([B)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->fail:Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    goto :goto_0

    .line 59
    :cond_4
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 60
    new-array v3, v3, [B

    .line 61
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 62
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;

    invoke-direct {v4, v3}, Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;-><init>([B)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->success:Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 5

    .line 165
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 166
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->alarmSwitch:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 167
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->filterData:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 168
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->start:I

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 169
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexContent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 171
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexMask:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexMask:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 175
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexMask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->success:Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 180
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->success:Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;->toBytes()[B

    move-result-object v1

    .line 181
    array-length v4, v1

    invoke-virtual {v0, v4, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 182
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->fail:Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 185
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 186
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->fail:Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->toBytes()[B

    move-result-object v1

    .line 187
    array-length v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 188
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 191
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->cData:[B

    .line 192
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 6

    .line 199
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->cData:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_5

    .line 200
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 202
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->alarmSwitch:I

    .line 203
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->filterData:I

    const/16 v3, 0x10

    .line 204
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    iput v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->start:I

    .line 205
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    if-lez v4, :cond_0

    .line 207
    new-array v4, v4, [B

    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->byteContent:[B

    .line 208
    invoke-static {v4}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexContent:Ljava/lang/String;

    .line 210
    :cond_0
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    if-lez v4, :cond_1

    .line 212
    new-array v4, v4, [B

    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->byteMask:[B

    .line 213
    invoke-static {v4}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexMask:Ljava/lang/String;

    .line 215
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v4

    div-int/2addr v4, v2

    iget-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->cData:[B

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 216
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    .line 227
    new-array v4, v4, [B

    .line 228
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 229
    new-instance v5, Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    invoke-direct {v5, v4}, Lcom/gg/reader/api/protocol/gx/ActionParamFail;-><init>([B)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->fail:Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    goto :goto_0

    .line 220
    :cond_3
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    .line 221
    new-array v4, v4, [B

    .line 222
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 223
    new-instance v5, Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;

    invoke-direct {v5, v4}, Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;-><init>([B)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->success:Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;

    goto :goto_0

    .line 234
    :cond_4
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->setRtCode(B)V

    :cond_5
    return-void
.end method

.method public getAlarmSwitch()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->alarmSwitch:I

    return v0
.end method

.method public getByteContent()[B
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->byteContent:[B

    return-object v0
.end method

.method public getByteMask()[B
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->byteMask:[B

    return-object v0
.end method

.method public getFail()Lcom/gg/reader/api/protocol/gx/ActionParamFail;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->fail:Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    return-object v0
.end method

.method public getFilterData()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->filterData:I

    return v0
.end method

.method public getHexContent()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexContent:Ljava/lang/String;

    return-object v0
.end method

.method public getHexMask()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexMask:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->start:I

    return v0
.end method

.method public getSuccess()Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->success:Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;

    return-object v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setAlarmSwitch(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->alarmSwitch:I

    return-void
.end method

.method public setByteContent([B)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->byteContent:[B

    return-void
.end method

.method public setByteMask([B)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->byteMask:[B

    return-void
.end method

.method public setFail(Lcom/gg/reader/api/protocol/gx/ActionParamFail;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->fail:Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    return-void
.end method

.method public setFilterData(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->filterData:I

    return-void
.end method

.method public setHexContent(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexContent:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexContent:Ljava/lang/String;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->byteContent:[B

    :cond_0
    return-void
.end method

.method public setHexMask(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexMask:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexMask:Ljava/lang/String;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->byteMask:[B

    :cond_0
    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->start:I

    return-void
.end method

.method public setSuccess(Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->success:Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgAppGetEasAlarm{alarmSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->alarmSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filterData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->filterData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hexContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", byteContent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->byteContent:[B

    .line 245
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hexMask=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->hexMask:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", byteMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->byteMask:[B

    .line 247
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->success:Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetEasAlarm;->fail:Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
