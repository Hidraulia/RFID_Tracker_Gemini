.class public Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppSetGpiTrigger.java"


# instance fields
.field private antiShakeTime:I

.field private gpiPort:I

.field private hexTriggerCommand:Ljava/lang/String;

.field private levelUploadSwitch:I

.field private overDelayTime:I

.field private triggerCommand:[B

.field private triggerOver:I

.field private triggerStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 20
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->overDelayTime:I

    .line 21
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->levelUploadSwitch:I

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->antiShakeTime:I

    .line 26
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 27
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0xb

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 36
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;-><init>()V

    if-eqz p1, :cond_4

    .line 38
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 41
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->gpiPort:I

    .line 42
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->triggerStart:I

    const/16 v2, 0x10

    .line 44
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 46
    new-array v3, v3, [B

    .line 47
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->triggerCommand:[B

    .line 48
    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->hexTriggerCommand:Ljava/lang/String;

    .line 50
    :cond_1
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->triggerOver:I

    .line 51
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v1

    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 52
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->levelUploadSwitch:I

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->overDelayTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 168
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;)V

    .line 175
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 176
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->setRtCode(B)V

    .line 177
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntiShakeTime()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->antiShakeTime:I

    return v0
.end method

.method public getGpiPort()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->gpiPort:I

    return v0
.end method

.method public getHexTriggerCommand()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->hexTriggerCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelUploadSwitch()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->levelUploadSwitch:I

    return v0
.end method

.method public getOverDelayTime()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->overDelayTime:I

    return v0
.end method

.method public getTriggerCommand()[B
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->triggerCommand:[B

    return-object v0
.end method

.method public getTriggerOver()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->triggerOver:I

    return v0
.end method

.method public getTriggerStart()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->triggerStart:I

    return v0
.end method

.method public pack()V
    .locals 7

    .line 137
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 138
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->gpiPort:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 139
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->triggerStart:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 140
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->triggerCommand:[B

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    array-length v4, v1

    if-ltz v4, :cond_0

    .line 141
    array-length v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 142
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->triggerCommand:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 147
    :goto_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->triggerOver:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 148
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->overDelayTime:I

    const v4, 0x7fffffff

    if-eq v4, v1, :cond_1

    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 150
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->overDelayTime:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 152
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->levelUploadSwitch:I

    if-eq v4, v1, :cond_2

    const/4 v1, 0x2

    .line 153
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 154
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->levelUploadSwitch:I

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 157
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->antiShakeTime:I

    if-eq v4, v1, :cond_3

    const/4 v1, 0x3

    .line 158
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 159
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->antiShakeTime:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 162
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->cData:[B

    .line 163
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->dataLen:I

    return-void
.end method

.method public setAntiShakeTime(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->antiShakeTime:I

    return-void
.end method

.method public setGpiPort(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->gpiPort:I

    return-void
.end method

.method public setHexTriggerCommand(Ljava/lang/String;)V
    .locals 1

    .line 121
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->hexTriggerCommand:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->triggerCommand:[B

    :cond_0
    return-void
.end method

.method public setLevelUploadSwitch(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->levelUploadSwitch:I

    return-void
.end method

.method public setOverDelayTime(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->overDelayTime:I

    return-void
.end method

.method public setTriggerCommand([B)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->triggerCommand:[B

    return-void
.end method

.method public setTriggerOver(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->triggerOver:I

    return-void
.end method

.method public setTriggerStart(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetGpiTrigger;->triggerStart:I

    return-void
.end method
