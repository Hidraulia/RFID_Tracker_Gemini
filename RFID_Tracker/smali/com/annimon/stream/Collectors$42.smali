.class final Lcom/annimon/stream/Collectors$42;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->partitioningBy(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Function<",
        "Lcom/annimon/stream/Collectors$Tuple2<",
        "TA;>;",
        "Ljava/util/Map<",
        "Ljava/lang/Boolean;",
        "TD;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$downstream:Lcom/annimon/stream/Collector;


# direct methods
.method constructor <init>(Lcom/annimon/stream/Collector;)V
    .locals 0

    .line 984
    iput-object p1, p0, Lcom/annimon/stream/Collectors$42;->val$downstream:Lcom/annimon/stream/Collector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 984
    check-cast p1, Lcom/annimon/stream/Collectors$Tuple2;

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Collectors$42;->apply(Lcom/annimon/stream/Collectors$Tuple2;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/annimon/stream/Collectors$Tuple2;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/Collectors$Tuple2<",
            "TA;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "TD;>;"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lcom/annimon/stream/Collectors$42;->val$downstream:Lcom/annimon/stream/Collector;

    invoke-interface {v0}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    move-result-object v0

    if-nez v0, :cond_0

    .line 989
    invoke-static {}, Lcom/annimon/stream/Collectors;->castIdentity()Lcom/annimon/stream/function/Function;

    move-result-object v0

    .line 991
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 992
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/annimon/stream/Collectors$Tuple2;->a:Ljava/lang/Object;

    invoke-interface {v0, v3}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/annimon/stream/Collectors$Tuple2;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
