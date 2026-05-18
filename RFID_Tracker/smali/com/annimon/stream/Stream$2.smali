.class Lcom/annimon/stream/Stream$2;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Stream;->equalsOnly(Ljava/lang/Object;)Lcom/annimon/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/annimon/stream/Stream;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/annimon/stream/Stream;Ljava/lang/Object;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/annimon/stream/Stream$2;->this$0:Lcom/annimon/stream/Stream;

    iput-object p2, p0, Lcom/annimon/stream/Stream$2;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/annimon/stream/Stream$2;->val$object:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/annimon/stream/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
