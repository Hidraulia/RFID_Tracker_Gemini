.class public Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "LogAppAllGpiState.java"


# instance fields
.field private gpiPortLevel:I

.field private readerSerialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 12
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 13
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 4

    .line 44
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 45
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->gpiPortLevel:I

    int-to-long v1, v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 46
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->cData:[B

    .line 47
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->dataLen:I

    return-void
.end method

.method public ackUnpack()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x20

    .line 55
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->gpiPortLevel:I

    :cond_0
    return-void
.end method

.method public getGpiPortLevel()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->gpiPortLevel:I

    return v0
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public pack()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    return-void
.end method

.method public setGpiPortLevel(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->gpiPortLevel:I

    return-void
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public toBinaryString(I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/16 v1, 0x1f

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 66
    iget v3, p0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->gpiPortLevel:I

    or-int/2addr v1, v3

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-ne p1, v0, :cond_1

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public toBinaryString(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    shl-int p2, v0, p2

    or-int/2addr p1, p2

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
