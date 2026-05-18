.class public Lcom/example/rederdemo/entity/TagInfo;
.super Ljava/lang/Object;
.source "TagInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private count:Ljava/lang/Long;

.field private epc:Ljava/lang/String;

.field private index:Ljava/lang/Long;

.field private readTime:Ljava/util/Date;

.field private reservedData:Ljava/lang/String;

.field private rssi:Ljava/lang/String;

.field private tid:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private userData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/example/rederdemo/entity/TagInfo;->index:Ljava/lang/Long;

    .line 22
    iput-object p2, p0, Lcom/example/rederdemo/entity/TagInfo;->type:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/example/rederdemo/entity/TagInfo;->epc:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/example/rederdemo/entity/TagInfo;->tid:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/example/rederdemo/entity/TagInfo;->rssi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()Ljava/lang/Long;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/example/rederdemo/entity/TagInfo;->count:Ljava/lang/Long;

    return-object v0
.end method

.method public getEpc()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/example/rederdemo/entity/TagInfo;->epc:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Ljava/lang/Long;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/example/rederdemo/entity/TagInfo;->index:Ljava/lang/Long;

    return-object v0
.end method

.method public getReadTime()Ljava/util/Date;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/example/rederdemo/entity/TagInfo;->readTime:Ljava/util/Date;

    return-object v0
.end method

.method public getReservedData()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/example/rederdemo/entity/TagInfo;->reservedData:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/example/rederdemo/entity/TagInfo;->rssi:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/example/rederdemo/entity/TagInfo;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/example/rederdemo/entity/TagInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/example/rederdemo/entity/TagInfo;->userData:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(Ljava/lang/Long;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/example/rederdemo/entity/TagInfo;->count:Ljava/lang/Long;

    return-void
.end method

.method public setEpc(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/example/rederdemo/entity/TagInfo;->epc:Ljava/lang/String;

    return-void
.end method

.method public setIndex(Ljava/lang/Long;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/example/rederdemo/entity/TagInfo;->index:Ljava/lang/Long;

    return-void
.end method

.method public setReadTime(Ljava/util/Date;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/example/rederdemo/entity/TagInfo;->readTime:Ljava/util/Date;

    return-void
.end method

.method public setReservedData(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/example/rederdemo/entity/TagInfo;->reservedData:Ljava/lang/String;

    return-void
.end method

.method public setRssi(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/example/rederdemo/entity/TagInfo;->rssi:Ljava/lang/String;

    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/example/rederdemo/entity/TagInfo;->tid:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/example/rederdemo/entity/TagInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/example/rederdemo/entity/TagInfo;->userData:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TagInfo{index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/example/rederdemo/entity/TagInfo;->index:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/example/rederdemo/entity/TagInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", epc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/example/rederdemo/entity/TagInfo;->epc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/example/rederdemo/entity/TagInfo;->count:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", tid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/example/rederdemo/entity/TagInfo;->tid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rssi=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/example/rederdemo/entity/TagInfo;->rssi:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/example/rederdemo/entity/TagInfo;->userData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reservedData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/example/rederdemo/entity/TagInfo;->reservedData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
