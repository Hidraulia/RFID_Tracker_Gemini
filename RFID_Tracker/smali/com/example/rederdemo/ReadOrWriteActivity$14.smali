.class Lcom/example/rederdemo/ReadOrWriteActivity$14;
.super Ljava/lang/Object;
.source "ReadOrWriteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/ReadOrWriteActivity;->writeEPC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/ReadOrWriteActivity;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V
    .locals 0

    .line 999
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$14;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1002
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;-><init>()V

    const-wide/16 v0, 0x1

    .line 1004
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setAntennaEnable(Ljava/lang/Long;)V

    const/4 v0, 0x1

    .line 1006
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setArea(I)V

    .line 1008
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setStart(I)V

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$14;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v2, v2, Lcom/example/rederdemo/ReadOrWriteActivity;->w_value:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/example/rederdemo/util/ComputedPc;->getEPCLength(Landroid/widget/EditText;)I

    move-result v2

    invoke-static {v2}, Lcom/example/rederdemo/util/ComputedPc;->getPc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$14;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v2, v2, Lcom/example/rederdemo/ReadOrWriteActivity;->w_value:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity$14;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v3, v3, Lcom/example/rederdemo/ReadOrWriteActivity;->w_value:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/example/rederdemo/util/ComputedPc;->getEPCLength(Landroid/widget/EditText;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    const/16 v4, 0x30

    invoke-static {v2, v3, v4}, Lcom/example/rederdemo/util/DataUtils;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1011
    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1012
    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setBwriteData([B)V

    .line 1015
    :cond_0
    new-instance v1, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 1016
    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$14;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v2, v2, Lcom/example/rederdemo/ReadOrWriteActivity;->w_tid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x2

    .line 1017
    invoke-virtual {v1, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 1018
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$14;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_tid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1019
    invoke-virtual {v1, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1020
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$14;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_tid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_0

    .line 1022
    :cond_1
    invoke-virtual {v1, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 1023
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$14;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_epc:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 1024
    invoke-virtual {v1, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1025
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$14;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_epc:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 1027
    :goto_0
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 1029
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$14;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_pas:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexPassword(Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$14;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v0}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$700(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1033
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtCode()B

    move-result v0

    if-nez v0, :cond_2

    .line 1034
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_1

    .line 1036
    :cond_2
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
