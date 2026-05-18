.class public Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;
.super Ljava/lang/Object;
.source "LogBaseAccessInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperateResult"
.end annotation


# instance fields
.field private hexReadData:Ljava/lang/String;

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHexReadData()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;->hexReadData:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;->result:I

    return v0
.end method

.method public setHexReadData(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;->hexReadData:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;->result:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperateResult{result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hexReadData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo$OperateResult;->hexReadData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
