.class public Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppUsbKeyboard.java"


# instance fields
.field private encodingMethod:I

.field private operationType:I

.field private prefix:Ljava/lang/String;

.field private reportType:I

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 12
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->reportType:I

    .line 13
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->encodingMethod:I

    .line 20
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x2b

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 6

    .line 106
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;)V

    .line 112
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->cData:[B

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_5

    .line 113
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->cData:[B

    invoke-static {v1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 116
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->setRtCode(B)V

    .line 117
    invoke-virtual {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->getRtCode()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->getRtCode()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->setRtMsg(Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v0

    div-int/2addr v0, v2

    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->cData:[B

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 121
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    const-string v4, "ASCII"

    const/16 v5, 0x10

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    :try_start_0
    new-instance v3, Ljava/lang/String;

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v0

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->suffix:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 130
    :cond_2
    invoke-virtual {v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    :try_start_1
    new-instance v3, Ljava/lang/String;

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v0

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->prefix:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 135
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 127
    :cond_3
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->encodingMethod:I

    goto :goto_0

    .line 124
    :cond_4
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->reportType:I

    goto :goto_0

    :cond_5
    return-void
.end method

.method public getEncodingMethod()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->encodingMethod:I

    return v0
.end method

.method public getOperationType()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->operationType:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getReportType()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->reportType:I

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public pack()V
    .locals 6

    .line 71
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 72
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->operationType:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 73
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->operationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 74
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->reportType:I

    const v4, 0x7fffffff

    if-eq v1, v4, :cond_0

    .line 75
    invoke-virtual {v0, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 76
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->reportType:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 78
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->encodingMethod:I

    if-eq v1, v4, :cond_1

    const/4 v1, 0x2

    .line 79
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 80
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->encodingMethod:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->prefix:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/16 v5, 0x10

    if-nez v1, :cond_2

    .line 83
    invoke-virtual {v0, v4, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 84
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 85
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0, v4, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 88
    invoke-virtual {v0, v2, v5}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->suffix:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x4

    if-nez v1, :cond_3

    .line 92
    invoke-virtual {v0, v4, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 93
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->suffix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 94
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {v0, v4, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 97
    invoke-virtual {v0, v2, v5}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 100
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->cData:[B

    .line 101
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->dataLen:I

    return-void
.end method

.method public setEncodingMethod(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->encodingMethod:I

    return-void
.end method

.method public setOperationType(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->operationType:I

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setReportType(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->reportType:I

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKeyboard;->suffix:Ljava/lang/String;

    return-void
.end method
