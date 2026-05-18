.class public Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppCykeoAccessControl.java"


# instance fields
.field private countZero:I

.field private inPeople:I

.field private inoutRule:I

.field private opnType:I

.field private outPeople:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->inoutRule:I

    .line 10
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->countZero:I

    .line 16
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 17
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x67

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 6

    .line 85
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;)V

    .line 91
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->cData:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_4

    .line 92
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->setRtCode(B)V

    .line 93
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->setRtMsg(Ljava/lang/String;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->cData:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 97
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/16 v2, 0x8

    .line 98
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 99
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->cData:[B

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 100
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-eq v3, v1, :cond_3

    const/4 v4, 0x2

    const/16 v5, 0x20

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->outPeople:I

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v0, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->inPeople:I

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->inoutRule:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getCountZero()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->countZero:I

    return v0
.end method

.method public getInPeople()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->inPeople:I

    return v0
.end method

.method public getInoutRule()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->inoutRule:I

    return v0
.end method

.method public getOpnType()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->opnType:I

    return v0
.end method

.method public getOutPeople()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->outPeople:I

    return v0
.end method

.method public pack()V
    .locals 7

    .line 67
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 68
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->opnType:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 69
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->opnType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 70
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->inoutRule:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 71
    invoke-virtual {v0, v3, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 72
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->inoutRule:I

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 74
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->countZero:I

    if-eq v1, v4, :cond_1

    const/4 v1, 0x2

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 76
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->countZero:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 79
    :cond_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->cData:[B

    .line 80
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->dataLen:I

    return-void
.end method

.method public setCountZero(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->countZero:I

    return-void
.end method

.method public setInPeople(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->inPeople:I

    return-void
.end method

.method public setInoutRule(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->inoutRule:I

    return-void
.end method

.method public setOpnType(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->opnType:I

    return-void
.end method

.method public setOutPeople(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppCykeoAccessControl;->outPeople:I

    return-void
.end method
