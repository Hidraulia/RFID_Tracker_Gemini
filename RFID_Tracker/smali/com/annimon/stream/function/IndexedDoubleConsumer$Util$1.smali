.class final Lcom/annimon/stream/function/IndexedDoubleConsumer$Util$1;
.super Ljava/lang/Object;
.source "IndexedDoubleConsumer.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedDoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedDoubleConsumer$Util;->andThen(Lcom/annimon/stream/function/IndexedDoubleConsumer;Lcom/annimon/stream/function/IndexedDoubleConsumer;)Lcom/annimon/stream/function/IndexedDoubleConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c1:Lcom/annimon/stream/function/IndexedDoubleConsumer;

.field final synthetic val$c2:Lcom/annimon/stream/function/IndexedDoubleConsumer;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/IndexedDoubleConsumer;Lcom/annimon/stream/function/IndexedDoubleConsumer;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedDoubleConsumer$Util$1;->val$c1:Lcom/annimon/stream/function/IndexedDoubleConsumer;

    iput-object p2, p0, Lcom/annimon/stream/function/IndexedDoubleConsumer$Util$1;->val$c2:Lcom/annimon/stream/function/IndexedDoubleConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(ID)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/annimon/stream/function/IndexedDoubleConsumer$Util$1;->val$c1:Lcom/annimon/stream/function/IndexedDoubleConsumer;

    invoke-interface {v0, p1, p2, p3}, Lcom/annimon/stream/function/IndexedDoubleConsumer;->accept(ID)V

    .line 39
    iget-object v0, p0, Lcom/annimon/stream/function/IndexedDoubleConsumer$Util$1;->val$c2:Lcom/annimon/stream/function/IndexedDoubleConsumer;

    invoke-interface {v0, p1, p2, p3}, Lcom/annimon/stream/function/IndexedDoubleConsumer;->accept(ID)V

    return-void
.end method
