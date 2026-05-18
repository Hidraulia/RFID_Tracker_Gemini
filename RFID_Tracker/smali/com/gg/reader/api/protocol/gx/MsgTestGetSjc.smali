.class public Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestGetSjc.java"


# instance fields
.field private cap_i:I

.field private cap_q:I

.field private cap_s:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 14
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 15
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x17

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;-><init>()V

    if-eqz p1, :cond_1

    .line 26
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x8

    .line 29
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_i:I

    .line 30
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_q:I

    .line 31
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 3

    .line 70
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 71
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_i:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 72
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_q:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 73
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_s:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 74
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cData:[B

    .line 75
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cData:[B

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 85
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_i:I

    .line 86
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_q:I

    .line 87
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_s:I

    .line 88
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->setRtCode(B)V

    :cond_0
    return-void
.end method

.method public getCap_i()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_i:I

    return v0
.end method

.method public getCap_q()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_q:I

    return v0
.end method

.method public getCap_s()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_s:I

    return v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setCap_i(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_i:I

    return-void
.end method

.method public setCap_q(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_q:I

    return-void
.end method

.method public setCap_s(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetSjc;->cap_s:I

    return-void
.end method
