.class public final Lcom/annimon/stream/IntStream;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final EMPTY:Lcom/annimon/stream/IntStream;

.field private static final UNBOX_FUNCTION:Lcom/annimon/stream/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/ToIntFunction<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final params:Lcom/annimon/stream/internal/Params;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/IntStream$1;

    invoke-direct {v1}, Lcom/annimon/stream/IntStream$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    sput-object v0, Lcom/annimon/stream/IntStream;->EMPTY:Lcom/annimon/stream/IntStream;

    .line 1277
    new-instance v0, Lcom/annimon/stream/IntStream$5;

    invoke-direct {v0}, Lcom/annimon/stream/IntStream$5;-><init>()V

    sput-object v0, Lcom/annimon/stream/IntStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToIntFunction;

    return-void
.end method

.method constructor <init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 236
    iput-object p2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    return-void
.end method

.method private constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V
    .locals 1

    const/4 v0, 0x0

    .line 231
    invoke-direct {p0, v0, p1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-void
.end method

.method public static concat(Lcom/annimon/stream/IntStream;Lcom/annimon/stream/IntStream;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 221
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntConcat;

    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    iget-object v3, p1, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v1, v2, v3}, Lcom/annimon/stream/operator/IntConcat;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 224
    invoke-static {p0, p1}, Lcom/annimon/stream/internal/Compose;->closeables(Ljava/io/Closeable;Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/annimon/stream/IntStream;->onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lcom/annimon/stream/IntStream;
    .locals 1

    .line 42
    sget-object v0, Lcom/annimon/stream/IntStream;->EMPTY:Lcom/annimon/stream/IntStream;

    return-object v0
.end method

.method public static generate(Lcom/annimon/stream/function/IntSupplier;)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 145
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntGenerate;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/IntGenerate;-><init>(Lcom/annimon/stream/function/IntSupplier;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static iterate(ILcom/annimon/stream/function/IntPredicate;Lcom/annimon/stream/function/IntUnaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 0

    .line 199
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {p0, p2}, Lcom/annimon/stream/IntStream;->iterate(ILcom/annimon/stream/function/IntUnaryOperator;)Lcom/annimon/stream/IntStream;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/annimon/stream/IntStream;->takeWhile(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(ILcom/annimon/stream/function/IntUnaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 174
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntIterate;

    invoke-direct {v1, p0, p1}, Lcom/annimon/stream/operator/IntIterate;-><init>(ILcom/annimon/stream/function/IntUnaryOperator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static of(I)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 79
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntArray;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    invoke-direct {v1, v2}, Lcom/annimon/stream/operator/IntArray;-><init>([I)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static of(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)Lcom/annimon/stream/IntStream;
    .locals 1

    .line 53
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/annimon/stream/IntStream;

    invoke-direct {v0, p0}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static varargs of([I)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 65
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    array-length v0, p0

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntArray;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/IntArray;-><init>([I)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static ofCodePoints(Ljava/lang/CharSequence;)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 95
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntCodePoints;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/IntCodePoints;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static range(II)Lcom/annimon/stream/IntStream;
    .locals 0

    if-lt p0, p1, :cond_0

    .line 110
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 112
    invoke-static {p0, p1}, Lcom/annimon/stream/IntStream;->rangeClosed(II)Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static rangeClosed(II)Lcom/annimon/stream/IntStream;
    .locals 2

    if-le p0, p1, :cond_0

    .line 127
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne p0, p1, :cond_1

    .line 129
    invoke-static {p0}, Lcom/annimon/stream/IntStream;->of(I)Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0

    .line 131
    :cond_1
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntRangeClosed;

    invoke-direct {v1, p0, p1}, Lcom/annimon/stream/operator/IntRangeClosed;-><init>(II)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method


# virtual methods
.method public allMatch(Lcom/annimon/stream/function/IntPredicate;)Z
    .locals 1

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public anyMatch(Lcom/annimon/stream/function/IntPredicate;)Z
    .locals 1

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1270
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1272
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public collect(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/ObjIntConsumer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TR;>;",
            "Lcom/annimon/stream/function/ObjIntConsumer<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 957
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    .line 958
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    .line 960
    invoke-interface {p2, p1, v0}, Lcom/annimon/stream/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public count()J
    .locals 4

    const-wide/16 v0, 0x0

    .line 1024
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1025
    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

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
            "Lcom/annimon/stream/IntStream;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 315
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-interface {p1, p0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public distinct()Lcom/annimon/stream/IntStream;
    .locals 2

    .line 571
    invoke-virtual {p0}, Lcom/annimon/stream/IntStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->distinct()Lcom/annimon/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/annimon/stream/IntStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToIntFunction;

    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->mapToInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public dropWhile(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 757
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntDropWhile;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntDropWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public filter(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 350
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntFilter;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntFilter;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public filterIndexed(IILcom/annimon/stream/function/IndexedIntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 5

    .line 400
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntFilterIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;

    iget-object v4, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;-><init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/IntFilterIndexed;-><init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;Lcom/annimon/stream/function/IndexedIntPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public filterIndexed(Lcom/annimon/stream/function/IndexedIntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 373
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/IntStream;->filterIndexed(IILcom/annimon/stream/function/IndexedIntPredicate;)Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 0

    .line 416
    invoke-static {p1}, Lcom/annimon/stream/function/IntPredicate$Util;->negate(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/function/IntPredicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/IntStream;->filter(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public findFirst()Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-static {v0}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    move-result-object v0

    return-object v0

    .line 1142
    :cond_0
    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public findLast()Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1157
    new-instance v0, Lcom/annimon/stream/IntStream$4;

    invoke-direct {v0, p0}, Lcom/annimon/stream/IntStream$4;-><init>(Lcom/annimon/stream/IntStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/IntStream;->reduce(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public findSingle()Lcom/annimon/stream/OptionalInt;
    .locals 2

    .line 1226
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1227
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    .line 1228
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1231
    invoke-static {v0}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    move-result-object v0

    return-object v0

    .line 1229
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IntStream contains more than one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1234
    :cond_1
    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public flatMap(Lcom/annimon/stream/function/IntFunction;)Lcom/annimon/stream/IntStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IntFunction<",
            "+",
            "Lcom/annimon/stream/IntStream;",
            ">;)",
            "Lcom/annimon/stream/IntStream;"
        }
    .end annotation

    .line 552
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntFlatMap;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntFlatMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public forEach(Lcom/annimon/stream/function/IntConsumer;)V
    .locals 1

    .line 832
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachIndexed(IILcom/annimon/stream/function/IndexedIntConsumer;)V
    .locals 1

    .line 861
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-interface {p3, p1, v0}, Lcom/annimon/stream/function/IndexedIntConsumer;->accept(II)V

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachIndexed(Lcom/annimon/stream/function/IndexedIntConsumer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 846
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/IntStream;->forEachIndexed(IILcom/annimon/stream/function/IndexedIntConsumer;)V

    return-void
.end method

.method public iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    return-object v0
.end method

.method public limit(J)Lcom/annimon/stream/IntStream;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 786
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1

    .line 788
    :cond_0
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntLimit;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/IntLimit;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;J)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0

    .line 783
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public map(Lcom/annimon/stream/function/IntUnaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 437
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntMap;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntUnaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public mapIndexed(IILcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 5

    .line 483
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntMapIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;

    iget-object v4, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;-><init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/IntMapIndexed;-><init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;Lcom/annimon/stream/function/IntBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public mapIndexed(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 458
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/IntStream;->mapIndexed(IILcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public mapToDouble(Lcom/annimon/stream/function/IntToDoubleFunction;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 529
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntMapToDouble;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntMapToDouble;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntToDoubleFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public mapToLong(Lcom/annimon/stream/function/IntToLongFunction;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 514
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntMapToLong;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntMapToLong;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntToLongFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public mapToObj(Lcom/annimon/stream/function/IntFunction;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/IntFunction<",
            "+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 499
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntMapToObj;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntMapToObj;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public max()Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1007
    new-instance v0, Lcom/annimon/stream/IntStream$3;

    invoke-direct {v0, p0}, Lcom/annimon/stream/IntStream$3;-><init>(Lcom/annimon/stream/IntStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/IntStream;->reduce(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public min()Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 989
    new-instance v0, Lcom/annimon/stream/IntStream$2;

    invoke-direct {v0, p0}, Lcom/annimon/stream/IntStream$2;-><init>(Lcom/annimon/stream/IntStream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/IntStream;->reduce(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public noneMatch(Lcom/annimon/stream/function/IntPredicate;)Z
    .locals 1

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 1248
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    if-nez v0, :cond_0

    .line 1251
    new-instance v0, Lcom/annimon/stream/internal/Params;

    invoke-direct {v0}, Lcom/annimon/stream/internal/Params;-><init>()V

    .line 1252
    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    goto :goto_0

    .line 1255
    :cond_0
    iget-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 1256
    invoke-static {v1, p1}, Lcom/annimon/stream/internal/Compose;->runnables(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 1258
    :goto_0
    new-instance p1, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {p1, v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object p1
.end method

.method public peek(Lcom/annimon/stream/function/IntConsumer;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 645
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntPeek;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntPeek;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntConsumer;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public reduce(ILcom/annimon/stream/function/IntBinaryOperator;)I
    .locals 1

    .line 897
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    .line 899
    invoke-interface {p2, p1, v0}, Lcom/annimon/stream/function/IntBinaryOperator;->applyAsInt(II)I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public reduce(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/OptionalInt;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 921
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 922
    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v2

    goto :goto_0

    .line 928
    :cond_0
    invoke-interface {p1, v1, v2}, Lcom/annimon/stream/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 931
    invoke-static {v1}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public sample(I)Lcom/annimon/stream/IntStream;
    .locals 4

    if-lez p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    .line 631
    :cond_0
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntSample;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntSample;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;I)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0

    .line 629
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepWidth cannot be zero or negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scan(ILcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 696
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntScanIdentity;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/IntScanIdentity;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;ILcom/annimon/stream/function/IntBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public scan(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 669
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntScan;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntScan;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public single()I
    .locals 2

    .line 1190
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1191
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    .line 1192
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1193
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IntStream contains more than one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1198
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "IntStream contains no element"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)Lcom/annimon/stream/IntStream;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 820
    :cond_0
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntSkip;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/IntSkip;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;J)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0

    .line 816
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sorted()Lcom/annimon/stream/IntStream;
    .locals 4

    .line 589
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntSorted;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3}, Lcom/annimon/stream/operator/IntSorted;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public sorted(Ljava/util/Comparator;)Lcom/annimon/stream/IntStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/annimon/stream/IntStream;"
        }
    .end annotation

    .line 608
    invoke-virtual {p0}, Lcom/annimon/stream/IntStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/annimon/stream/Stream;->sorted(Ljava/util/Comparator;)Lcom/annimon/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/annimon/stream/IntStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToIntFunction;

    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->mapToInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public sum()I
    .locals 2

    const/4 v0, 0x0

    .line 972
    :goto_0
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 973
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public takeUntil(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 738
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntTakeUntil;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntTakeUntil;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public takeWhile(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 716
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntTakeWhile;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntTakeWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public toArray()[I
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-static {v0}, Lcom/annimon/stream/internal/Operators;->toIntArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)[I

    move-result-object v0

    return-object v0
.end method
