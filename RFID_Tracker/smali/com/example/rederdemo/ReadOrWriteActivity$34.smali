.class Lcom/example/rederdemo/ReadOrWriteActivity$34;
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

    .line 1763
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1766
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p1}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$800(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    .line 1767
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;-><init>()V

    const-wide/16 v0, 0x1

    .line 1769
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setAntennaEnable(Ljava/lang/Long;)V

    .line 1771
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->way:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f090159

    if-ne p2, v2, :cond_0

    .line 1772
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setInventoryMode(I)V

    goto :goto_0

    .line 1774
    :cond_0
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setInventoryMode(I)V

    .line 1777
    :goto_0
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gb_read_check:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1779
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gb_read_mode:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-eqz p2, :cond_6

    .line 1781
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    if-ne p2, v1, :cond_1

    .line 1783
    invoke-virtual {v2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    const/16 p2, 0x10

    .line 1785
    invoke-virtual {v2, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    if-ne p2, v3, :cond_3

    const/16 p2, 0x20

    .line 1787
    invoke-virtual {v2, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, -0x4

    add-int/lit8 p2, p2, 0x30

    .line 1789
    invoke-virtual {v2, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 1791
    :goto_1
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_gb_start:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1792
    invoke-static {p2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1793
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1795
    :cond_4
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_gb_content:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1796
    invoke-static {p2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1797
    invoke-virtual {v2, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 1798
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    invoke-virtual {v2, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 1800
    :cond_5
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 1804
    :cond_6
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gb_read_check_tid:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1805
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_readTid_gb_content:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    .line 1806
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>()V

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    .line 1807
    :goto_2
    invoke-virtual {v2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setMode(I)V

    .line 1808
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->filter_read_gb_len:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setLen(I)V

    .line 1809
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V

    .line 1812
    :cond_8
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gb_read_check_user:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1813
    new-instance p2, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;

    invoke-direct {p2}, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;-><init>()V

    .line 1814
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->filter_read_gb_userChild:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    .line 1815
    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->setChildArea(I)V

    .line 1816
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->filter_read_gb_userChild_start:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->setStart(I)V

    .line 1817
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_gb_len:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->setLen(I)V

    .line 1818
    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;)V

    .line 1821
    :cond_9
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->filter_read_gb_userChild_pas:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1822
    invoke-static {p2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1823
    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setHexPassword(Ljava/lang/String;)V

    .line 1826
    :cond_a
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$700(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/dal/GClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1827
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1200(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    .line 1828
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->getRtCode()B

    move-result p2

    if-nez p2, :cond_b

    .line 1829
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p1, v1}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1302(Lcom/example/rederdemo/ReadOrWriteActivity;Z)Z

    const-string p1, "Start ReadCard"

    .line 1830
    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_3

    .line 1832
    :cond_b
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$34;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->handlerStop:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1833
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
