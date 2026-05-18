.class public Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "LogBaseTLInfo.java"


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

.field private tagType:I

.field private tid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method private tlByteToAscii([B)Ljava/lang/String;
    .locals 6

    .line 138
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 139
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    const/4 v2, 0x6

    div-int/2addr v1, v2

    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 140
    :goto_0
    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 141
    :goto_1
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x8

    if-ge v3, v4, :cond_3

    .line 142
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v4

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v4

    const/16 v5, 0x7c

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 146
    :cond_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getByteUnsigned(I)B

    move-result v4

    .line 147
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v5

    div-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, 0x20

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    add-int/lit8 v3, v3, 0x6

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v4, 0x4

    .line 143
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getByte(I)B

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 151
    :cond_3
    new-instance p1, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method


# virtual methods
.method public ackUnpack()V
    .locals 9

    .line 161
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->cData:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 167
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->tagType:I

    const/16 v2, 0x10

    .line 168
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 169
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->bEpc:[B

    .line 170
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->bEpc:[B

    .line 171
    array-length v4, v3

    if-lez v4, :cond_0

    .line 172
    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->epc:Ljava/lang/String;

    .line 173
    iget v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->tagType:I

    if-nez v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->bEpc:[B

    invoke-direct {p0, v3}, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->tlByteToAscii([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->tid:Ljava/lang/String;

    .line 177
    :cond_0
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->antId:I

    .line 178
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v1

    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->cData:[B

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 179
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/16 v4, 0x14

    if-eq v3, v4, :cond_1

    const/16 v4, 0x20

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 197
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->phase:I

    goto :goto_0

    .line 194
    :pswitch_1
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->frequencyPoint:Ljava/lang/Long;

    goto :goto_0

    .line 188
    :pswitch_2
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    .line 189
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v3

    div-long/2addr v3, v7

    add-long/2addr v5, v3

    .line 191
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->dateFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/gg/reader/api/utils/DateTimeUtils;->fromUtcToTimeZone(JLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->strUtc:Ljava/lang/String;

    goto :goto_0

    .line 185
    :pswitch_3
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->childAntId:I

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->rssidBm:I

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->rssi:I

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

    .line 58
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->antId:I

    return v0
.end method

.method public getChildAntId()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->childAntId:I

    return v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getEpc()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->epc:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequencyPoint()Ljava/lang/Long;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->frequencyPoint:Ljava/lang/Long;

    return-object v0
.end method

.method public getPhase()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->phase:I

    return v0
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->rssi:I

    return v0
.end method

.method public getRssidBm()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->rssidBm:I

    return v0
.end method

.method public getStrUtc()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->strUtc:Ljava/lang/String;

    return-object v0
.end method

.method public getTagType()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->tagType:I

    return v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getbEpc()[B
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->bEpc:[B

    return-object v0
.end method

.method public pack()V
    .locals 0

    .line 156
    invoke-super {p0}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    return-void
.end method

.method public setAntId(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->antId:I

    return-void
.end method

.method public setChildAntId(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->childAntId:I

    return-void
.end method

.method public setDateFormat(Ljava/text/DateFormat;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public setEpc(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->epc:Ljava/lang/String;

    return-void
.end method

.method public setFrequencyPoint(Ljava/lang/Long;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->frequencyPoint:Ljava/lang/Long;

    return-void
.end method

.method public setPhase(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->phase:I

    return-void
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->rssi:I

    return-void
.end method

.method public setRssidBm(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->rssidBm:I

    return-void
.end method

.method public setStrUtc(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->strUtc:Ljava/lang/String;

    return-void
.end method

.method public setTagType(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->tagType:I

    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->tid:Ljava/lang/String;

    return-void
.end method

.method public setbEpc([B)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->bEpc:[B

    return-void
.end method

.method public toHexString()Ljava/lang/String;
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HexString{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->cData:[B

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

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogBaseTLInfo{tagType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->tagType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", epc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->epc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bEpc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->bEpc:[B

    .line 214
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->tid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", antId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->antId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rssi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->rssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", childAntId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->childAntId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", strUtc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->strUtc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", frequencyPoint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->frequencyPoint:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", phase="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->phase:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dateFormat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rssidBm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->rssidBm:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", readerSerialNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
