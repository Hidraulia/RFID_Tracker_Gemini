.class Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock$1;
.super Ljava/util/Hashtable;
.source "MsgAppSetReadiotLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;->ackUnpack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable<",
        "Ljava/lang/Byte;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock$1;->this$0:Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    const/4 p1, 0x0

    .line 62
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Success."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 63
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Set Fail."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetReadiotLock$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
