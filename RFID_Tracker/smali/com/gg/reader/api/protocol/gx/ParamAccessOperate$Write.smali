.class public Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ParamAccessOperate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Write"
.end annotation


# instance fields
.field private area:I

.field private hexWriteData:Ljava/lang/String;

.field private start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    .line 164
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->area:I

    .line 165
    iput p2, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->start:I

    .line 166
    iput-object p3, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->hexWriteData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArea()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->area:I

    return v0
.end method

.method public getHexWriteData()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->hexWriteData:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->start:I

    return v0
.end method

.method public setArea(I)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->area:I

    return-void
.end method

.method public setHexWriteData(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->hexWriteData:Ljava/lang/String;

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->start:I

    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 195
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 196
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->area:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 197
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->start:I

    int-to-long v1, v1

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 198
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->hexWriteData:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->hexWriteData:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 201
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write{area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->area:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hexWriteData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;->hexWriteData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
