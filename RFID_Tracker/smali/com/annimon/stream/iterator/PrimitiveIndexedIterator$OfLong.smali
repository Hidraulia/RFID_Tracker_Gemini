.class public Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "PrimitiveIndexedIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/iterator/PrimitiveIndexedIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfLong"
.end annotation


# instance fields
.field private index:I

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private final step:I


# direct methods
.method public constructor <init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 56
    iput-object p3, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 57
    iput p2, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->step:I

    .line 58
    iput p1, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->index:I

    return-void
.end method

.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 52
    invoke-direct {p0, v0, v1, p1}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;-><init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->index:I

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 73
    iget v2, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->index:I

    iget v3, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->step:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->index:I

    return-wide v0
.end method
