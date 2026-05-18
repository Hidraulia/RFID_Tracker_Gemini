.class final Lcom/annimon/stream/Collectors$13;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiConsumer<",
        "Ljava/lang/StringBuilder;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$delimiter:Ljava/lang/CharSequence;

.field final synthetic val$prefix:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/annimon/stream/Collectors$13;->val$delimiter:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/annimon/stream/Collectors$13;->val$prefix:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 402
    check-cast p1, Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lcom/annimon/stream/Collectors$13;->accept(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public accept(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .locals 1

    .line 405
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/annimon/stream/Collectors$13;->val$delimiter:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/Collectors$13;->val$prefix:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 410
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method
