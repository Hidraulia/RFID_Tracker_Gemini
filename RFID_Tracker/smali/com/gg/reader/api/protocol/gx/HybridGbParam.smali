.class public Lcom/gg/reader/api/protocol/gx/HybridGbParam;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "HybridGbParam.java"


# instance fields
.field private filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

.field private hexPassword:Ljava/lang/String;

.field private readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

.field private readUserdata:Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;


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

    .line 14
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-object v0
.end method

.method public getHexPassword()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->hexPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getReadTid()Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    return-object v0
.end method

.method public getReadUserdata()Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;

    return-object v0
.end method

.method public setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-void
.end method

.method public setHexPassword(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->hexPassword:Ljava/lang/String;

    return-void
.end method

.method public setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    return-void
.end method

.method public setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;

    return-void
.end method

.method public toBytes()[B
    .locals 5

    .line 47
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 51
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->toBytes()[B

    move-result-object v1

    .line 52
    array-length v3, v1

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 53
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 58
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->toBytes()[B

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 64
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->toBytes()[B

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x5

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 70
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/HybridGbParam;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 74
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method
