.class Lcom/example/rederdemo/ReadOrWriteActivity$29;
.super Ljava/lang/Object;
.source "ReadOrWriteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/ReadOrWriteActivity;->writeUser()V
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

    .line 1464
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$29;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1467
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;-><init>()V

    const-wide/16 v0, 0x1

    .line 1469
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setAntennaEnable(Ljava/lang/Long;)V

    const/4 v0, 0x3

    .line 1471
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setArea(I)V

    .line 1473
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$29;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_start:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setStart(I)V

    .line 1475
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$29;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_pas:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setHexPassword(Ljava/lang/String;)V

    .line 1477
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$29;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_value:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1478
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$29;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v1, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_value:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/example/rederdemo/util/ComputedPc;->getEPCLength(Landroid/widget/EditText;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const/16 v2, 0x30

    .line 1479
    invoke-static {v0, v1, v2}, Lcom/example/rederdemo/util/DataUtils;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 1480
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setHexWriteData(Ljava/lang/String;)V

    .line 1482
    new-instance v0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 1483
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$29;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v1, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_tid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1484
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 1485
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1486
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$29;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v1, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_tid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 1487
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$29;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v1, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_tid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1489
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    const/16 v1, 0x10

    .line 1490
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1491
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$29;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v1, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_epc:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 1492
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$29;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v1, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_epc:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 1494
    :goto_0
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 1496
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$29;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v0}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$700(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1497
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->getRtCode()B

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Write Success"

    .line 1498
    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_1

    .line 1500
    :cond_1
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
