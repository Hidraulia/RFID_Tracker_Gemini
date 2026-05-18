.class public Lcom/annimon/stream/operator/IntFilterIndexed;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntFilterIndexed.java"


# instance fields
.field private hasNext:Z

.field private hasNextEvaluated:Z

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;

.field private next:I

.field private final predicate:Lcom/annimon/stream/function/IndexedIntPredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;Lcom/annimon/stream/function/IndexedIntPredicate;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;

    .line 17
    iput-object p2, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->predicate:Lcom/annimon/stream/function/IndexedIntPredicate;

    return-void
.end method

.method private nextIteration()V
    .locals 3

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->getIndex()I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->next:I

    .line 45
    iget-object v2, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->predicate:Lcom/annimon/stream/function/IndexedIntPredicate;

    invoke-interface {v2, v0, v1}, Lcom/annimon/stream/function/IndexedIntPredicate;->test(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->hasNextEvaluated:Z

    if-nez v0, :cond_0

    .line 23
    invoke-direct {p0}, Lcom/annimon/stream/operator/IntFilterIndexed;->nextIteration()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->hasNextEvaluated:Z

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->hasNext:Z

    return v0
.end method

.method public nextInt()I
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->hasNextEvaluated:Z

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/annimon/stream/operator/IntFilterIndexed;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->hasNext:Z

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->hasNext:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->hasNextEvaluated:Z

    .line 38
    iget v0, p0, Lcom/annimon/stream/operator/IntFilterIndexed;->next:I

    return v0

    .line 35
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
