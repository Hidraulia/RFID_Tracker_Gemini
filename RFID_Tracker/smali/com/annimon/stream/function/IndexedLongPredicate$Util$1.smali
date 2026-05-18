.class final Lcom/annimon/stream/function/IndexedLongPredicate$Util$1;
.super Ljava/lang/Object;
.source "IndexedLongPredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedLongPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedLongPredicate$Util;->wrap(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/function/IndexedLongPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/annimon/stream/function/LongPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/LongPredicate;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedLongPredicate$Util$1;->val$predicate:Lcom/annimon/stream/function/LongPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(IJ)Z
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedLongPredicate$Util$1;->val$predicate:Lcom/annimon/stream/function/LongPredicate;

    invoke-interface {p1, p2, p3}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    move-result p1

    return p1
.end method
