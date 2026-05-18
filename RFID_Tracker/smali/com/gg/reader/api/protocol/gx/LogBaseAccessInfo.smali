.class public Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "LogBaseAccessInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;
    }
.end annotation


# instance fields
.field private antId:I

.field private bEpc:[B

.field private epc:Ljava/lang/String;

.field private frequencyPoint:Ljava/lang/Long;

.field private operateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;",
            ">;"
        }
    .end annotation
.end field

.field private pc:I

.field private rssi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 8

    .line 76
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->cData:[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_6

    .line 77
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x10

    .line 79
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 80
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->bEpc:[B

    .line 81
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->bEpc:[B

    .line 82
    array-length v3, v2

    if-lez v3, :cond_0

    .line 83
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->epc:Ljava/lang/String;

    .line 85
    :cond_0
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->pc:I

    const/16 v2, 0x8

    .line 86
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->antId:I

    const/4 v3, 0x3

    .line 88
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v4

    div-int/2addr v4, v2

    iget-object v5, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->cData:[B

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 89
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    if-ne v4, v3, :cond_1

    .line 99
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    .line 100
    iget-object v6, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->operateList:Ljava/util/List;

    if-nez v6, :cond_2

    .line 101
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->operateList:Ljava/util/List;

    .line 103
    :cond_2
    new-instance v6, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;

    invoke-direct {v6}, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;-><init>()V

    .line 104
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;->setResult(I)V

    if-le v4, v5, :cond_3

    add-int/lit8 v4, v4, -0x1

    .line 106
    new-array v4, v4, [B

    .line 107
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 108
    invoke-static {v4}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;->setHexReadData(Ljava/lang/String;)V

    .line 110
    :cond_3
    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->operateList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/16 v4, 0x20

    .line 95
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->frequencyPoint:Ljava/lang/Long;

    goto :goto_0

    .line 92
    :cond_5
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    iput v4, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->rssi:I

    goto :goto_0

    :cond_6
    return-void
.end method

.method public getAntId()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->antId:I

    return v0
.end method

.method public getEpc()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->epc:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequencyPoint()Ljava/lang/Long;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->frequencyPoint:Ljava/lang/Long;

    return-object v0
.end method

.method public getOperateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->operateList:Ljava/util/List;

    return-object v0
.end method

.method public getPc()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->pc:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->rssi:I

    return v0
.end method

.method public getbEpc()[B
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->bEpc:[B

    return-object v0
.end method

.method public setAntId(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->antId:I

    return-void
.end method

.method public setEpc(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->epc:Ljava/lang/String;

    return-void
.end method

.method public setFrequencyPoint(Ljava/lang/Long;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->frequencyPoint:Ljava/lang/Long;

    return-void
.end method

.method public setOperateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->operateList:Ljava/util/List;

    return-void
.end method

.method public setPc(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->pc:I

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->rssi:I

    return-void
.end method

.method public setbEpc([B)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->bEpc:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogBaseAccessInfo{epc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->epc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", pc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->pc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", antId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->antId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frequencyPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->frequencyPoint:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", operateList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->operateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
