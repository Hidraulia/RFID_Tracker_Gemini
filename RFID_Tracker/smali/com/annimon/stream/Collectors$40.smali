.class final Lcom/annimon/stream/Collectors$40;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/Supplier;


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
        "Lcom/annimon/stream/function/Supplier<",
        "Lcom/annimon/stream/Collectors$Tuple2<",
        "TA;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$downstream:Lcom/annimon/stream/Collector;


# direct methods
.method constructor <init>(Lcom/annimon/stream/Collector;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/annimon/stream/Collectors$40;->val$downstream:Lcom/annimon/stream/Collector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/annimon/stream/Collectors$Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Collectors$Tuple2<",
            "TA;>;"
        }
    .end annotation

    .line 972
    new-instance v0, Lcom/annimon/stream/Collectors$Tuple2;

    iget-object v1, p0, Lcom/annimon/stream/Collectors$40;->val$downstream:Lcom/annimon/stream/Collector;

    .line 973
    invoke-interface {v1}, Lcom/annimon/stream/Collector;->supplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/annimon/stream/Collectors$40;->val$downstream:Lcom/annimon/stream/Collector;

    .line 974
    invoke-interface {v2}, Lcom/annimon/stream/Collector;->supplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v2

    invoke-interface {v2}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Collectors$Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 969
    invoke-virtual {p0}, Lcom/annimon/stream/Collectors$40;->get()Lcom/annimon/stream/Collectors$Tuple2;

    move-result-object v0

    return-object v0
.end method
