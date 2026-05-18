.class public Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseInventoryEpc.java"


# instance fields
.field private EPC_2V2_Authenticate:I

.field private antennaEnable:Ljava/lang/Long;

.field private ctesius:I

.field private emSensor:I

.field private enableMultiFilter:I

.field private filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

.field private hexPassword:Ljava/lang/String;

.field private inventoryMode:I

.field private monzaQtPeek:I

.field private paramFastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

.field private quanray:I

.field private quanray2:I

.field private readEpc:Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

.field private readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

.field private readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

.field private readTs:I

.field private readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

.field private rfmicron:I

.field private seed:I

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 23
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->monzaQtPeek:I

    .line 24
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->rfmicron:I

    .line 25
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->emSensor:I

    .line 28
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->ctesius:I

    .line 32
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->timeout:I

    .line 33
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->EPC_2V2_Authenticate:I

    .line 34
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTs:I

    .line 36
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->enableMultiFilter:I

    .line 38
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray2:I

    .line 43
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 44
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x10

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6

    .line 53
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;-><init>()V

    if-eqz p1, :cond_4

    .line 55
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 56
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x20

    .line 58
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->antennaEnable:Ljava/lang/Long;

    const/16 v2, 0x8

    .line 59
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->inventoryMode:I

    .line 60
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 61
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_3

    const/16 v4, 0x13

    if-eq v3, v4, :cond_2

    if-eq v3, v1, :cond_1

    const/4 v4, 0x2

    const/4 v5, 0x3

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->enableMultiFilter:I

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->timeout:I

    goto :goto_0

    .line 119
    :pswitch_2
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray:I

    goto :goto_0

    :pswitch_3
    new-array v3, v4, [B

    .line 106
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 107
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-direct {v4, v3}, Lcom/gg/reader/api/protocol/gx/ParamFastId;-><init>([B)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->paramFastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    goto :goto_0

    :pswitch_4
    new-array v3, v5, [B

    .line 101
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 102
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    invoke-direct {v4, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;-><init>([B)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readEpc:Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    goto :goto_0

    .line 97
    :pswitch_5
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->emSensor:I

    goto :goto_0

    .line 94
    :pswitch_6
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->rfmicron:I

    goto :goto_0

    .line 91
    :pswitch_7
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->monzaQtPeek:I

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x4

    new-array v3, v3, [B

    .line 87
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 88
    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->hexPassword:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    new-array v3, v5, [B

    .line 82
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 83
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    invoke-direct {v4, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;-><init>([B)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    goto :goto_0

    :pswitch_a
    new-array v3, v5, [B

    .line 77
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 78
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-direct {v4, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;-><init>([B)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    goto/16 :goto_0

    :pswitch_b
    new-array v3, v4, [B

    .line 72
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 73
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {v4, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>([B)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    goto/16 :goto_0

    :pswitch_c
    const/16 v3, 0x10

    .line 65
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 66
    new-array v3, v3, [B

    .line 67
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 68
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v4, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>([B)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    goto/16 :goto_0

    .line 128
    :cond_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->EPC_2V2_Authenticate:I

    goto/16 :goto_0

    .line 113
    :cond_2
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->seed:I

    goto/16 :goto_0

    .line 110
    :cond_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->ctesius:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 429
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;)V

    .line 440
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 441
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setRtCode(B)V

    .line 442
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getCtesius()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->ctesius:I

    return v0
.end method

.method public getEPC_2V2_Authenticate()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->EPC_2V2_Authenticate:I

    return v0
.end method

.method public getEmSensor()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->emSensor:I

    return v0
.end method

.method public getEnableMultiFilter()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->enableMultiFilter:I

    return v0
.end method

.method public getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-object v0
.end method

.method public getHexPassword()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->hexPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getInventoryMode()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->inventoryMode:I

    return v0
.end method

.method public getMonzaQtPeek()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->monzaQtPeek:I

    return v0
.end method

.method public getParamFastId()Lcom/gg/reader/api/protocol/gx/ParamFastId;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->paramFastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    return-object v0
.end method

.method public getQuanray()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray:I

    return v0
.end method

.method public getQuanray2()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray2:I

    return v0
.end method

.method public getReadEpc()Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readEpc:Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    return-object v0
.end method

.method public getReadReserved()Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    return-object v0
.end method

.method public getReadTid()Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    return-object v0
.end method

.method public getReadTs()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTs:I

    return v0
.end method

.method public getReadUserdata()Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    return-object v0
.end method

.method public getRfmicron()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->rfmicron:I

    return v0
.end method

.method public getSeed()I
    .locals 1

    .line 233
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->seed:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->timeout:I

    return v0
.end method

.method public pack()V
    .locals 7

    .line 308
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 310
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->inventoryMode:I

    int-to-long v1, v1

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 312
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 313
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 314
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->toBytes()[B

    move-result-object v1

    .line 315
    array-length v2, v1

    const/16 v5, 0x10

    invoke-virtual {v0, v2, v5}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 316
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 320
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 321
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->toBytes()[B

    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 326
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 327
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->toBytes()[B

    move-result-object v1

    .line 328
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 331
    :cond_2
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 332
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 333
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;->toBytes()[B

    move-result-object v1

    .line 334
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 337
    :cond_3
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    .line 338
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 339
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 343
    :cond_4
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->monzaQtPeek:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_5

    const/4 v1, 0x6

    .line 344
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 345
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->monzaQtPeek:I

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 348
    :cond_5
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->rfmicron:I

    if-eq v1, v2, :cond_6

    const/4 v1, 0x7

    .line 349
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 350
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->rfmicron:I

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 353
    :cond_6
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->emSensor:I

    if-eq v1, v2, :cond_7

    .line 354
    invoke-virtual {v0, v4, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 355
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->emSensor:I

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 358
    :cond_7
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readEpc:Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 359
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 360
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readEpc:Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;->toBytes()[B

    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 364
    :cond_8
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->paramFastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    .line 365
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 366
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->paramFastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamFastId;->toBytes()[B

    move-result-object v1

    .line 367
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 370
    :cond_9
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->ctesius:I

    if-eq v1, v2, :cond_a

    const/16 v1, 0x12

    .line 371
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 372
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->ctesius:I

    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 375
    :cond_a
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->seed:I

    if-eqz v1, :cond_b

    const/16 v1, 0x13

    .line 376
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 377
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->seed:I

    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 388
    :cond_b
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray:I

    if-eqz v1, :cond_c

    const/16 v1, 0x16

    .line 389
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 390
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray:I

    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 393
    :cond_c
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->timeout:I

    if-eq v1, v2, :cond_d

    const/16 v1, 0x17

    .line 394
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 395
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->timeout:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 398
    :cond_d
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->enableMultiFilter:I

    if-eq v1, v2, :cond_e

    const/16 v1, 0x18

    .line 399
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 400
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->enableMultiFilter:I

    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 403
    :cond_e
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->EPC_2V2_Authenticate:I

    if-eq v1, v2, :cond_f

    .line 404
    invoke-virtual {v0, v3, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 405
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->EPC_2V2_Authenticate:I

    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 408
    :cond_f
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTs:I

    if-eq v1, v2, :cond_10

    const/16 v1, 0x23

    .line 409
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 410
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTs:I

    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 413
    :cond_10
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray2:I

    if-eq v1, v2, :cond_11

    const/16 v1, 0x25

    .line 414
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 415
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray2:I

    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 418
    :cond_11
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->cData:[B

    .line 419
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setCtesius(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->ctesius:I

    return-void
.end method

.method public setEPC_2V2_Authenticate(I)V
    .locals 0

    .line 278
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->EPC_2V2_Authenticate:I

    return-void
.end method

.method public setEmSensor(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->emSensor:I

    return-void
.end method

.method public setEnableMultiFilter(I)V
    .locals 0

    .line 294
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->enableMultiFilter:I

    return-void
.end method

.method public setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-void
.end method

.method public setHexPassword(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->hexPassword:Ljava/lang/String;

    return-void
.end method

.method public setInventoryMode(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->inventoryMode:I

    return-void
.end method

.method public setMonzaQtPeek(I)V
    .locals 0

    .line 197
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->monzaQtPeek:I

    return-void
.end method

.method public setParamFastId(Lcom/gg/reader/api/protocol/gx/ParamFastId;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->paramFastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    return-void
.end method

.method public setQuanray(I)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray:I

    return-void
.end method

.method public setQuanray2(I)V
    .locals 0

    .line 302
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray2:I

    return-void
.end method

.method public setReadEpc(Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readEpc:Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    return-void
.end method

.method public setReadReserved(Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    return-void
.end method

.method public setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    return-void
.end method

.method public setReadTs(I)V
    .locals 0

    .line 286
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTs:I

    return-void
.end method

.method public setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    return-void
.end method

.method public setRfmicron(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->rfmicron:I

    return-void
.end method

.method public setSeed(I)V
    .locals 0

    .line 237
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->seed:I

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->timeout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseInventoryEpc{antennaEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inventoryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->inventoryMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readTid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readUserdata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readReserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hexPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->hexPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", monzaQtPeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->monzaQtPeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rfmicron="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->rfmicron:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", emSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->emSensor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", readEpc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readEpc:Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paramFastId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->paramFastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ctesius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->ctesius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->seed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quanray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
