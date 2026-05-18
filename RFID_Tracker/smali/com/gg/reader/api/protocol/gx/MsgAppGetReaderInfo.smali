.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetReaderInfo.java"


# instance fields
.field private appCompileTime:Ljava/lang/String;

.field private appVersions:Ljava/lang/String;

.field private baseCompileTime:Ljava/lang/String;

.field private basePowerOnTime:J

.field private powerOnTime:J

.field private readerSerialNumber:Ljava/lang/String;

.field private systemVersions:Ljava/lang/String;

.field private tuYaAuthKey:Ljava/lang/String;

.field private tuYaPid:Ljava/lang/String;

.field private tuYaShortUrl:Ljava/lang/String;

.field private tuYaUuid:Ljava/lang/String;

.field private workState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 28
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 29
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    .line 32
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7

    const-string v0, "."

    .line 39
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;-><init>()V

    if-eqz p1, :cond_3

    .line 41
    :try_start_0
    array-length v1, p1

    if-gtz v1, :cond_0

    goto/16 :goto_1

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x10

    .line 44
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "ASCII"

    if-lez v3, :cond_1

    .line 46
    :try_start_1
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    :cond_1
    const/16 v3, 0x20

    .line 48
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->powerOnTime:J

    .line 49
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 51
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    .line 53
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    const/16 v5, 0x8

    div-int/2addr v3, v5

    array-length v6, p1

    if-ge v3, v6, :cond_3

    .line 54
    invoke-virtual {v1}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 92
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 86
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    goto :goto_0

    .line 78
    :pswitch_2
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 80
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    goto :goto_0

    .line 72
    :pswitch_3
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 74
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    goto :goto_0

    .line 66
    :pswitch_4
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 68
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    goto :goto_0

    .line 60
    :pswitch_5
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 62
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    goto/16 :goto_0

    .line 57
    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appVersions:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public ackPack()V
    .locals 7

    .line 218
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 221
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 224
    :cond_0
    iget-wide v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->powerOnTime:J

    const/16 v1, 0x20

    invoke-virtual {v0, v3, v4, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 226
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 228
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appVersions:Ljava/lang/String;

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 233
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appVersions:Ljava/lang/String;

    const-string v4, "\\."

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 234
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 235
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 239
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 240
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 241
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 244
    :cond_3
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    .line 245
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 246
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 247
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 250
    :cond_4
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x4

    .line 251
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 252
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 253
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 256
    :cond_5
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x5

    .line 257
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 258
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 259
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 262
    :cond_6
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x6

    .line 263
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 264
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 265
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 268
    :cond_7
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x7

    .line 269
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 270
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 271
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 274
    :cond_8
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->cData:[B

    .line 275
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 10

    const-string v0, ":"

    const-string v1, "."

    .line 282
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->cData:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->cData:[B

    array-length v2, v2

    if-lez v2, :cond_3

    .line 283
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->cData:[B

    invoke-static {v2}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v2

    const/4 v3, 0x0

    .line 284
    invoke-virtual {v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v4, 0x10

    .line 286
    :try_start_0
    invoke-virtual {v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "ASCII"

    if-lez v5, :cond_0

    .line 288
    :try_start_1
    new-instance v7, Ljava/lang/String;

    new-array v5, v5, [B

    invoke-virtual {v2, v5}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v5

    invoke-direct {v7, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v7, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    :cond_0
    const/16 v5, 0x20

    .line 290
    invoke-virtual {v2, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->powerOnTime:J

    .line 291
    invoke-virtual {v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v7

    if-lez v7, :cond_1

    .line 293
    new-instance v8, Ljava/lang/String;

    new-array v7, v7, [B

    invoke-virtual {v2, v7}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v7

    invoke-direct {v8, v7, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    .line 295
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v7

    const/16 v8, 0x8

    div-int/2addr v7, v8

    iget-object v9, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->cData:[B

    array-length v9, v9

    if-ge v7, v9, :cond_2

    .line 296
    invoke-virtual {v2}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 341
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->workState:Ljava/lang/String;

    goto :goto_0

    .line 338
    :pswitch_1
    invoke-virtual {v2, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->basePowerOnTime:J

    goto :goto_0

    .line 332
    :pswitch_2
    invoke-virtual {v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v7

    if-lez v7, :cond_1

    .line 334
    new-instance v8, Ljava/lang/String;

    new-array v7, v7, [B

    invoke-virtual {v2, v7}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v7

    invoke-direct {v8, v7, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    goto :goto_0

    .line 326
    :pswitch_3
    invoke-virtual {v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v7

    if-lez v7, :cond_1

    .line 328
    new-instance v8, Ljava/lang/String;

    new-array v7, v7, [B

    invoke-virtual {v2, v7}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v7

    invoke-direct {v8, v7, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    goto :goto_0

    .line 320
    :pswitch_4
    invoke-virtual {v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v7

    if-lez v7, :cond_1

    .line 322
    new-instance v8, Ljava/lang/String;

    new-array v7, v7, [B

    invoke-virtual {v2, v7}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v7

    invoke-direct {v8, v7, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    goto :goto_0

    .line 314
    :pswitch_5
    invoke-virtual {v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v7

    if-lez v7, :cond_1

    .line 316
    new-instance v8, Ljava/lang/String;

    new-array v7, v7, [B

    invoke-virtual {v2, v7}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v7

    invoke-direct {v8, v7, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    goto/16 :goto_0

    .line 308
    :pswitch_6
    invoke-virtual {v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v7

    if-lez v7, :cond_1

    .line 310
    new-instance v8, Ljava/lang/String;

    new-array v7, v7, [B

    invoke-virtual {v2, v7}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v7

    invoke-direct {v8, v7, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 302
    :pswitch_7
    invoke-virtual {v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v7

    if-lez v7, :cond_1

    .line 304
    new-instance v8, Ljava/lang/String;

    new-array v7, v7, [B

    invoke-virtual {v2, v7}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v7

    invoke-direct {v8, v7, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    goto/16 :goto_0

    .line 299
    :pswitch_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appVersions:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 348
    :catch_0
    :cond_2
    invoke-virtual {p0, v3}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->setRtCode(B)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAppCompileTime()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersions()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appVersions:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseCompileTime()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    return-object v0
.end method

.method public getBasePowerOnTime()J
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->basePowerOnTime:J

    return-wide v0
.end method

.method public getFormatPowerOnTime()Ljava/lang/String;
    .locals 12

    .line 153
    invoke-virtual {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getPowerOnTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const-wide/32 v4, 0x5265c00

    .line 154
    div-long v6, v0, v4

    .line 155
    rem-long v4, v0, v4

    const-wide/32 v8, 0x36ee80

    div-long/2addr v4, v8

    .line 156
    rem-long v8, v0, v8

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    .line 157
    rem-long/2addr v0, v10

    div-long/2addr v0, v2

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " days "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " hours "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " minutes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " seconds "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerOnTime()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->powerOnTime:J

    return-wide v0
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemVersions()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    return-object v0
.end method

.method public getTuYaAuthKey()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTuYaPid()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    return-object v0
.end method

.method public getTuYaShortUrl()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTuYaUuid()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkState()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->workState:Ljava/lang/String;

    return-object v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setAppCompileTime(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    return-void
.end method

.method public setAppVersions(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appVersions:Ljava/lang/String;

    return-void
.end method

.method public setBaseCompileTime(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    return-void
.end method

.method public setBasePowerOnTime(J)V
    .locals 0

    .line 199
    iput-wide p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->basePowerOnTime:J

    return-void
.end method

.method public setPowerOnTime(J)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->powerOnTime:J

    return-void
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setSystemVersions(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    return-void
.end method

.method public setTuYaAuthKey(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    return-void
.end method

.method public setTuYaPid(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    return-void
.end method

.method public setTuYaShortUrl(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    return-void
.end method

.method public setTuYaUuid(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    return-void
.end method

.method public setWorkState(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->workState:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgAppGetReaderInfo{readerSerialNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", powerOnTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->powerOnTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", baseCompileTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appVersions=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appVersions:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", systemVersions=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appCompileTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
