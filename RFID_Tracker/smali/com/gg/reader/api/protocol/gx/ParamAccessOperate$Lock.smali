.class public Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Lock;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ParamAccessOperate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lock"
.end annotation


# instance fields
.field private area:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 221
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    .line 222
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Lock;->area:I

    .line 223
    iput p2, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Lock;->type:I

    return-void
.end method


# virtual methods
.method public getArea()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Lock;->area:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Lock;->type:I

    return v0
.end method

.method public setArea(I)V
    .locals 0

    .line 231
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Lock;->area:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Lock;->type:I

    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 244
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 245
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Lock;->area:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 246
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Lock;->type:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 247
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lock{area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Lock;->area:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Lock;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
