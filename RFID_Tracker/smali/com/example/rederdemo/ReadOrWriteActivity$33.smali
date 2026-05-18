.class Lcom/example/rederdemo/ReadOrWriteActivity$33;
.super Ljava/lang/Object;
.source "ReadOrWriteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/ReadOrWriteActivity;->cusRead()V
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

    .line 1700
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$33;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1703
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$33;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p1}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$800(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    .line 1704
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;-><init>()V

    const-wide/16 v0, 0x1

    .line 1706
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setAntennaEnable(Ljava/lang/Long;)V

    .line 1708
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$33;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->way:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f090159

    if-ne p2, v2, :cond_0

    .line 1709
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setInventoryMode(I)V

    goto :goto_0

    .line 1711
    :cond_0
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setInventoryMode(I)V

    .line 1714
    :goto_0
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$33;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_6b_content:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-nez p2, :cond_1

    .line 1716
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setArea(I)V

    goto :goto_2

    :cond_1
    if-ne p2, v1, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    .line 1718
    :goto_1
    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setArea(I)V

    .line 1720
    new-instance p2, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    invoke-direct {p2}, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;-><init>()V

    .line 1721
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$33;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_6b_start:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->setStart(I)V

    .line 1722
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$33;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_6b_len:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->setLen(I)V

    .line 1723
    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setReadUserdata(Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;)V

    .line 1727
    :goto_2
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$33;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_filter_6b_tid:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1728
    invoke-static {p2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1729
    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setHexMatchTid(Ljava/lang/String;)V

    .line 1732
    :cond_3
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$33;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$700(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/dal/GClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1733
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$33;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1200(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    .line 1734
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->getRtCode()B

    move-result p2

    if-nez p2, :cond_4

    .line 1735
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$33;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p1, v1}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1302(Lcom/example/rederdemo/ReadOrWriteActivity;Z)Z

    const-string p1, "Start ReadCard"

    .line 1736
    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_3

    .line 1738
    :cond_4
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$33;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->handlerStop:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1739
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
