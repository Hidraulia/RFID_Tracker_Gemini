.class public Lcom/annimon/stream/operator/DoubleMapIndexed;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "DoubleMapIndexed.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

.field private final mapper:Lcom/annimon/stream/function/IndexedDoubleUnaryOperator;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;Lcom/annimon/stream/function/IndexedDoubleUnaryOperator;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/DoubleMapIndexed;->mapper:Lcom/annimon/stream/function/IndexedDoubleUnaryOperator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextDouble()D
    .locals 4

    .line 24
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleMapIndexed;->mapper:Lcom/annimon/stream/function/IndexedDoubleUnaryOperator;

    iget-object v1, p0, Lcom/annimon/stream/operator/DoubleMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->getIndex()I

    move-result v1

    iget-object v2, p0, Lcom/annimon/stream/operator/DoubleMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->next()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/annimon/stream/function/IndexedDoubleUnaryOperator;->applyAsDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method
