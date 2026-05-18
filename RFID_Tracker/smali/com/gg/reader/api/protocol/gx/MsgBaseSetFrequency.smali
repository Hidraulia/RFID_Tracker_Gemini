.class public Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseSetFrequency.java"


# instance fields
.field private automatically:Ljava/lang/Boolean;

.field private listFreqCursor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mode:I

.field private powerDownSave:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->powerDownSave:I

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->mode:I

    .line 22
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 8

    .line 32
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;-><init>()V

    if-eqz p1, :cond_6

    .line 34
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_3

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 37
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->automatically:Ljava/lang/Boolean;

    .line 38
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    array-length v5, p1

    if-ge v3, v5, :cond_6

    .line 39
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->powerDownSave:I

    goto :goto_1

    .line 42
    :cond_4
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->listFreqCursor:Ljava/util/List;

    if-nez v3, :cond_5

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->listFreqCursor:Ljava/util/List;

    :cond_5
    const/16 v3, 0x10

    .line 45
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_2

    .line 47
    iget-object v6, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->listFreqCursor:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 120
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;)V

    .line 129
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 130
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->setRtCode(B)V

    .line 131
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAutomatically()Ljava/lang/Boolean;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->automatically:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getListFreqCursor()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->listFreqCursor:Ljava/util/List;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->mode:I

    return v0
.end method

.method public getPowerDownSave()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->powerDownSave:I

    return v0
.end method

.method public pack()V
    .locals 5

    .line 95
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->automatically:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 97
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->listFreqCursor:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 99
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->listFreqCursor:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 100
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->listFreqCursor:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 101
    invoke-virtual {v0, v3, v4, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    .line 104
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->powerDownSave:I

    const v3, 0x7fffffff

    if-eq v3, v1, :cond_1

    const/4 v1, 0x2

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 106
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->powerDownSave:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 109
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->mode:I

    if-eq v3, v1, :cond_2

    const/16 v1, 0xfe

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 111
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->mode:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 114
    :cond_2
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->cData:[B

    .line 115
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->dataLen:I

    return-void
.end method

.method public setAutomatically(Ljava/lang/Boolean;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->automatically:Ljava/lang/Boolean;

    return-void
.end method

.method public setListFreqCursor(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->listFreqCursor:Ljava/util/List;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->mode:I

    return-void
.end method

.method public setPowerDownSave(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->powerDownSave:I

    return-void
.end method
