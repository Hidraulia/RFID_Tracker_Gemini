.class final Lcom/annimon/stream/function/Predicate$Util$4;
.super Ljava/lang/Object;
.source "Predicate.java"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/Predicate$Util;->or(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;[Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Predicate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$p1:Lcom/annimon/stream/function/Predicate;

.field final synthetic val$p2:Lcom/annimon/stream/function/Predicate;

.field final synthetic val$rest:[Lcom/annimon/stream/function/Predicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;[Lcom/annimon/stream/function/Predicate;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/annimon/stream/function/Predicate$Util$4;->val$p1:Lcom/annimon/stream/function/Predicate;

    iput-object p2, p0, Lcom/annimon/stream/function/Predicate$Util$4;->val$p2:Lcom/annimon/stream/function/Predicate;

    iput-object p3, p0, Lcom/annimon/stream/function/Predicate$Util$4;->val$rest:[Lcom/annimon/stream/function/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/annimon/stream/function/Predicate$Util$4;->val$p1:Lcom/annimon/stream/function/Predicate;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/annimon/stream/function/Predicate$Util$4;->val$p2:Lcom/annimon/stream/function/Predicate;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/annimon/stream/function/Predicate$Util$4;->val$rest:[Lcom/annimon/stream/function/Predicate;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 117
    invoke-interface {v5, p1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return v1
.end method
