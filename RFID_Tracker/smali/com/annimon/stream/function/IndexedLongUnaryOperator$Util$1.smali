.class final Lcom/annimon/stream/function/IndexedLongUnaryOperator$Util$1;
.super Ljava/lang/Object;
.source "IndexedLongUnaryOperator.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedLongUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedLongUnaryOperator$Util;->wrap(Lcom/annimon/stream/function/LongUnaryOperator;)Lcom/annimon/stream/function/IndexedLongUnaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$function:Lcom/annimon/stream/function/LongUnaryOperator;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/LongUnaryOperator;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedLongUnaryOperator$Util$1;->val$function:Lcom/annimon/stream/function/LongUnaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsLong(IJ)J
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedLongUnaryOperator$Util$1;->val$function:Lcom/annimon/stream/function/LongUnaryOperator;

    invoke-interface {p1, p2, p3}, Lcom/annimon/stream/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p1

    return-wide p1
.end method
