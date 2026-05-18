.class public Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ParamGJbSimCreatePwd.java"


# instance fields
.field private mode:I

.field private pwdIndex:I

.field private tid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;->mode:I

    return v0
.end method

.method public getPwdIndex()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;->pwdIndex:I

    return v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public setMode(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;->mode:I

    return-void
.end method

.method public setPwdIndex(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;->pwdIndex:I

    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;->tid:Ljava/lang/String;

    return-void
.end method

.method public toBytes()[B
    .locals 3

    .line 45
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;->tid:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 48
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;->pwdIndex:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 49
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;->mode:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 50
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method
