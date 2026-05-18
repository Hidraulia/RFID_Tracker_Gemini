.class public Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ParamAccessOperate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Read"
.end annotation


# instance fields
.field private area:I

.field private len:I

.field private start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    .line 104
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->area:I

    .line 105
    iput p2, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->start:I

    .line 106
    iput p3, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->len:I

    return-void
.end method


# virtual methods
.method public getArea()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->area:I

    return v0
.end method

.method public getLen()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->len:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->start:I

    return v0
.end method

.method public setArea(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->area:I

    return-void
.end method

.method public setLen(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->len:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->start:I

    return-void
.end method

.method public toBytes()[B
    .locals 5

    .line 138
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 139
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->area:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 140
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->start:I

    int-to-long v1, v1

    const/16 v4, 0x10

    invoke-virtual {v0, v1, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 141
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->len:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 142
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read{area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->area:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;->len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
