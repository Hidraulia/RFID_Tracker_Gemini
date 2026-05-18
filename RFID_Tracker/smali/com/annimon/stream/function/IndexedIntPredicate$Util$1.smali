.class final Lcom/annimon/stream/function/IndexedIntPredicate$Util$1;
.super Ljava/lang/Object;
.source "IndexedIntPredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedIntPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedIntPredicate$Util;->wrap(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/function/IndexedIntPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/annimon/stream/function/IntPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/IntPredicate;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedIntPredicate$Util$1;->val$predicate:Lcom/annimon/stream/function/IntPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(II)Z
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedIntPredicate$Util$1;->val$predicate:Lcom/annimon/stream/function/IntPredicate;

    invoke-interface {p1, p2}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    move-result p1

    return p1
.end method
