.class public Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseSetBaseband.java"


# instance fields
.field private DR:I

.field private Miller:I

.field private PW:I

.field private RTcal:I

.field private TRcal:I

.field private Tari:I

.field private baseSpeed:I

.field private inventoryFlag:I

.field private modulationDepth:I

.field private powerDownSave:I

.field private qValue:I

.field private session:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 13
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->baseSpeed:I

    .line 14
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->qValue:I

    .line 15
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->session:I

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->inventoryFlag:I

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->Tari:I

    .line 19
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->DR:I

    .line 21
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->RTcal:I

    .line 23
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->TRcal:I

    .line 25
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->PW:I

    .line 27
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->modulationDepth:I

    .line 29
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->Miller:I

    .line 31
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->powerDownSave:I

    .line 36
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 37
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0xb

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 46
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;-><init>()V

    if-eqz p1, :cond_5

    .line 48
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 51
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v1

    const/16 v2, 0x8

    div-int/2addr v1, v2

    array-length v3, p1

    if-ge v1, v3, :cond_5

    .line 52
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->inventoryFlag:I

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->session:I

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->qValue:I

    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->baseSpeed:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 237
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;)V

    .line 248
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 249
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setRtCode(B)V

    .line 250
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getBaseSpeed()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->baseSpeed:I

    return v0
.end method

.method public getDR()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->DR:I

    return v0
.end method

.method public getInventoryFlag()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->inventoryFlag:I

    return v0
.end method

.method public getMiller()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->Miller:I

    return v0
.end method

.method public getModulationDepth()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->modulationDepth:I

    return v0
.end method

.method public getPW()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->PW:I

    return v0
.end method

.method public getPowerDownSave()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->powerDownSave:I

    return v0
.end method

.method public getRTcal()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->RTcal:I

    return v0
.end method

.method public getSession()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->session:I

    return v0
.end method

.method public getTRcal()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->TRcal:I

    return v0
.end method

.method public getTari()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->Tari:I

    return v0
.end method

.method public getqValue()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->qValue:I

    return v0
.end method

.method public pack()V
    .locals 6

    .line 172
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 173
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->baseSpeed:I

    const v2, 0x7fffffff

    const/16 v3, 0x8

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    .line 174
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 175
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->baseSpeed:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 177
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->qValue:I

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    .line 178
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 179
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->qValue:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 181
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->session:I

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    .line 182
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 183
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->session:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 185
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->inventoryFlag:I

    if-eq v2, v1, :cond_3

    const/4 v1, 0x4

    .line 186
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 187
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->inventoryFlag:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 190
    :cond_3
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->Tari:I

    if-eq v2, v1, :cond_4

    const/4 v1, 0x5

    .line 191
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 192
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->Tari:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 195
    :cond_4
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->DR:I

    if-eq v2, v1, :cond_5

    const/4 v1, 0x6

    .line 196
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 197
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->DR:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 200
    :cond_5
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->RTcal:I

    if-eq v2, v1, :cond_6

    const/4 v1, 0x7

    .line 201
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 202
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->RTcal:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 205
    :cond_6
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->TRcal:I

    if-eq v2, v1, :cond_7

    .line 206
    invoke-virtual {v0, v3, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 207
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->TRcal:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 210
    :cond_7
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->PW:I

    if-eq v2, v1, :cond_8

    const/16 v1, 0x9

    .line 211
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 212
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->PW:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 215
    :cond_8
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->modulationDepth:I

    if-eq v2, v1, :cond_9

    const/16 v1, 0xa

    .line 216
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 217
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->modulationDepth:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 220
    :cond_9
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->Miller:I

    if-eq v2, v1, :cond_a

    const/16 v1, 0xb

    .line 221
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 222
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->Miller:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 225
    :cond_a
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->powerDownSave:I

    if-eq v2, v1, :cond_b

    const/16 v1, 0xff

    .line 226
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 227
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->powerDownSave:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 231
    :cond_b
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->cData:[B

    .line 232
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->dataLen:I

    return-void
.end method

.method public setBaseSpeed(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->baseSpeed:I

    return-void
.end method

.method public setDR(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->DR:I

    return-void
.end method

.method public setInventoryFlag(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->inventoryFlag:I

    return-void
.end method

.method public setMiller(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->Miller:I

    return-void
.end method

.method public setModulationDepth(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->modulationDepth:I

    return-void
.end method

.method public setPW(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->PW:I

    return-void
.end method

.method public setPowerDownSave(I)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->powerDownSave:I

    return-void
.end method

.method public setRTcal(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->RTcal:I

    return-void
.end method

.method public setSession(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->session:I

    return-void
.end method

.method public setTRcal(I)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->TRcal:I

    return-void
.end method

.method public setTari(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->Tari:I

    return-void
.end method

.method public setqValue(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->qValue:I

    return-void
.end method
