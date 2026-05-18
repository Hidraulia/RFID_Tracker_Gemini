.class public Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ParamAccessOperate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;,
        Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;,
        Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Lock;
    }
.end annotation


# instance fields
.field private hexReadData:Ljava/lang/String;

.field private interval:I

.field private parameter:Lcom/gg/reader/api/protocol/gx/Parameter;

.field private result:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method

.method public constructor <init>(IILcom/gg/reader/api/protocol/gx/Parameter;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    .line 17
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->type:I

    .line 18
    iput p2, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->interval:I

    .line 19
    iput-object p3, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->parameter:Lcom/gg/reader/api/protocol/gx/Parameter;

    return-void
.end method

.method public static Lock(III)Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;
    .locals 2

    .line 34
    new-instance v0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;

    new-instance v1, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Lock;

    invoke-direct {v1, p1, p2}, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Lock;-><init>(II)V

    const/4 p1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;-><init>(IILcom/gg/reader/api/protocol/gx/Parameter;)V

    return-object v0
.end method

.method public static Read(IIII)Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;
    .locals 2

    .line 26
    new-instance v0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;

    new-instance v1, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;

    invoke-direct {v1, p1, p2, p3}, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Read;-><init>(III)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;-><init>(IILcom/gg/reader/api/protocol/gx/Parameter;)V

    return-object v0
.end method

.method public static Write(IIILjava/lang/String;)Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;
    .locals 2

    .line 30
    new-instance v0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;

    new-instance v1, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;

    invoke-direct {v1, p1, p2, p3}, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate$Write;-><init>(IILjava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;-><init>(IILcom/gg/reader/api/protocol/gx/Parameter;)V

    return-object v0
.end method


# virtual methods
.method public getHexReadData()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->hexReadData:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->interval:I

    return v0
.end method

.method public getParameter()Lcom/gg/reader/api/protocol/gx/Parameter;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->parameter:Lcom/gg/reader/api/protocol/gx/Parameter;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->result:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->type:I

    return v0
.end method

.method public setHexReadData(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->hexReadData:Ljava/lang/String;

    return-void
.end method

.method public setInterval(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->interval:I

    return-void
.end method

.method public setParameter(Lcom/gg/reader/api/protocol/gx/Parameter;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->parameter:Lcom/gg/reader/api/protocol/gx/Parameter;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->result:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->type:I

    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 79
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 80
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->type:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 81
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->interval:I

    int-to-long v1, v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 82
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->parameter:Lcom/gg/reader/api/protocol/gx/Parameter;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/Parameter;->toBytes()[B

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 84
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamAccessOperate{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->parameter:Lcom/gg/reader/api/protocol/gx/Parameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hexReadData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/ParamAccessOperate;->hexReadData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
