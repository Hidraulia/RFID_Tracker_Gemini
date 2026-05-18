.class public Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppSetReadiotLock.java"


# instance fields
.field private cabinetNo:I

.field private delay:I

.field private lockNo:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 14
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 15
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, -0x80

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 60
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;)V

    .line 66
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 67
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->setRtCode(B)V

    .line 68
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCabinetNo()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->cabinetNo:I

    return v0
.end method

.method public getDelay()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->delay:I

    return v0
.end method

.method public getLockNo()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->lockNo:I

    return v0
.end method

.method public pack()V
    .locals 3

    .line 49
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 50
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->cabinetNo:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 51
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->lockNo:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 52
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->delay:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 54
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->cData:[B

    .line 55
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->dataLen:I

    return-void
.end method

.method public setCabinetNo(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->cabinetNo:I

    return-void
.end method

.method public setDelay(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->delay:I

    return-void
.end method

.method public setLockNo(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->lockNo:I

    return-void
.end method
