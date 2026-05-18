.class public Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseInventoryAndAccess.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

.field private hexPassword:Ljava/lang/String;

.field private inventoryMode:I

.field private operateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->timeout:I

    .line 21
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, -0x5d

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 124
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;)V

    .line 135
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->setRtCode(B)V

    .line 137
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-object v0
.end method

.method public getHexPassword()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->hexPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getInventoryMode()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->inventoryMode:I

    return v0
.end method

.method public getOperateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->operateList:Ljava/util/List;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->timeout:I

    return v0
.end method

.method public pack()V
    .locals 7

    .line 81
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 83
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->inventoryMode:I

    int-to-long v1, v1

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 85
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 87
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->toBytes()[B

    move-result-object v1

    .line 88
    array-length v5, v1

    invoke-virtual {v0, v5, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 89
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 93
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 94
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->operateList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->operateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 99
    :goto_0
    iget-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->operateList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    add-int/lit8 v5, v1, 0x3

    .line 100
    invoke-virtual {v0, v5, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 101
    iget-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->operateList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;

    invoke-virtual {v5}, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->toBytes()[B

    move-result-object v5

    .line 102
    array-length v6, v5

    invoke-virtual {v0, v6, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 103
    invoke-virtual {v0, v5}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->timeout:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_3

    const/16 v1, 0x17

    .line 108
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 109
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->timeout:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 113
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->cData:[B

    .line 114
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-void
.end method

.method public setHexPassword(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->hexPassword:Ljava/lang/String;

    return-void
.end method

.method public setInventoryMode(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->inventoryMode:I

    return-void
.end method

.method public setOperateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->operateList:Ljava/util/List;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->timeout:I

    return-void
.end method
