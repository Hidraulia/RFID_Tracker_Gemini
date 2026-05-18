.class final Lcom/annimon/stream/function/IndexedDoubleFunction$Util$1;
.super Ljava/lang/Object;
.source "IndexedDoubleFunction.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedDoubleFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedDoubleFunction$Util;->wrap(Lcom/annimon/stream/function/DoubleFunction;)Lcom/annimon/stream/function/IndexedDoubleFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/IndexedDoubleFunction<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/annimon/stream/function/DoubleFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/DoubleFunction;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedDoubleFunction$Util$1;->val$function:Lcom/annimon/stream/function/DoubleFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(ID)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ID)TR;"
        }
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedDoubleFunction$Util$1;->val$function:Lcom/annimon/stream/function/DoubleFunction;

    invoke-interface {p1, p2, p3}, Lcom/annimon/stream/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
