.class public Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseGetBaseband.java"


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

.field private qValue:I

.field private session:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 11
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    .line 12
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    .line 13
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    .line 14
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->Tari:I

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->DR:I

    .line 20
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->RTcal:I

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->TRcal:I

    .line 24
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->PW:I

    .line 26
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->modulationDepth:I

    .line 28
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->Miller:I

    .line 32
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 33
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0xc

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;-><init>()V

    if-eqz p1, :cond_1

    .line 44
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x8

    .line 47
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    .line 48
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    .line 49
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    .line 50
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 6

    .line 153
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 154
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    const/16 v2, 0x8

    const v3, 0x7fffffff

    if-eq v3, v1, :cond_0

    .line 155
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 157
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    if-eq v3, v1, :cond_1

    .line 158
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 160
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    if-eq v3, v1, :cond_2

    .line 161
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 163
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I

    if-eq v3, v1, :cond_3

    .line 164
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 166
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->cData:[B

    .line 167
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->cData:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 176
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 177
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    .line 178
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    .line 179
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    .line 180
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I

    .line 181
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->cData:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 182
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 203
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->Miller:I

    goto :goto_0

    .line 200
    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->modulationDepth:I

    goto :goto_0

    .line 197
    :pswitch_2
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->PW:I

    goto :goto_0

    .line 194
    :pswitch_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->TRcal:I

    goto :goto_0

    .line 191
    :pswitch_4
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->RTcal:I

    goto :goto_0

    .line 188
    :pswitch_5
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->DR:I

    goto :goto_0

    .line 185
    :pswitch_6
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->Tari:I

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->setRtCode(B)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBaseSpeed()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    return v0
.end method

.method public getDR()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->DR:I

    return v0
.end method

.method public getInventoryFlag()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I

    return v0
.end method

.method public getMiller()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->Miller:I

    return v0
.end method

.method public getModulationDepth()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->modulationDepth:I

    return v0
.end method

.method public getPW()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->PW:I

    return v0
.end method

.method public getRTcal()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->RTcal:I

    return v0
.end method

.method public getSession()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    return v0
.end method

.method public getTRcal()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->TRcal:I

    return v0
.end method

.method public getTari()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->Tari:I

    return v0
.end method

.method public getqValue()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    return v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setBaseSpeed(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    return-void
.end method

.method public setDR(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->DR:I

    return-void
.end method

.method public setInventoryFlag(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I

    return-void
.end method

.method public setMiller(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->Miller:I

    return-void
.end method

.method public setModulationDepth(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->modulationDepth:I

    return-void
.end method

.method public setPW(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->PW:I

    return-void
.end method

.method public setRTcal(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->RTcal:I

    return-void
.end method

.method public setSession(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    return-void
.end method

.method public setTRcal(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->TRcal:I

    return-void
.end method

.method public setTari(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->Tari:I

    return-void
.end method

.method public setqValue(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseGetBaseband{baseSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", qValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inventoryFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Tari="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->Tari:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->DR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RTcal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->RTcal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TRcal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->TRcal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", PW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->PW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modulationDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->modulationDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Miller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->Miller:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
