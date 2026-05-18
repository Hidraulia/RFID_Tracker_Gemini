.class public Lcom/annimon/stream/function/IndexedLongFunction$Util;
.super Ljava/lang/Object;
.source "IndexedLongFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/IndexedLongFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Lcom/annimon/stream/function/LongFunction;)Lcom/annimon/stream/function/IndexedLongFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/LongFunction<",
            "+TR;>;)",
            "Lcom/annimon/stream/function/IndexedLongFunction<",
            "TR;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/annimon/stream/function/IndexedLongFunction$Util$1;

    invoke-direct {v0, p0}, Lcom/annimon/stream/function/IndexedLongFunction$Util$1;-><init>(Lcom/annimon/stream/function/LongFunction;)V

    return-object v0
.end method
