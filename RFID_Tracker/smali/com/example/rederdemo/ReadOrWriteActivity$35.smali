.class Lcom/example/rederdemo/ReadOrWriteActivity$35;
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

    .line 1857
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1860
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p1}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$800(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    .line 1861
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;-><init>()V

    const-wide/16 v0, 0x1

    .line 1863
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setAntennaEnable(Ljava/lang/Long;)V

    .line 1865
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->way:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f090159

    if-ne p2, v2, :cond_0

    .line 1866
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setInventoryMode(I)V

    goto :goto_0

    .line 1868
    :cond_0
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setInventoryMode(I)V

    .line 1871
    :goto_0
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gjb_read_check:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1872
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gjb_read_mode:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-eqz p2, :cond_7

    .line 1874
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    const/4 v3, 0x4

    if-ne p2, v1, :cond_1

    .line 1876
    invoke-virtual {v2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 1878
    invoke-virtual {v2, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    if-ne p2, v5, :cond_3

    .line 1880
    invoke-virtual {v2, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    goto :goto_1

    :cond_3
    if-ne p2, v3, :cond_4

    .line 1882
    invoke-virtual {v2, v5}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 1884
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_gjb_start:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1885
    invoke-static {p2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1886
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1888
    :cond_5
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_gjb_content:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1889
    invoke-static {p2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1890
    invoke-virtual {v2, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 1891
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    invoke-virtual {v2, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 1893
    :cond_6
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 1897
    :cond_7
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gjb_read_check_tid:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1898
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_readTid_gjb_content:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    .line 1899
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>()V

    if-nez p2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x1

    .line 1900
    :goto_2
    invoke-virtual {v2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setMode(I)V

    .line 1901
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->filter_read_gjb_len:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setLen(I)V

    .line 1902
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V

    .line 1905
    :cond_9
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gjb_read_check_user:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1906
    new-instance p2, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-direct {p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;-><init>()V

    .line 1907
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->filter_read_gjb_user_start:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->setStart(I)V

    .line 1908
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_gjb_user_len:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->setLen(I)V

    .line 1909
    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)V

    .line 1912
    :cond_a
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->filter_read_gjb_pas:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1913
    invoke-static {p2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1914
    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setHexPassword(Ljava/lang/String;)V

    .line 1917
    :cond_b
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$700(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/dal/GClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1918
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->getRtCode()B

    move-result p2

    if-nez p2, :cond_c

    const-string p1, "Start ReadCard"

    .line 1919
    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    .line 1920
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p1, v1}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1302(Lcom/example/rederdemo/ReadOrWriteActivity;Z)Z

    .line 1921
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p1}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1200(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    .line 1922
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p1}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1400(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    goto :goto_3

    .line 1924
    :cond_c
    iget-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$35;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p2, p2, Lcom/example/rederdemo/ReadOrWriteActivity;->handlerStop:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1925
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
