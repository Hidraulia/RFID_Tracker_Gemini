.class Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;
.super Ljava/util/Hashtable;
.source "MsgBaseWriteEpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->ackUnpack()V
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
.field final synthetic this$0:Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;)V
    .locals 1

    .line 231
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;->this$0:Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    const/4 p1, 0x0

    .line 233
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Success."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 234
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Antenna port parameter error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 235
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Filter parameter error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    .line 236
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Write parameter error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    .line 237
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "CRC check error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x5

    .line 238
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Underpower error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x6

    .line 239
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Data area overflow."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x7

    .line 240
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Data area locked."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x8

    .line 241
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Access password error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x9

    .line 242
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Other error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xa

    .line 243
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Label is missing."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xb

    .line 244
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Send command error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
