.class public Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "Hybrid6bParam.java"


# instance fields
.field private area:I

.field private readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method


# virtual methods
.method public getArea()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;->area:I

    return v0
.end method

.method public getReadUserdata()Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    return-object v0
.end method

.method public setArea(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;->area:I

    return-void
.end method

.method public setReadUserdata(Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 27
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 28
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;->area:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 29
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 31
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/Hybrid6bParam;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->toBytes()[B

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method
