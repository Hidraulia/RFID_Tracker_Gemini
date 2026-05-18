.class final Lcom/annimon/stream/function/IndexedLongFunction$Util$1;
.super Ljava/lang/Object;
.source "IndexedLongFunction.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedLongFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedLongFunction$Util;->wrap(Lcom/annimon/stream/function/LongFunction;)Lcom/annimon/stream/function/IndexedLongFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/IndexedLongFunction<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/annimon/stream/function/LongFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/LongFunction;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedLongFunction$Util$1;->val$function:Lcom/annimon/stream/function/LongFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(IJ)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)TR;"
        }
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedLongFunction$Util$1;->val$function:Lcom/annimon/stream/function/LongFunction;

    invoke-interface {p1, p2, p3}, Lcom/annimon/stream/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
