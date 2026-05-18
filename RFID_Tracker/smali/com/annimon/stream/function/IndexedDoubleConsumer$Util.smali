.class public Lcom/annimon/stream/function/IndexedDoubleConsumer$Util;
.super Ljava/lang/Object;
.source "IndexedDoubleConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/IndexedDoubleConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(Lcom/annimon/stream/function/IntConsumer;Lcom/annimon/stream/function/DoubleConsumer;)Lcom/annimon/stream/function/IndexedDoubleConsumer;
    .locals 1

    .line 61
    new-instance v0, Lcom/annimon/stream/function/IndexedDoubleConsumer$Util$2;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/IndexedDoubleConsumer$Util$2;-><init>(Lcom/annimon/stream/function/IntConsumer;Lcom/annimon/stream/function/DoubleConsumer;)V

    return-object v0
.end method

.method public static andThen(Lcom/annimon/stream/function/IndexedDoubleConsumer;Lcom/annimon/stream/function/IndexedDoubleConsumer;)Lcom/annimon/stream/function/IndexedDoubleConsumer;
    .locals 1

    .line 35
    new-instance v0, Lcom/annimon/stream/function/IndexedDoubleConsumer$Util$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/IndexedDoubleConsumer$Util$1;-><init>(Lcom/annimon/stream/function/IndexedDoubleConsumer;Lcom/annimon/stream/function/IndexedDoubleConsumer;)V

    return-object v0
.end method
