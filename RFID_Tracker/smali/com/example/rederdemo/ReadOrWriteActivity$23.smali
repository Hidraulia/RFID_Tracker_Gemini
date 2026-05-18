.class Lcom/example/rederdemo/ReadOrWriteActivity$23;
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

    .line 1278
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$23;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1281
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;-><init>()V

    const-wide/16 v0, 0x1

    .line 1283
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setAntennaEnable(Ljava/lang/Long;)V

    const/4 v0, 0x3

    .line 1285
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setArea(I)V

    .line 1287
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$23;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_len:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1289
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setStart(I)V

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$23;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_value:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1294
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$23;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v1, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_value:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/example/rederdemo/util/ComputedPc;->getEPCLength(Landroid/widget/EditText;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const/16 v2, 0x30

    .line 1295
    invoke-static {v0, v1, v2}, Lcom/example/rederdemo/util/DataUtils;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 1296
    invoke-static {v0}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1297
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexWriteData(Ljava/lang/String;)V

    .line 1300
    :cond_1
    new-instance v0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 1301
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$23;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v1, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_tid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 1302
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    const/4 v1, 0x0

    .line 1303
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1304
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$23;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v1, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_tid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 1305
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$23;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v1, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_tid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 1307
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    const/16 v1, 0x20

    .line 1308
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1309
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$23;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v1, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_epc:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 1310
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$23;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v1, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_epc:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 1312
    :goto_0
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 1314
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$23;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_pas:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1315
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexPassword(Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$23;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v0}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$700(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1318
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtCode()B

    move-result v0

    if-nez v0, :cond_3

    .line 1319
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_1

    .line 1321
    :cond_3
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
