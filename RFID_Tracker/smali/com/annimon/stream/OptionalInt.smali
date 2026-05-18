.class public final Lcom/annimon/stream/OptionalInt;
.super Ljava/lang/Object;
.source "OptionalInt.java"


# static fields
.field private static final EMPTY:Lcom/annimon/stream/OptionalInt;


# instance fields
.field private final isPresent:Z

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/annimon/stream/OptionalInt;

    invoke-direct {v0}, Lcom/annimon/stream/OptionalInt;-><init>()V

    sput-object v0, Lcom/annimon/stream/OptionalInt;->EMPTY:Lcom/annimon/stream/OptionalInt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 37
    iput v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 57
    iput p1, p0, Lcom/annimon/stream/OptionalInt;->value:I

    return-void
.end method

.method public static empty()Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 47
    sget-object v0, Lcom/annimon/stream/OptionalInt;->EMPTY:Lcom/annimon/stream/OptionalInt;

    return-object v0
.end method

.method public static of(I)Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 67
    new-instance v0, Lcom/annimon/stream/OptionalInt;

    invoke-direct {v0, p0}, Lcom/annimon/stream/OptionalInt;-><init>(I)V

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Integer;)Lcom/annimon/stream/OptionalInt;
    .locals 1

    if-nez p0, :cond_0

    .line 78
    sget-object p0, Lcom/annimon/stream/OptionalInt;->EMPTY:Lcom/annimon/stream/OptionalInt;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/annimon/stream/OptionalInt;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/annimon/stream/OptionalInt;-><init>(I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public custom(Lcom/annimon/stream/function/Function;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "Lcom/annimon/stream/OptionalInt;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 182
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-interface {p1, p0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 371
    :cond_0
    instance-of v1, p1, Lcom/annimon/stream/OptionalInt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 375
    :cond_1
    check-cast p1, Lcom/annimon/stream/OptionalInt;

    .line 376
    iget-boolean v1, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/annimon/stream/OptionalInt;->value:I

    iget p1, p1, Lcom/annimon/stream/OptionalInt;->value:I

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    iget-boolean p1, p1, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public executeIfAbsent(Ljava/lang/Runnable;)Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-object p0
.end method

.method public executeIfPresent(Lcom/annimon/stream/function/IntConsumer;)Lcom/annimon/stream/OptionalInt;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/annimon/stream/OptionalInt;->ifPresent(Lcom/annimon/stream/function/IntConsumer;)V

    return-object p0
.end method

.method public filter(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 196
    :cond_0
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public filterNot(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/OptionalInt;
    .locals 0

    .line 208
    invoke-static {p1}, Lcom/annimon/stream/function/IntPredicate$Util;->negate(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/function/IntPredicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/OptionalInt;->filter(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    return-object p1
.end method

.method public getAsInt()I
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->orElseThrow()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 389
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Lcom/annimon/stream/function/IntConsumer;)V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 124
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Lcom/annimon/stream/function/IntConsumer;Ljava/lang/Runnable;)V
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 139
    iget p2, p0, Lcom/annimon/stream/OptionalInt;->value:I

    invoke-interface {p1, p2}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    return v0
.end method

.method public map(Lcom/annimon/stream/function/IntUnaryOperator;)Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    return-object p1

    .line 223
    :cond_0
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    invoke-static {p1}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    return-object p1
.end method

.method public mapToDouble(Lcom/annimon/stream/function/IntToDoubleFunction;)Lcom/annimon/stream/OptionalDouble;
    .locals 2

    .line 268
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/annimon/stream/OptionalDouble;->empty()Lcom/annimon/stream/OptionalDouble;

    move-result-object p1

    return-object p1

    .line 269
    :cond_0
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalDouble;->of(D)Lcom/annimon/stream/OptionalDouble;

    move-result-object p1

    return-object p1
.end method

.method public mapToLong(Lcom/annimon/stream/function/IntToLongFunction;)Lcom/annimon/stream/OptionalLong;
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    return-object p1

    .line 254
    :cond_0
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    return-object p1
.end method

.method public mapToObj(Lcom/annimon/stream/function/IntFunction;)Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/IntFunction<",
            "TU;>;)",
            "Lcom/annimon/stream/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1

    .line 239
    :cond_0
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Optional;->ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public or(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/OptionalInt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "Lcom/annimon/stream/OptionalInt;",
            ">;)",
            "Lcom/annimon/stream/OptionalInt;"
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 294
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/annimon/stream/OptionalInt;

    return-object p1
.end method

.method public orElse(I)I
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/annimon/stream/OptionalInt;->value:I

    :cond_0
    return p1
.end method

.method public orElseGet(Lcom/annimon/stream/function/IntSupplier;)I
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/annimon/stream/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/IntSupplier;->getAsInt()I

    move-result p1

    :goto_0
    return p1
.end method

.method public orElseThrow()I
    .locals 2

    .line 330
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 333
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    return v0

    .line 331
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Lcom/annimon/stream/function/Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TX;>;)I^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 345
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 346
    iget p1, p0, Lcom/annimon/stream/OptionalInt;->value:I

    return p1

    .line 348
    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public stream()Lcom/annimon/stream/IntStream;
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    invoke-static {v0}, Lcom/annimon/stream/IntStream;->of(I)Lcom/annimon/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 400
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/annimon/stream/OptionalInt;->value:I

    .line 401
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "OptionalInt[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "OptionalInt.empty"

    :goto_0
    return-object v0
.end method
