.class final Lcom/annimon/stream/function/IndexedIntFunction$Util$1;
.super Ljava/lang/Object;
.source "IndexedIntFunction.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedIntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedIntFunction$Util;->wrap(Lcom/annimon/stream/function/IntFunction;)Lcom/annimon/stream/function/IndexedIntFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/IndexedIntFunction<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/annimon/stream/function/IntFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/IntFunction;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedIntFunction$Util$1;->val$function:Lcom/annimon/stream/function/IntFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TR;"
        }
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedIntFunction$Util$1;->val$function:Lcom/annimon/stream/function/IntFunction;

    invoke-interface {p1, p2}, Lcom/annimon/stream/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
