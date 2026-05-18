.class public Lcom/annimon/stream/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/annimon/stream/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/Optional<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/annimon/stream/Optional;

    invoke-direct {v0}, Lcom/annimon/stream/Optional;-><init>()V

    sput-object v0, Lcom/annimon/stream/Optional;->EMPTY:Lcom/annimon/stream/Optional;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    return-void
.end method

.method public static empty()Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/annimon/stream/Optional;->EMPTY:Lcom/annimon/stream/Optional;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/annimon/stream/Optional;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Optional;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 45
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/annimon/stream/Optional;->of(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object p0

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
            "Lcom/annimon/stream/Optional<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    .line 165
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-interface {p1, p0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 373
    :cond_0
    instance-of v0, p1, Lcom/annimon/stream/Optional;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 377
    :cond_1
    check-cast p1, Lcom/annimon/stream/Optional;

    .line 378
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/annimon/stream/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public executeIfAbsent(Ljava/lang/Runnable;)Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 151
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-object p0
.end method

.method public executeIfPresent(Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;)",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p1}, Lcom/annimon/stream/Optional;->ifPresent(Lcom/annimon/stream/function/Consumer;)V

    return-object p0
.end method

.method public filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/annimon/stream/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public filterNot(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 190
    invoke-static {p1}, Lcom/annimon/stream/function/Predicate$Util;->negate(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Optional;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public flatMap(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;",
            "Lcom/annimon/stream/Optional<",
            "TU;>;>;)",
            "Lcom/annimon/stream/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/annimon/stream/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/annimon/stream/Optional;

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/annimon/stream/Optional;->orElseThrow()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    invoke-static {v0}, Lcom/annimon/stream/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ifPresent(Lcom/annimon/stream/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Lcom/annimon/stream/function/Consumer;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TU;>;)",
            "Lcom/annimon/stream/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/annimon/stream/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Optional;->ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public mapToBoolean(Lcom/annimon/stream/function/ToBooleanFunction;)Lcom/annimon/stream/OptionalBoolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ToBooleanFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/OptionalBoolean;"
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lcom/annimon/stream/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/annimon/stream/OptionalBoolean;->empty()Lcom/annimon/stream/OptionalBoolean;

    move-result-object p1

    return-object p1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/ToBooleanFunction;->applyAsBoolean(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/annimon/stream/OptionalBoolean;->of(Z)Lcom/annimon/stream/OptionalBoolean;

    move-result-object p1

    return-object p1
.end method

.method public mapToDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/OptionalDouble;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/OptionalDouble;"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/annimon/stream/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/annimon/stream/OptionalDouble;->empty()Lcom/annimon/stream/OptionalDouble;

    move-result-object p1

    return-object p1

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalDouble;->of(D)Lcom/annimon/stream/OptionalDouble;

    move-result-object p1

    return-object p1
.end method

.method public mapToInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/OptionalInt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ToIntFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/OptionalInt;"
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/annimon/stream/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    return-object p1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    return-object p1
.end method

.method public mapToLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/OptionalLong;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ToLongFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/OptionalLong;"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/annimon/stream/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    return-object p1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    return-object p1
.end method

.method public or(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "Lcom/annimon/stream/Optional<",
            "TT;>;>;)",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Lcom/annimon/stream/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 316
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/annimon/stream/Optional;

    return-object p1
.end method

.method public orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public orElseGet(Lcom/annimon/stream/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public orElseThrow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 349
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Lcom/annimon/stream/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "+TX;>;)TT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 364
    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public select(Ljava/lang/Class;)Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/annimon/stream/Optional<",
            "TR;>;"
        }
    .end annotation

    .line 299
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {p0}, Lcom/annimon/stream/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/annimon/stream/Optional;->ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public stream()Lcom/annimon/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lcom/annimon/stream/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/annimon/stream/Stream;->empty()Lcom/annimon/stream/Stream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 287
    iget-object v2, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/annimon/stream/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Optional[%s]"

    .line 389
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Optional.empty"

    :goto_0
    return-object v0
.end method
