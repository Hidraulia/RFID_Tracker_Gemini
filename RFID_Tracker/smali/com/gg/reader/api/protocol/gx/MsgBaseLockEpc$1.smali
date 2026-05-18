.class Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc$1;
.super Ljava/util/Hashtable;
.source "MsgBaseLockEpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->ackUnpack()V
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
.field final synthetic this$0:Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;)V
    .locals 1

    .line 143
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc$1;->this$0:Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    const/4 p1, 0x0

    .line 145
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Success."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 146
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Antenna port parameter error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 147
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Filter parameter error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    .line 148
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Lock parameter error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    .line 149
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "CRC check error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x5

    .line 150
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Underpower error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x6

    .line 151
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Data area overflow."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x7

    .line 152
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Data area locked."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x8

    .line 153
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Access password error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x9

    .line 154
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Other error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xa

    .line 155
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Label is missing."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xb

    .line 156
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Send command error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
