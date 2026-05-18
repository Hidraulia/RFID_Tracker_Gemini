.class public Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "LogBase6DInfo.java"


# instance fields
.field private antId:I

.field private bEpc:[B

.field private childAntId:I

.field private dateFormat:Ljava/text/DateFormat;

.field private epc:Ljava/lang/String;

.field private frequencyPoint:Ljava/lang/Long;

.field private phase:I

.field private readerSerialNumber:Ljava/lang/String;

.field private rssi:I

.field private rssidBm:I

.field private strUtc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 9

    .line 126
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->cData:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 128
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x10

    .line 129
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 130
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->bEpc:[B

    .line 131
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->bEpc:[B

    .line 132
    array-length v3, v2

    if-lez v3, :cond_0

    .line 133
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->epc:Ljava/lang/String;

    :cond_0
    const/16 v2, 0x8

    .line 135
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->antId:I

    .line 136
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->cData:[B

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 137
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/16 v4, 0x14

    if-eq v3, v4, :cond_1

    const/16 v4, 0x20

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->phase:I

    goto :goto_0

    .line 152
    :pswitch_1
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->frequencyPoint:Ljava/lang/Long;

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    .line 147
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v3

    div-long/2addr v3, v7

    add-long/2addr v5, v3

    .line 149
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->dateFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/gg/reader/api/utils/DateTimeUtils;->fromUtcToTimeZone(JLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->strUtc:Ljava/lang/String;

    goto :goto_0

    .line 143
    :pswitch_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->childAntId:I

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->rssidBm:I

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->rssi:I

    goto :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAntId()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->antId:I

    return v0
.end method

.method public getChildAntId()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->childAntId:I

    return v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getEpc()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->epc:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequencyPoint()Ljava/lang/Long;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->frequencyPoint:Ljava/lang/Long;

    return-object v0
.end method

.method public getPhase()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->phase:I

    return v0
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->rssi:I

    return v0
.end method

.method public getRssidBm()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->rssidBm:I

    return v0
.end method

.method public getStrUtc()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->strUtc:Ljava/lang/String;

    return-object v0
.end method

.method public getbEpc()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->bEpc:[B

    return-object v0
.end method

.method public pack()V
    .locals 0

    .line 121
    invoke-super {p0}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    return-void
.end method

.method public setAntId(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->antId:I

    return-void
.end method

.method public setChildAntId(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->childAntId:I

    return-void
.end method

.method public setDateFormat(Ljava/text/DateFormat;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public setEpc(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->epc:Ljava/lang/String;

    return-void
.end method

.method public setFrequencyPoint(Ljava/lang/Long;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->frequencyPoint:Ljava/lang/Long;

    return-void
.end method

.method public setPhase(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->phase:I

    return-void
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->rssi:I

    return-void
.end method

.method public setRssidBm(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->rssidBm:I

    return-void
.end method

.method public setStrUtc(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->strUtc:Ljava/lang/String;

    return-void
.end method

.method public setbEpc([B)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->bEpc:[B

    return-void
.end method

.method public toHexString()Ljava/lang/String;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HexString{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->cData:[B

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogBase6DInfo{epc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->epc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bEpc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->bEpc:[B

    .line 171
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", antId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->antId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rssi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->rssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", childAntId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->childAntId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", strUtc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->strUtc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", frequencyPoint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->frequencyPoint:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", phase="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->phase:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dateFormat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rssidBm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->rssidBm:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", readerSerialNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
