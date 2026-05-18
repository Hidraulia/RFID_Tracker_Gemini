.class public Lcom/annimon/stream/operator/LongFilterIndexed;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "LongFilterIndexed.java"


# instance fields
.field private hasNext:Z

.field private hasNextEvaluated:Z

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

.field private next:J

.field private final predicate:Lcom/annimon/stream/function/IndexedLongPredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;Lcom/annimon/stream/function/IndexedLongPredicate;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    .line 17
    iput-object p2, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->predicate:Lcom/annimon/stream/function/IndexedLongPredicate;

    return-void
.end method

.method private nextIteration()V
    .locals 4

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->getIndex()I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->next:J

    .line 45
    iget-object v3, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->predicate:Lcom/annimon/stream/function/IndexedLongPredicate;

    invoke-interface {v3, v0, v1, v2}, Lcom/annimon/stream/function/IndexedLongPredicate;->test(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->hasNextEvaluated:Z

    if-nez v0, :cond_0

    .line 23
    invoke-direct {p0}, Lcom/annimon/stream/operator/LongFilterIndexed;->nextIteration()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->hasNextEvaluated:Z

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->hasNext:Z

    return v0
.end method

.method public nextLong()J
    .locals 2

    .line 31
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->hasNextEvaluated:Z

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/annimon/stream/operator/LongFilterIndexed;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->hasNext:Z

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->hasNext:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->hasNextEvaluated:Z

    .line 38
    iget-wide v0, p0, Lcom/annimon/stream/operator/LongFilterIndexed;->next:J

    return-wide v0

    .line 35
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
