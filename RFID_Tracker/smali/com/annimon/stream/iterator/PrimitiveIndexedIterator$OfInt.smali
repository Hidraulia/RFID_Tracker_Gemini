.class public Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "PrimitiveIndexedIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/iterator/PrimitiveIndexedIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfInt"
.end annotation


# instance fields
.field private index:I

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final step:I


# direct methods
.method public constructor <init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 23
    iput-object p3, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 24
    iput p2, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->step:I

    .line 25
    iput p1, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->index:I

    return-void
.end method

.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 19
    invoke-direct {p0, v0, v1, p1}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;-><init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->index:I

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextInt()I
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 40
    iget v1, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->index:I

    iget v2, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->step:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;->index:I

    return v0
.end method
