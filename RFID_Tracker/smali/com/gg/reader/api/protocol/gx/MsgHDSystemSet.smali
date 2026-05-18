.class public Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgHDSystemSet.java"


# instance fields
.field private autoShutdownTime:I

.field private batteryLevel:I

.field private bluetoothName:Ljava/lang/String;

.field private buzzerSwitch:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->autoShutdownTime:I

    .line 15
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->buzzerSwitch:I

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->batteryLevel:I

    .line 22
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "1111"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    .line 26
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 6

    .line 93
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;)V

    .line 101
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->cData:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->cData:[B

    invoke-static {v1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 103
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v3, 0x8

    .line 104
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v0, 0x4

    if-eq v4, v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0, v2}, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->setRtCode(B)V

    .line 117
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->batteryLevel:I

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    int-to-byte v1, v1

    .line 110
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->setRtCode(B)V

    .line 111
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->setRtMsg(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAutoShutdownTime()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->autoShutdownTime:I

    return v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->batteryLevel:I

    return v0
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->bluetoothName:Ljava/lang/String;

    return-object v0
.end method

.method public getBuzzerSwitch()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->buzzerSwitch:I

    return v0
.end method

.method public pack()V
    .locals 4

    .line 65
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 66
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->autoShutdownTime:I

    const/4 v2, -0x1

    const/16 v3, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 68
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->autoShutdownTime:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 71
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->buzzerSwitch:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    .line 72
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 73
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->buzzerSwitch:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->bluetoothName:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 77
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 78
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->bluetoothName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 79
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->bluetoothName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 82
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->batteryLevel:I

    if-eq v1, v2, :cond_3

    const/4 v1, 0x4

    .line 83
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 84
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->batteryLevel:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 87
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->cData:[B

    .line 88
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->dataLen:I

    return-void
.end method

.method public setAutoShutdownTime(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->autoShutdownTime:I

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->batteryLevel:I

    return-void
.end method

.method public setBluetoothName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->bluetoothName:Ljava/lang/String;

    return-void
.end method

.method public setBuzzerSwitch(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgHDSystemSet;->buzzerSwitch:I

    return-void
.end method
