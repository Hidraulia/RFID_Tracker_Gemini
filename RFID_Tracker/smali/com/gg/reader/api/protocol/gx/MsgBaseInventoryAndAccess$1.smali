.class Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess$1;
.super Ljava/util/Hashtable;
.source "MsgBaseInventoryAndAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;->ackUnpack()V
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
.field final synthetic this$0:Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;)V
    .locals 1

    .line 124
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess$1;->this$0:Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    const/4 p1, 0x0

    .line 126
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Success."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 127
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Antenna port parameter error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 128
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Filter parameter error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    .line 129
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TID parameter error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    .line 130
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "User parameter error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x5

    .line 131
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Reserve parameter error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x6

    .line 132
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Other error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryAndAccess$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
