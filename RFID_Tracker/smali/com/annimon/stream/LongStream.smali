.class public final Lcom/annimon/stream/LongStream;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final EMPTY:Lcom/annimon/stream/LongStream;

.field private static final UNBOX_FUNCTION:Lcom/annimon/stream/function/ToLongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/ToLongFunction<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private final params:Lcom/annimon/stream/internal/Params;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/LongStream$1;

    invoke-direct {v1}, Lcom/annimon/stream/LongStream$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    sput-object v0, Lcom/annimon/stream/LongStream;->EMPTY:Lcom/annimon/stream/LongStream;

    .line 1231
    new-instance v0, Lcom/annimon/stream/LongStream$5;

    invoke-direct {v0}, Lcom/annimon/stream/LongStream$5;-><init>()V

    sput-object v0, Lcom/annimon/stream/LongStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToLongFunction;

    return-void
.end method

.method constructor <init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 216
    iput-object p2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    return-void
.end method

.method private constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, v0, p1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-void
.end method

.method public static concat(Lcom/annimon/stream/LongStream;Lcom/annimon/stream/LongStream;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 200
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongConcat;

    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    iget-object v3, p1, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v1, v2, v3}, Lcom/annimon/stream/operator/LongConcat;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 203
    invoke-static {p0, p1}, Lcom/annimon/stream/internal/Compose;->closeables(Ljava/io/Closeable;Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/annimon/stream/LongStream;->onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lcom/annimon/stream/LongStream;
    .locals 1

    .line 45
    sget-object v0, Lcom/annimon/stream/LongStream;->EMPTY:Lcom/annimon/stream/LongStream;

    return-object v0
.end method

.method public static generate(Lcom/annimon/stream/function/LongSupplier;)Lcom/annimon/stream/LongStream;
    .locals 2

    .line 128
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongGenerate;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/LongGenerate;-><init>(Lcom/annimon/stream/function/LongSupplier;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public static iterate(JLcom/annimon/stream/function/LongPredicate;Lcom/annimon/stream/function/LongUnaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 0

    .line 180
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {p0, p1, p3}, Lcom/annimon/stream/LongStream;->iterate(JLcom/annimon/stream/function/LongUnaryOperator;)Lcom/annimon/stream/LongStream;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/annimon/stream/LongStream;->takeWhile(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(JLcom/annimon/stream/function/LongUnaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 2

    .line 155
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongIterate;

    invoke-direct {v1, p0, p1, p2}, Lcom/annimon/stream/operator/LongIterate;-><init>(JLcom/annimon/stream/function/LongUnaryOperator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public static of(J)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 82
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongArray;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    invoke-direct {v1, v2}, Lcom/annimon/stream/operator/LongArray;-><init>([J)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public static of(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)Lcom/annimon/stream/LongStream;
    .locals 1

    .line 56
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/annimon/stream/LongStream;

    invoke-direct {v0, p0}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public static varargs of([J)Lcom/annimon/stream/LongStream;
    .locals 2

    .line 68
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    array-length v0, p0

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongArray;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/LongArray;-><init>([J)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public static range(JJ)Lcom/annimon/stream/LongStream;
    .locals 2

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x1

    sub-long/2addr p2, v0

    .line 99
    invoke-static {p0, p1, p2, p3}, Lcom/annimon/stream/LongStream;->rangeClosed(JJ)Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static rangeClosed(JJ)Lcom/annimon/stream/LongStream;
    .locals 2

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 114
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    .line 116
    invoke-static {p0, p1}, Lcom/annimon/stream/LongStream;->of(J)Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0

    .line 117
    :cond_1
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongRangeClosed;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/annimon/stream/operator/LongRangeClosed;-><init>(JJ)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method


# virtual methods
.method public allMatch(Lcom/annimon/stream/function/LongPredicate;)Z
    .locals 2

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public anyMatch(Lcom/annimon/stream/function/LongPredicate;)Z
    .locals 2

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public boxed()Lcom/annimon/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1224
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1226
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public collect(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/ObjLongConsumer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TR;>;",
            "Lcom/annimon/stream/function/ObjLongConsumer<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 923
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    .line 924
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    .line 926
    invoke-interface {p2, p1, v0, v1}, Lcom/annimon/stream/function/ObjLongConsumer;->accept(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public count()J
    .locals 4

    const-wide/16 v0, 0x0

    .line 987
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 988
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public custom(Lcom/annimon/stream/function/Function;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "Lcom/annimon/stream/LongStream;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 304
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-interface {p1, p0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public distinct()Lcom/annimon/stream/LongStream;
    .locals 2

    .line 551
    invoke-virtual {p0}, Lcom/annimon/stream/LongStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->distinct()Lcom/annimon/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/annimon/stream/LongStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToLongFunction;

    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->mapToLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public dropWhile(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 735
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongDropWhile;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongDropWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public filter(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 337
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongFilter;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongFilter;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public filterIndexed(IILcom/annimon/stream/function/IndexedLongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 5

    .line 387
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongFilterIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    iget-object v4, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;-><init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/LongFilterIndexed;-><init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;Lcom/annimon/stream/function/IndexedLongPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public filterIndexed(Lcom/annimon/stream/function/IndexedLongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 360
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/LongStream;->filterIndexed(IILcom/annimon/stream/function/IndexedLongPredicate;)Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 0

    .line 401
    invoke-static {p1}, Lcom/annimon/stream/function/LongPredicate$Util;->negate(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/function/LongPredicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/LongStream;->filter(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public findFirst()Lcom/annimon/stream/OptionalLong;
    .locals 2

    .line 1097
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    move-result-object v0

    return-object v0

    .line 1100
    :cond_0
    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public findLast()Lcom/annimon/stream/OptionalLong;
    .locals 1

    .line 1114
    new-instance v0, Lcom/annimon/stream/LongStream$4;

    invoke-direct {v0, p0}, Lcom/annimon/stream/LongStream$4;-><init>(Lcom/annimon/stream/LongStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/LongStream;->reduce(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public findSingle()Lcom/annimon/stream/OptionalLong;
    .locals 3

    .line 1181
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    move-result-object v0

    return-object v0

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    .line 1186
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1189
    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    move-result-object v0

    return-object v0

    .line 1187
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LongStream contains more than one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flatMap(Lcom/annimon/stream/function/LongFunction;)Lcom/annimon/stream/LongStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/LongFunction<",
            "+",
            "Lcom/annimon/stream/LongStream;",
            ">;)",
            "Lcom/annimon/stream/LongStream;"
        }
    .end annotation

    .line 534
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongFlatMap;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongFlatMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public forEach(Lcom/annimon/stream/function/LongConsumer;)V
    .locals 2

    .line 801
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongConsumer;->accept(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachIndexed(IILcom/annimon/stream/function/IndexedLongConsumer;)V
    .locals 2

    .line 830
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p3, p1, v0, v1}, Lcom/annimon/stream/function/IndexedLongConsumer;->accept(IJ)V

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachIndexed(Lcom/annimon/stream/function/IndexedLongConsumer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 815
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/LongStream;->forEachIndexed(IILcom/annimon/stream/function/IndexedLongConsumer;)V

    return-void
.end method

.method public iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    return-object v0
.end method

.method public limit(J)Lcom/annimon/stream/LongStream;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 761
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1

    .line 762
    :cond_0
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongLimit;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/LongLimit;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;J)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0

    .line 760
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public map(Lcom/annimon/stream/function/LongUnaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 422
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongMap;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongUnaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public mapIndexed(IILcom/annimon/stream/function/IndexedLongUnaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 5

    .line 470
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongMapIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    iget-object v4, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;-><init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/LongMapIndexed;-><init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;Lcom/annimon/stream/function/IndexedLongUnaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public mapIndexed(Lcom/annimon/stream/function/IndexedLongUnaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 444
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/LongStream;->mapIndexed(IILcom/annimon/stream/function/IndexedLongUnaryOperator;)Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public mapToDouble(Lcom/annimon/stream/function/LongToDoubleFunction;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 512
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongMapToDouble;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongMapToDouble;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongToDoubleFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public mapToInt(Lcom/annimon/stream/function/LongToIntFunction;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 499
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongMapToInt;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongMapToInt;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongToIntFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public mapToObj(Lcom/annimon/stream/function/LongFunction;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/LongFunction<",
            "+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 486
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongMapToObj;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongMapToObj;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public max()Lcom/annimon/stream/OptionalLong;
    .locals 1

    .line 970
    new-instance v0, Lcom/annimon/stream/LongStream$3;

    invoke-direct {v0, p0}, Lcom/annimon/stream/LongStream$3;-><init>(Lcom/annimon/stream/LongStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/LongStream;->reduce(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public min()Lcom/annimon/stream/OptionalLong;
    .locals 1

    .line 953
    new-instance v0, Lcom/annimon/stream/LongStream$2;

    invoke-direct {v0, p0}, Lcom/annimon/stream/LongStream$2;-><init>(Lcom/annimon/stream/LongStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/LongStream;->reduce(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public noneMatch(Lcom/annimon/stream/function/LongPredicate;)Z
    .locals 2

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/LongStream;
    .locals 2

    .line 1202
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    if-nez v0, :cond_0

    .line 1205
    new-instance v0, Lcom/annimon/stream/internal/Params;

    invoke-direct {v0}, Lcom/annimon/stream/internal/Params;-><init>()V

    .line 1206
    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    goto :goto_0

    .line 1209
    :cond_0
    iget-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 1210
    invoke-static {v1, p1}, Lcom/annimon/stream/internal/Compose;->runnables(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 1212
    :goto_0
    new-instance p1, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {p1, v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object p1
.end method

.method public peek(Lcom/annimon/stream/function/LongConsumer;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 623
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongPeek;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongPeek;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongConsumer;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public reduce(JLcom/annimon/stream/function/LongBinaryOperator;)J
    .locals 2

    .line 865
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    .line 867
    invoke-interface {p3, p1, p2, v0, v1}, Lcom/annimon/stream/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public reduce(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/OptionalLong;
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 888
    :goto_0
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v3}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 889
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v3}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move-wide v1, v3

    goto :goto_0

    .line 894
    :cond_0
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/annimon/stream/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 897
    invoke-static {v1, v2}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public sample(I)Lcom/annimon/stream/LongStream;
    .locals 4

    if-lez p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    .line 611
    :cond_0
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongSample;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongSample;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;I)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0

    .line 609
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepWidth cannot be zero or negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scan(JLcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 674
    invoke-static {p3}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongScanIdentity;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/annimon/stream/operator/LongScanIdentity;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;JLcom/annimon/stream/function/LongBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public scan(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 647
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongScan;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongScan;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public single()J
    .locals 3

    .line 1146
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    .line 1151
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    .line 1152
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LongStream contains more than one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1147
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "LongStream contains no element"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)Lcom/annimon/stream/LongStream;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 790
    :cond_0
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongSkip;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/LongSkip;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;J)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0

    .line 788
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sorted()Lcom/annimon/stream/LongStream;
    .locals 4

    .line 568
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongSorted;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3}, Lcom/annimon/stream/operator/LongSorted;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public sorted(Ljava/util/Comparator;)Lcom/annimon/stream/LongStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/annimon/stream/LongStream;"
        }
    .end annotation

    .line 588
    invoke-virtual {p0}, Lcom/annimon/stream/LongStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/annimon/stream/Stream;->sorted(Ljava/util/Comparator;)Lcom/annimon/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/annimon/stream/LongStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToLongFunction;

    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->mapToLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public sum()J
    .locals 4

    const-wide/16 v0, 0x0

    .line 938
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 939
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public takeUntil(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 716
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongTakeUntil;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongTakeUntil;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public takeWhile(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 694
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongTakeWhile;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongTakeWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public toArray()[J
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-static {v0}, Lcom/annimon/stream/internal/Operators;->toLongArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)[J

    move-result-object v0

    return-object v0
.end method
