.class final Lcom/annimon/stream/function/IndexedDoubleUnaryOperator$Util$1;
.super Ljava/lang/Object;
.source "IndexedDoubleUnaryOperator.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedDoubleUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedDoubleUnaryOperator$Util;->wrap(Lcom/annimon/stream/function/DoubleUnaryOperator;)Lcom/annimon/stream/function/IndexedDoubleUnaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$function:Lcom/annimon/stream/function/DoubleUnaryOperator;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/DoubleUnaryOperator;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedDoubleUnaryOperator$Util$1;->val$function:Lcom/annimon/stream/function/DoubleUnaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsDouble(ID)D
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedDoubleUnaryOperator$Util$1;->val$function:Lcom/annimon/stream/function/DoubleUnaryOperator;

    invoke-interface {p1, p2, p3}, Lcom/annimon/stream/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p1

    return-wide p1
.end method
