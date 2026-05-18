.class public Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseSetGJbSIM.java"


# instance fields
.field private createPwd:Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;

.field private dataDecrypt:Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;

.field private dataEncrypt:Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataEncrypt;

.field private editPwd:Lcom/gg/reader/api/protocol/gx/ParamGJbSimEditPwd;

.field private managerPwd:Ljava/lang/String;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 22
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x64

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->cData:[B

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_9

    .line 121
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->cData:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const-string v1, "other error"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_3

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/16 v2, 0x8

    .line 138
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v4, 0x10

    .line 139
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    if-lez v4, :cond_9

    .line 141
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    int-to-byte v5, v2

    .line 142
    invoke-virtual {p0, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->setRtCode(B)V

    if-nez v2, :cond_1

    const-string v1, "success"

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_2

    const-string v1, "not init"

    .line 143
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->setRtMsg(Ljava/lang/String;)V

    if-nez v2, :cond_9

    sub-int/2addr v4, v3

    .line 145
    new-array v1, v4, [B

    .line 146
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 147
    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->result:Ljava/lang/String;

    goto :goto_3

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->cData:[B

    aget-byte v0, v0, v3

    .line 130
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->setRtCode(B)V

    if-nez v0, :cond_4

    const-string v0, "edit success"

    goto :goto_1

    :cond_4
    const-string v0, "edit fail"

    .line 131
    :goto_1
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->setRtMsg(Ljava/lang/String;)V

    goto :goto_3

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->cData:[B

    aget-byte v0, v0, v3

    .line 124
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->setRtCode(B)V

    if-nez v0, :cond_6

    const-string v1, "init success"

    goto :goto_2

    :cond_6
    if-ne v0, v3, :cond_7

    const-string v1, "pwd error"

    goto :goto_2

    :cond_7
    if-ne v0, v2, :cond_8

    const-string v1, "init fail"

    .line 125
    :cond_8
    :goto_2
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->setRtMsg(Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public getCreatePwd()Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->createPwd:Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;

    return-object v0
.end method

.method public getDataDecrypt()Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->dataDecrypt:Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;

    return-object v0
.end method

.method public getDataEncrypt()Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataEncrypt;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->dataEncrypt:Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataEncrypt;

    return-object v0
.end method

.method public getEditPwd()Lcom/gg/reader/api/protocol/gx/ParamGJbSimEditPwd;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->editPwd:Lcom/gg/reader/api/protocol/gx/ParamGJbSimEditPwd;

    return-object v0
.end method

.method public getManagerPwd()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->managerPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->result:Ljava/lang/String;

    return-object v0
.end method

.method public pack()V
    .locals 5

    .line 81
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->managerPwd:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->managerPwd:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x1

    .line 85
    invoke-virtual {v0, v3, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 86
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->editPwd:Lcom/gg/reader/api/protocol/gx/ParamGJbSimEditPwd;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 91
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->editPwd:Lcom/gg/reader/api/protocol/gx/ParamGJbSimEditPwd;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamGJbSimEditPwd;->toBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->createPwd:Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 96
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->createPwd:Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;->toBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->dataEncrypt:Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataEncrypt;

    const/16 v3, 0x10

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 101
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->dataEncrypt:Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataEncrypt;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataEncrypt;->toBytes()[B

    move-result-object v1

    .line 102
    array-length v4, v1

    invoke-virtual {v0, v4, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 103
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->dataDecrypt:Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 108
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->dataDecrypt:Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;->toBytes()[B

    move-result-object v1

    .line 109
    array-length v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 110
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 113
    :cond_4
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->cData:[B

    .line 114
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->dataLen:I

    return-void
.end method

.method public setCreatePwd(Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->createPwd:Lcom/gg/reader/api/protocol/gx/ParamGJbSimCreatePwd;

    return-void
.end method

.method public setDataDecrypt(Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->dataDecrypt:Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataDecrypt;

    return-void
.end method

.method public setDataEncrypt(Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataEncrypt;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->dataEncrypt:Lcom/gg/reader/api/protocol/gx/ParamGJbSimDataEncrypt;

    return-void
.end method

.method public setEditPwd(Lcom/gg/reader/api/protocol/gx/ParamGJbSimEditPwd;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->editPwd:Lcom/gg/reader/api/protocol/gx/ParamGJbSimEditPwd;

    return-void
.end method

.method public setManagerPwd(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->managerPwd:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbSIM;->result:Ljava/lang/String;

    return-void
.end method
