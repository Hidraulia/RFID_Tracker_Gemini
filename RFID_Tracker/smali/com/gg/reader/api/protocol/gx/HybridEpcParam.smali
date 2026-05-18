.class public Lcom/gg/reader/api/protocol/gx/HybridEpcParam;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "HybridEpcParam.java"


# instance fields
.field private filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

.field private hexPassword:Ljava/lang/String;

.field private readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

.field private readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

.field private readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-object v0
.end method

.method public getHexPassword()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->hexPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getReadReserved()Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    return-object v0
.end method

.method public getReadTid()Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    return-object v0
.end method

.method public getReadUserdata()Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    return-object v0
.end method

.method public setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-void
.end method

.method public setHexPassword(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->hexPassword:Ljava/lang/String;

    return-void
.end method

.method public setReadReserved(Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    return-void
.end method

.method public setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    return-void
.end method

.method public setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    return-void
.end method

.method public toBytes()[B
    .locals 5

    .line 56
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 60
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->toBytes()[B

    move-result-object v1

    .line 61
    array-length v3, v1

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 62
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 67
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->toBytes()[B

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 73
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->toBytes()[B

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 79
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;->toBytes()[B

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 85
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridEpcParam;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 89
    :cond_4
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method
