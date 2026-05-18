.class public final Lcom/annimon/stream/OptionalBoolean;
.super Ljava/lang/Object;
.source "OptionalBoolean.java"


# static fields
.field private static final EMPTY:Lcom/annimon/stream/OptionalBoolean;

.field private static final FALSE:Lcom/annimon/stream/OptionalBoolean;

.field private static final TRUE:Lcom/annimon/stream/OptionalBoolean;


# instance fields
.field private final isPresent:Z

.field private final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/annimon/stream/OptionalBoolean;

    invoke-direct {v0}, Lcom/annimon/stream/OptionalBoolean;-><init>()V

    sput-object v0, Lcom/annimon/stream/OptionalBoolean;->EMPTY:Lcom/annimon/stream/OptionalBoolean;

    .line 21
    new-instance v0, Lcom/annimon/stream/OptionalBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/annimon/stream/OptionalBoolean;-><init>(Z)V

    sput-object v0, Lcom/annimon/stream/OptionalBoolean;->TRUE:Lcom/annimon/stream/OptionalBoolean;

    .line 22
    new-instance v0, Lcom/annimon/stream/OptionalBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/annimon/stream/OptionalBoolean;-><init>(Z)V

    sput-object v0, Lcom/annimon/stream/OptionalBoolean;->FALSE:Lcom/annimon/stream/OptionalBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 59
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 64
    iput-boolean p1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    return-void
.end method

.method public static empty()Lcom/annimon/stream/OptionalBoolean;
    .locals 1

    .line 30
    sget-object v0, Lcom/annimon/stream/OptionalBoolean;->EMPTY:Lcom/annimon/stream/OptionalBoolean;

    return-object v0
.end method

.method public static of(Z)Lcom/annimon/stream/OptionalBoolean;
    .locals 0

    if-eqz p0, :cond_0

    .line 40
    sget-object p0, Lcom/annimon/stream/OptionalBoolean;->TRUE:Lcom/annimon/stream/OptionalBoolean;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/annimon/stream/OptionalBoolean;->FALSE:Lcom/annimon/stream/OptionalBoolean;

    :goto_0
    return-object p0
.end method

.method public static ofNullable(Ljava/lang/Boolean;)Lcom/annimon/stream/OptionalBoolean;
    .locals 0

    if-nez p0, :cond_0

    .line 51
    sget-object p0, Lcom/annimon/stream/OptionalBoolean;->EMPTY:Lcom/annimon/stream/OptionalBoolean;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/annimon/stream/OptionalBoolean;->of(Z)Lcom/annimon/stream/OptionalBoolean;

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
            "Lcom/annimon/stream/OptionalBoolean;",
            "TR;>;)TR;"
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
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 298
    :cond_0
    instance-of v1, p1, Lcom/annimon/stream/OptionalBoolean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 302
    :cond_1
    check-cast p1, Lcom/annimon/stream/OptionalBoolean;

    .line 303
    iget-boolean v1, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    iget-boolean p1, p1, Lcom/annimon/stream/OptionalBoolean;->value:Z

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    iget-boolean p1, p1, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public executeIfAbsent(Ljava/lang/Runnable;)Lcom/annimon/stream/OptionalBoolean;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-object p0
.end method

.method public executeIfPresent(Lcom/annimon/stream/function/BooleanConsumer;)Lcom/annimon/stream/OptionalBoolean;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lcom/annimon/stream/OptionalBoolean;->ifPresent(Lcom/annimon/stream/function/BooleanConsumer;)V

    return-object p0
.end method

.method public filter(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/OptionalBoolean;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 178
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/BooleanPredicate;->test(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/annimon/stream/OptionalBoolean;->empty()Lcom/annimon/stream/OptionalBoolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public filterNot(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/OptionalBoolean;
    .locals 0

    .line 190
    invoke-static {p1}, Lcom/annimon/stream/function/BooleanPredicate$Util;->negate(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/function/BooleanPredicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/OptionalBoolean;->filter(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/OptionalBoolean;

    move-result-object p1

    return-object p1
.end method

.method public getAsBoolean()Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->orElseThrow()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Lcom/annimon/stream/function/BooleanConsumer;)V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_0

    .line 108
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/BooleanConsumer;->accept(Z)V

    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Lcom/annimon/stream/function/BooleanConsumer;Ljava/lang/Runnable;)V
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_0

    .line 123
    iget-boolean p2, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    invoke-interface {p1, p2}, Lcom/annimon/stream/function/BooleanConsumer;->accept(Z)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    return v0
.end method

.method public map(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/OptionalBoolean;
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-static {}, Lcom/annimon/stream/OptionalBoolean;->empty()Lcom/annimon/stream/OptionalBoolean;

    move-result-object p1

    return-object p1

    .line 206
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/BooleanPredicate;->test(Z)Z

    move-result p1

    invoke-static {p1}, Lcom/annimon/stream/OptionalBoolean;->of(Z)Lcom/annimon/stream/OptionalBoolean;

    move-result-object p1

    return-object p1
.end method

.method public mapToObj(Lcom/annimon/stream/function/BooleanFunction;)Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/BooleanFunction<",
            "TU;>;)",
            "Lcom/annimon/stream/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/BooleanFunction;->apply(Z)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Optional;->ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public or(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/OptionalBoolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "Lcom/annimon/stream/OptionalBoolean;",
            ">;)",
            "Lcom/annimon/stream/OptionalBoolean;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 240
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/annimon/stream/OptionalBoolean;

    return-object p1
.end method

.method public orElse(Z)Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    :cond_0
    return p1
.end method

.method public orElseGet(Lcom/annimon/stream/function/BooleanSupplier;)Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    :goto_0
    return p1
.end method

.method public orElseThrow()Z
    .locals 2

    .line 273
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_0

    .line 276
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    return v0

    .line 274
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Lcom/annimon/stream/function/Supplier;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TX;>;)Z^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 288
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_0

    .line 289
    iget-boolean p1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    return p1

    .line 291
    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    if-eqz v0, :cond_0

    const-string v0, "OptionalBoolean[true]"

    goto :goto_0

    :cond_0
    const-string v0, "OptionalBoolean[false]"

    goto :goto_0

    :cond_1
    const-string v0, "OptionalBoolean.empty"

    :goto_0
    return-object v0
.end method
