.class public Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestAntConnectDetection.java"


# instance fields
.field private antCount:I

.field private status:I

.field private thresholdValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 12
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->thresholdValue:I

    .line 18
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x19

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 28
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;-><init>()V

    if-eqz p1, :cond_2

    .line 30
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v1

    const/16 v2, 0x8

    div-int/2addr v1, v2

    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 34
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->thresholdValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 3

    .line 115
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const v1, 0x7fffffff

    .line 116
    iget v2, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->thresholdValue:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 118
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->thresholdValue:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->cData:[B

    .line 121
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public ackUnpack()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 132
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->antCount:I

    const/16 v2, 0x20

    .line 133
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->status:I

    .line 134
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->setRtCode(B)V

    :cond_0
    return-void
.end method

.method public getAntCount()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->antCount:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->status:I

    return v0
.end method

.method public getThresholdValue()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->thresholdValue:I

    return v0
.end method

.method public pack()V
    .locals 3

    .line 100
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const v1, 0x7fffffff

    .line 101
    iget v2, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->thresholdValue:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 103
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->thresholdValue:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 105
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->cData:[B

    .line 106
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAntCount(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->antCount:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->status:I

    return-void
.end method

.method public setThresholdValue(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->thresholdValue:I

    return-void
.end method

.method public toBinaryBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .line 94
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->antCount:I

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->toBinaryBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toBinaryBuilder(I)Ljava/lang/StringBuilder;
    .locals 4

    .line 82
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestAntConnectDetection;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p1, v2

    if-lez v2, :cond_0

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "d"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    :cond_0
    return-object v1
.end method
