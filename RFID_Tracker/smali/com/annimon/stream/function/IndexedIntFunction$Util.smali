.class public Lcom/annimon/stream/function/IndexedIntFunction$Util;
.super Ljava/lang/Object;
.source "IndexedIntFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/IndexedIntFunction;
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

.method public static wrap(Lcom/annimon/stream/function/IntFunction;)Lcom/annimon/stream/function/IndexedIntFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/IntFunction<",
            "+TR;>;)",
            "Lcom/annimon/stream/function/IndexedIntFunction<",
            "TR;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/annimon/stream/function/IndexedIntFunction$Util$1;

    invoke-direct {v0, p0}, Lcom/annimon/stream/function/IndexedIntFunction$Util$1;-><init>(Lcom/annimon/stream/function/IntFunction;)V

    return-object v0
.end method
