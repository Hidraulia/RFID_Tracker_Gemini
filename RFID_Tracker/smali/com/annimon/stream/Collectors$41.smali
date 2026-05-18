.class final Lcom/annimon/stream/Collectors$41;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/BiConsumer;


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
        "Lcom/annimon/stream/function/BiConsumer<",
        "Lcom/annimon/stream/Collectors$Tuple2<",
        "TA;>;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$downstreamAccumulator:Lcom/annimon/stream/function/BiConsumer;

.field final synthetic val$predicate:Lcom/annimon/stream/function/Predicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Predicate;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lcom/annimon/stream/Collectors$41;->val$downstreamAccumulator:Lcom/annimon/stream/function/BiConsumer;

    iput-object p2, p0, Lcom/annimon/stream/Collectors$41;->val$predicate:Lcom/annimon/stream/function/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/annimon/stream/Collectors$Tuple2;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/Collectors$Tuple2<",
            "TA;>;TT;)V"
        }
    .end annotation

    .line 980
    iget-object v0, p0, Lcom/annimon/stream/Collectors$41;->val$downstreamAccumulator:Lcom/annimon/stream/function/BiConsumer;

    iget-object v1, p0, Lcom/annimon/stream/Collectors$41;->val$predicate:Lcom/annimon/stream/function/Predicate;

    .line 981
    invoke-interface {v1, p2}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/annimon/stream/Collectors$Tuple2;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/annimon/stream/Collectors$Tuple2;->b:Ljava/lang/Object;

    .line 980
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 977
    check-cast p1, Lcom/annimon/stream/Collectors$Tuple2;

    invoke-virtual {p0, p1, p2}, Lcom/annimon/stream/Collectors$41;->accept(Lcom/annimon/stream/Collectors$Tuple2;Ljava/lang/Object;)V

    return-void
.end method
