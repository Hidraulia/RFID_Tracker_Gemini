.class public Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "LogBaseGbSafeParam.java"


# instance fields
.field private antId:I

.field private encipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

.field private random:Ljava/lang/String;

.field private readerSerialNumber:Ljava/lang/String;

.field private safeParam:Ljava/lang/String;

.field private tagIdentifier:Ljava/lang/String;

.field private tidAndRT32:Ljava/lang/String;

.field private token2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->cData:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 97
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->antId:I

    .line 98
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    div-int/2addr v2, v1

    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->cData:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 99
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    const/16 v3, 0x10

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v2, v3, [B

    .line 131
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 132
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->tidAndRT32:Ljava/lang/String;

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 123
    new-array v3, v2, [B

    if-lez v2, :cond_0

    .line 125
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 126
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    invoke-direct {v2, v3}, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;-><init>([B)V

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->encipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    goto :goto_0

    :pswitch_2
    new-array v2, v1, [B

    .line 118
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 119
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->token2:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 113
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 114
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->random:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    new-array v2, v1, [B

    .line 108
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 109
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->tagIdentifier:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const/4 v2, 0x6

    new-array v2, v2, [B

    .line 103
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 104
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->safeParam:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAntId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->antId:I

    return v0
.end method

.method public getEncipheredData()Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->encipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    return-object v0
.end method

.method public getRandom()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->random:Ljava/lang/String;

    return-object v0
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSafeParam()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->safeParam:Ljava/lang/String;

    return-object v0
.end method

.method public getTagIdentifier()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->tagIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getTidAndRT32()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->tidAndRT32:Ljava/lang/String;

    return-object v0
.end method

.method public getToken2()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->token2:Ljava/lang/String;

    return-object v0
.end method

.method public setAntId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->antId:I

    return-void
.end method

.method public setEncipheredData(Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->encipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    return-void
.end method

.method public setRandom(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->random:Ljava/lang/String;

    return-void
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setSafeParam(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->safeParam:Ljava/lang/String;

    return-void
.end method

.method public setTagIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->tagIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setTidAndRT32(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->tidAndRT32:Ljava/lang/String;

    return-void
.end method

.method public setToken2(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->token2:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogBaseGbSafeParam{antId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->antId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", safeParam=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->safeParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tagIdentifier=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->tagIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", random=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->random:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", token2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->token2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", encipheredData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->encipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", readerSerialNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tidAndRT32=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->tidAndRT32:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
