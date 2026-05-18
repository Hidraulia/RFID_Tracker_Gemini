.class Lcom/example/rederdemo/ReadOrWriteActivity$25;
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

    .line 1345
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$25;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1348
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;-><init>()V

    const-wide/16 v0, 0x1

    .line 1350
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->setAntennaEnable(Ljava/lang/Long;)V

    .line 1352
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$25;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_6b_user_tid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->setHexMatchTid(Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$25;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_6b_user_start:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1356
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->setStart(I)V

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$25;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_6b_user_value:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1360
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$25;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v1, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->w_6b_user_value:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/example/rederdemo/util/ComputedPc;->getEPCLength(Landroid/widget/EditText;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x30

    .line 1361
    invoke-static {v0, v1, v2}, Lcom/example/rederdemo/util/DataUtils;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1363
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->setHexWriteData(Ljava/lang/String;)V

    .line 1366
    :cond_1
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$25;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v0}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$700(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1367
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->getRtCode()B

    move-result v0

    if-nez v0, :cond_2

    .line 1368
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 1370
    :cond_2
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
