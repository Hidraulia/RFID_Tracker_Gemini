.class public Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseInventoryHybrid.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private hybrid6bParam:Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;

.field private hybridEpcParam:Lcom/gg/reader/api/protocol/gx/HybridEpcParam;

.field private hybridGJbParam:Lcom/gg/reader/api/protocol/gx/HybridGJbParam;

.field private hybridGbParam:Lcom/gg/reader/api/protocol/gx/HybridGbParam;

.field private inventoryMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 21
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, -0x60

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;-><init>()V

    if-eqz p1, :cond_1

    .line 34
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x20

    .line 37
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->antennaEnable:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 175
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;)V

    .line 181
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 182
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->setRtCode(B)V

    .line 183
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getHybrid6bParam()Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybrid6bParam:Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;

    return-object v0
.end method

.method public getHybridEpcParam()Lcom/gg/reader/api/protocol/gx/HybridEpcParam;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybridEpcParam:Lcom/gg/reader/api/protocol/gx/HybridEpcParam;

    return-object v0
.end method

.method public getHybridGJbParam()Lcom/gg/reader/api/protocol/gx/HybridGJbParam;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybridGJbParam:Lcom/gg/reader/api/protocol/gx/HybridGJbParam;

    return-object v0
.end method

.method public getHybridGbParam()Lcom/gg/reader/api/protocol/gx/HybridGbParam;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybridGbParam:Lcom/gg/reader/api/protocol/gx/HybridGbParam;

    return-object v0
.end method

.method public getInventoryMode()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->inventoryMode:I

    return v0
.end method

.method public pack()V
    .locals 6

    .line 114
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 116
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->inventoryMode:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 120
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybridEpcParam:Lcom/gg/reader/api/protocol/gx/HybridEpcParam;

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 122
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybridEpcParam:Lcom/gg/reader/api/protocol/gx/HybridEpcParam;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->toBytes()[B

    move-result-object v1

    .line 123
    array-length v5, v1

    if-eqz v5, :cond_0

    .line 124
    array-length v5, v1

    invoke-virtual {v0, v5, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 125
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0, v3, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 131
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybrid6bParam:Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 133
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybrid6bParam:Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;->toBytes()[B

    move-result-object v1

    .line 134
    array-length v5, v1

    if-eqz v5, :cond_2

    .line 135
    array-length v5, v1

    invoke-virtual {v0, v5, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 136
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {v0, v3, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 142
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybridGbParam:Lcom/gg/reader/api/protocol/gx/HybridGbParam;

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 144
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybridGbParam:Lcom/gg/reader/api/protocol/gx/HybridGbParam;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->toBytes()[B

    move-result-object v1

    .line 145
    array-length v5, v1

    if-eqz v5, :cond_4

    .line 146
    array-length v5, v1

    invoke-virtual {v0, v5, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 147
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_2

    .line 149
    :cond_4
    invoke-virtual {v0, v3, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 153
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybridGJbParam:Lcom/gg/reader/api/protocol/gx/HybridGJbParam;

    if-eqz v1, :cond_7

    const/4 v1, 0x4

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 155
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybridGJbParam:Lcom/gg/reader/api/protocol/gx/HybridGJbParam;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/HybridGJbParam;->toBytes()[B

    move-result-object v1

    .line 156
    array-length v2, v1

    if-eqz v2, :cond_6

    .line 157
    array-length v2, v1

    invoke-virtual {v0, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 158
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_3

    .line 160
    :cond_6
    invoke-virtual {v0, v3, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 164
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->cData:[B

    .line 165
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setHybrid6bParam(Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybrid6bParam:Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;

    return-void
.end method

.method public setHybridEpcParam(Lcom/gg/reader/api/protocol/gx/HybridEpcParam;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybridEpcParam:Lcom/gg/reader/api/protocol/gx/HybridEpcParam;

    return-void
.end method

.method public setHybridGJbParam(Lcom/gg/reader/api/protocol/gx/HybridGJbParam;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybridGJbParam:Lcom/gg/reader/api/protocol/gx/HybridGJbParam;

    return-void
.end method

.method public setHybridGbParam(Lcom/gg/reader/api/protocol/gx/HybridGbParam;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->hybridGbParam:Lcom/gg/reader/api/protocol/gx/HybridGbParam;

    return-void
.end method

.method public setInventoryMode(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->inventoryMode:I

    return-void
.end method
