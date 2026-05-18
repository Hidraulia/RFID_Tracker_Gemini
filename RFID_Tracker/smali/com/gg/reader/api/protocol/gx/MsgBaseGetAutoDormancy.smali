.class public Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseGetAutoDormancy.java"


# instance fields
.field private freeTime:I

.field private onOff:I

.field private readTime:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 12
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->freeTime:I

    const/high16 v0, -0x80000000

    .line 13
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->readTime:I

    .line 17
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0xe

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;-><init>()V

    if-eqz p1, :cond_1

    .line 29
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x8

    .line 32
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->onOff:I

    const/16 v0, 0x10

    .line 33
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->freeTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 5

    .line 72
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 73
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->onOff:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    const v1, 0x7fffffff

    .line 74
    iget v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->freeTime:I

    const/16 v4, 0x10

    if-eq v1, v2, :cond_0

    .line 75
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->freeTime:I

    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    :cond_0
    const/high16 v1, -0x80000000

    .line 78
    iget v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->readTime:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 80
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->readTime:I

    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 83
    :cond_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->cData:[B

    .line 84
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->cData:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 94
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->onOff:I

    const/16 v3, 0x10

    .line 95
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    iput v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->freeTime:I

    .line 96
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v4

    div-int/2addr v4, v2

    iget-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->cData:[B

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 97
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    iput v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->readTime:I

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->setRtCode(B)V

    :cond_2
    return-void
.end method

.method public getFreeTime()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->freeTime:I

    return v0
.end method

.method public getOnOff()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->onOff:I

    return v0
.end method

.method public getReadTime()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->readTime:I

    return v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setFreeTime(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->freeTime:I

    return-void
.end method

.method public setOnOff(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->onOff:I

    return-void
.end method

.method public setReadTime(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->readTime:I

    return-void
.end method
