.class final Lcom/annimon/stream/Collectors$10;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->toMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiConsumer<",
        "TM;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$keyMapper:Lcom/annimon/stream/function/Function;

.field final synthetic val$valueMapper:Lcom/annimon/stream/function/Function;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/annimon/stream/Collectors$10;->val$keyMapper:Lcom/annimon/stream/function/Function;

    iput-object p2, p0, Lcom/annimon/stream/Collectors$10;->val$valueMapper:Lcom/annimon/stream/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 216
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/annimon/stream/Collectors$10;->accept(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TT;)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/annimon/stream/Collectors$10;->val$keyMapper:Lcom/annimon/stream/function/Function;

    invoke-interface {v0, p2}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/annimon/stream/Collectors$10;->val$valueMapper:Lcom/annimon/stream/function/Function;

    invoke-interface {v1, p2}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 224
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {v0, v1, p2}, Lcom/annimon/stream/Collectors;->access$000(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method
