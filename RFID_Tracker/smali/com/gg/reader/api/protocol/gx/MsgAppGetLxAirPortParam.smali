.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetLxAirPortParam.java"


# instance fields
.field private chargeState:I

.field private electricQuantity:I

.field private voltage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 14
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 15
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x57

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    .line 18
    new-instance v0, Lcom/gg/reader/api/dal/GClient;

    invoke-direct {v0}, Lcom/gg/reader/api/dal/GClient;-><init>()V

    .line 20
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;-><init>()V

    .line 21
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 22
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->getRtCode()B

    move-result v0

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;-><init>()V

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

    const/16 v0, 0x10

    .line 37
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->voltage:I

    const/16 v0, 0x8

    .line 38
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->electricQuantity:I

    .line 39
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->chargeState:I
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

    .line 78
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 79
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->voltage:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 80
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->electricQuantity:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 81
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->chargeState:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 82
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->cData:[B

    .line 83
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x10

    .line 93
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->voltage:I

    const/16 v2, 0x8

    .line 94
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->electricQuantity:I

    .line 95
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->chargeState:I

    .line 97
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->setRtCode(B)V

    :cond_0
    return-void
.end method

.method public getChargeState()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->chargeState:I

    return v0
.end method

.method public getElectricQuantity()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->electricQuantity:I

    return v0
.end method

.method public getVoltage()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->voltage:I

    return v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setChargeState(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->chargeState:I

    return-void
.end method

.method public setElectricQuantity(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->electricQuantity:I

    return-void
.end method

.method public setVoltage(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->voltage:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgAppGetLxAirPortParam{voltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->voltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", electricQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->electricQuantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chargeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetLxAirPortParam;->chargeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
