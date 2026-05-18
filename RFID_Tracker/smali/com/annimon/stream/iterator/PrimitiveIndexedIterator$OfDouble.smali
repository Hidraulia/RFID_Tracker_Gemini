.class public Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "PrimitiveIndexedIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/iterator/PrimitiveIndexedIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfDouble"
.end annotation


# instance fields
.field private index:I

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final step:I


# direct methods
.method public constructor <init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 89
    iput-object p3, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 90
    iput p2, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->step:I

    .line 91
    iput p1, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->index:I

    return-void
.end method

.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 85
    invoke-direct {p0, v0, v1, p1}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;-><init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->index:I

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextDouble()D
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 106
    iget v2, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->index:I

    iget v3, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->step:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->index:I

    return-wide v0
.end method
