.class public Lcom/annimon/stream/function/Predicate$Util;
.super Ljava/lang/Object;
.source "Predicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/annimon/stream/function/Predicate$Util$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/Predicate$Util$1;-><init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)V

    return-object v0
.end method

.method public static varargs and(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;[Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;[",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Objects;->requireNonNullElements(Ljava/util/Collection;)Ljava/util/Collection;

    .line 62
    new-instance v0, Lcom/annimon/stream/function/Predicate$Util$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/annimon/stream/function/Predicate$Util$2;-><init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;[Lcom/annimon/stream/function/Predicate;)V

    return-object v0
.end method

.method public static negate(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/annimon/stream/function/Predicate$Util$6;

    invoke-direct {v0, p0}, Lcom/annimon/stream/function/Predicate$Util$6;-><init>(Lcom/annimon/stream/function/Predicate;)V

    return-object v0
.end method

.method public static notNull()Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/annimon/stream/function/Predicate$Util$7;

    invoke-direct {v0}, Lcom/annimon/stream/function/Predicate$Util$7;-><init>()V

    return-object v0
.end method

.method public static or(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/annimon/stream/function/Predicate$Util$3;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/Predicate$Util$3;-><init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)V

    return-object v0
.end method

.method public static varargs or(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;[Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;[",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 107
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Objects;->requireNonNullElements(Ljava/util/Collection;)Ljava/util/Collection;

    .line 111
    new-instance v0, Lcom/annimon/stream/function/Predicate$Util$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/annimon/stream/function/Predicate$Util$4;-><init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;[Lcom/annimon/stream/function/Predicate;)V

    return-object v0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowablePredicate;)Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowablePredicate<",
            "-TT;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    invoke-static {p0, v0}, Lcom/annimon/stream/function/Predicate$Util;->safe(Lcom/annimon/stream/function/ThrowablePredicate;Z)Lcom/annimon/stream/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowablePredicate;Z)Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowablePredicate<",
            "-TT;",
            "Ljava/lang/Throwable;",
            ">;Z)",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 197
    new-instance v0, Lcom/annimon/stream/function/Predicate$Util$8;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/Predicate$Util$8;-><init>(Lcom/annimon/stream/function/ThrowablePredicate;Z)V

    return-object v0
.end method

.method public static xor(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/annimon/stream/function/Predicate$Util$5;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/Predicate$Util$5;-><init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)V

    return-object v0
.end method
