.class public Lcom/annimon/stream/operator/LongMapIndexed;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "LongMapIndexed.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

.field private final mapper:Lcom/annimon/stream/function/IndexedLongUnaryOperator;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;Lcom/annimon/stream/function/IndexedLongUnaryOperator;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/LongMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/LongMapIndexed;->mapper:Lcom/annimon/stream/function/IndexedLongUnaryOperator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/LongMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 4

    .line 24
    iget-object v0, p0, Lcom/annimon/stream/operator/LongMapIndexed;->mapper:Lcom/annimon/stream/function/IndexedLongUnaryOperator;

    iget-object v1, p0, Lcom/annimon/stream/operator/LongMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->getIndex()I

    move-result v1

    iget-object v2, p0, Lcom/annimon/stream/operator/LongMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/annimon/stream/function/IndexedLongUnaryOperator;->applyAsLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method
