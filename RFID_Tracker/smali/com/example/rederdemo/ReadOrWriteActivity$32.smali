.class Lcom/example/rederdemo/ReadOrWriteActivity$32;
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

    .line 1612
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1615
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p1}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$800(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    .line 1616
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;-><init>()V

    const-wide/16 v0, 0x1

    .line 1617
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 1618
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->way:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f090159

    if-ne p2, v2, :cond_0

    .line 1619
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V

    goto :goto_0

    .line 1621
    :cond_0
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V

    .line 1624
    :goto_0
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_mode:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    const/4 v2, 0x4

    if-eqz p2, :cond_1

    .line 1625
    new-instance p2, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 1626
    iget-object v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v3, v3, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_mode:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 1627
    iget-object v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v3, v3, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_start:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1628
    iget-object v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v3, v3, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_match_content:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {p2, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 1629
    iget-object v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v3, v3, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_match_content:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 1630
    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 1633
    :cond_1
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->read_tid_true:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    const/4 v3, 0x6

    if-eqz p2, :cond_3

    .line 1634
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>()V

    invoke-static {p2, v4}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$902(Lcom/example/rederdemo/ReadOrWriteActivity;Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    .line 1635
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$900(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    move-result-object p2

    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v4, v4, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_tid_mode:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setMode(I)V

    .line 1636
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_tid_len:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1637
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$900(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    move-result-object p2

    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v4, v4, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_tid_len:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setLen(I)V

    goto :goto_1

    .line 1639
    :cond_2
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$900(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setLen(I)V

    .line 1641
    :goto_1
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$900(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V

    .line 1643
    :cond_3
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->read_user_true:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1644
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-direct {v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;-><init>()V

    invoke-static {p2, v4}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1002(Lcom/example/rederdemo/ReadOrWriteActivity;Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    .line 1645
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_user_start:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 1646
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1000(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    move-result-object p2

    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v4, v4, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_user_start:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->setStart(I)V

    goto :goto_2

    .line 1648
    :cond_4
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1000(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->setStart(I)V

    .line 1650
    :goto_2
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_user_len:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1651
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1000(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    move-result-object p2

    iget-object v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v3, v3, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_user_len:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->setLen(I)V

    goto :goto_3

    .line 1653
    :cond_5
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1000(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->setLen(I)V

    .line 1655
    :goto_3
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1000(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)V

    .line 1657
    :cond_6
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->read_reserve_true:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1658
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    invoke-direct {v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;-><init>()V

    invoke-static {p2, v3}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1102(Lcom/example/rederdemo/ReadOrWriteActivity;Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    .line 1659
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_reserve_start:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 1660
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1100(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    move-result-object p2

    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_reserve_start:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;->setStart(I)V

    goto :goto_4

    .line 1662
    :cond_7
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1100(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;->setStart(I)V

    .line 1664
    :goto_4
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_reserve_len:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 1665
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1100(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    move-result-object p2

    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_reserve_len:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;->setLen(I)V

    goto :goto_5

    .line 1667
    :cond_8
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1100(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;->setLen(I)V

    .line 1669
    :goto_5
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1100(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadReserved(Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;)V

    .line 1672
    :cond_9
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->read_other_pas:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1673
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_pas:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 1674
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_pas:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setHexPassword(Ljava/lang/String;)V

    .line 1678
    :cond_a
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$700(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/dal/GClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1679
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1200(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    .line 1680
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtCode()B

    move-result p2

    if-nez p2, :cond_b

    .line 1681
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p1, v1}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1302(Lcom/example/rederdemo/ReadOrWriteActivity;Z)Z

    const-string p1, "Start ReadCard"

    .line 1682
    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_6

    .line 1684
    :cond_b
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$32;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->handlerStop:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1685
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_6
    return-void
.end method
