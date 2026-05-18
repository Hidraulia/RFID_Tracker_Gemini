.class Lcom/example/rederdemo/ReadOrWriteActivity$17;
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

.field final synthetic val$tagInfo:Lcom/example/rederdemo/entity/TagInfo;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/ReadOrWriteActivity;Lcom/example/rederdemo/entity/TagInfo;)V
    .locals 0

    .line 1087
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$17;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iput-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$17;->val$tagInfo:Lcom/example/rederdemo/entity/TagInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1090
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$17;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p1, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_value:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1091
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;-><init>()V

    const-wide/16 v0, 0x1

    .line 1093
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setAntennaEnable(Ljava/lang/Long;)V

    const/16 v0, 0x10

    .line 1095
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setArea(I)V

    const/4 v1, 0x0

    .line 1097
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setStart(I)V

    .line 1099
    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$17;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v2, v2, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_value:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/example/rederdemo/util/ComputedPc;->getEPCLength(Landroid/widget/EditText;)I

    move-result v2

    .line 1100
    invoke-static {v2}, Lcom/example/rederdemo/util/ComputedPc;->getGbPc(I)Ljava/lang/String;

    move-result-object v3

    .line 1101
    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity$17;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v4, v4, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v2, v2, 0x4

    const/16 v5, 0x30

    invoke-static {v4, v2, v5}, Lcom/example/rederdemo/util/DataUtils;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    .line 1102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1103
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setHexWriteData(Ljava/lang/String;)V

    .line 1106
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 1107
    iget-object v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity$17;->val$tagInfo:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1108
    invoke-virtual {v2, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 1109
    invoke-virtual {v2, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1110
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$17;->val$tagInfo:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 1111
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$17;->val$tagInfo:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    goto :goto_0

    .line 1113
    :cond_0
    invoke-virtual {v2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 1114
    invoke-virtual {v2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1115
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$17;->val$tagInfo:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 1116
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$17;->val$tagInfo:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 1118
    :goto_0
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 1121
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$17;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_pas:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setHexPassword(Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$17;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v0}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$700(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1124
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->getRtCode()B

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Write Success"

    .line 1125
    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_1

    .line 1127
    :cond_1
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "Not Null"

    .line 1130
    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
