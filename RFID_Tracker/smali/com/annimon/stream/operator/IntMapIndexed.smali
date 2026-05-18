.class public Lcom/annimon/stream/operator/IntMapIndexed;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntMapIndexed.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;

.field private final mapper:Lcom/annimon/stream/function/IntBinaryOperator;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;Lcom/annimon/stream/function/IntBinaryOperator;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/IntMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/IntMapIndexed;->mapper:Lcom/annimon/stream/function/IntBinaryOperator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/IntMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextInt()I
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/annimon/stream/operator/IntMapIndexed;->mapper:Lcom/annimon/stream/function/IntBinaryOperator;

    iget-object v1, p0, Lcom/annimon/stream/operator/IntMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->getIndex()I

    move-result v1

    iget-object v2, p0, Lcom/annimon/stream/operator/IntMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    return v0
.end method
