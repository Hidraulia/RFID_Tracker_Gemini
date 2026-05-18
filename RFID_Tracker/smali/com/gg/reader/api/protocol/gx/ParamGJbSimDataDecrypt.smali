.class public Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ParamGJbSimDataDecrypt.java"


# instance fields
.field private decryptData:Ljava/lang/String;

.field private tid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecryptData()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;->decryptData:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public setDecryptData(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;->decryptData:Ljava/lang/String;

    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;->tid:Ljava/lang/String;

    return-void
.end method

.method public toBytes()[B
    .locals 2

    .line 34
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;->tid:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 37
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;->decryptData:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 39
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method
