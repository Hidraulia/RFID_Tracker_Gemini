.class public Lcom/example/rederdemo/UpgradeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "UpgradeActivity.java"


# instance fields
.field bin_file_path:Landroid/widget/EditText;

.field client:Lcom/gg/reader/api/dal/GClient;

.field numberProgressBar:Lcom/daimajia/numberprogressbar/NumberProgressBar;

.field select_bin_file:Landroid/widget/Button;

.field private upHandler:Landroid/os/Handler;

.field upRunning:Z

.field upgrade_btn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 47
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    iput-object v0, p0, Lcom/example/rederdemo/UpgradeActivity;->client:Lcom/gg/reader/api/dal/GClient;

    .line 152
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/example/rederdemo/UpgradeActivity$3;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/UpgradeActivity$3;-><init>(Lcom/example/rederdemo/UpgradeActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/example/rederdemo/UpgradeActivity;->upHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/example/rederdemo/UpgradeActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/example/rederdemo/UpgradeActivity;->upgradeBase()V

    return-void
.end method

.method private upgradeBase()V
    .locals 18

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 87
    :try_start_0
    iput-boolean v0, v1, Lcom/example/rederdemo/UpgradeActivity;->upRunning:Z

    .line 88
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/example/rederdemo/UpgradeActivity;->bin_file_path:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 95
    new-instance v7, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;

    invoke-direct {v7}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;-><init>()V

    const-wide/16 v8, 0x0

    .line 96
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->setPacketNumber(Ljava/lang/Long;)V

    .line 97
    iget-object v8, v1, Lcom/example/rederdemo/UpgradeActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v8, v7}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 98
    invoke-virtual {v7}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->getRtCode()B

    move-result v8

    if-eqz v8, :cond_0

    .line 99
    iget-object v8, v1, Lcom/example/rederdemo/UpgradeActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v8, v7}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 101
    :cond_0
    invoke-virtual {v7}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->getRtCode()B

    move-result v8

    if-eqz v8, :cond_1

    .line 102
    iput-boolean v2, v1, Lcom/example/rederdemo/UpgradeActivity;->upRunning:Z

    .line 103
    iget-object v0, v1, Lcom/example/rederdemo/UpgradeActivity;->upHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    const-wide/16 v8, 0x1

    move-wide v10, v8

    const/4 v12, 0x0

    .line 106
    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v13

    const/4 v14, -0x2

    const/4 v15, -0x1

    if-eq v13, v15, :cond_4

    .line 107
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->setPacketNumber(Ljava/lang/Long;)V

    .line 108
    invoke-virtual {v7, v3}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->setPacketContent([B)V

    .line 109
    iget-object v2, v1, Lcom/example/rederdemo/UpgradeActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v2, v7}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 110
    invoke-virtual {v7}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->getRtCode()B

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v7}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->getPacketNumber()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v2, v16, v10

    if-eqz v2, :cond_2

    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {v7, v15}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->setRtCode(B)V

    add-long/2addr v10, v8

    add-int/2addr v12, v13

    int-to-float v2, v12

    long-to-float v13, v5

    div-float/2addr v2, v13

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float v2, v2, v13

    float-to-int v2, v2

    .line 119
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 120
    iput v0, v13, Landroid/os/Message;->what:I

    .line 121
    iput v2, v13, Landroid/os/Message;->arg1:I

    .line 122
    iget-object v2, v1, Lcom/example/rederdemo/UpgradeActivity;->upHandler:Landroid/os/Handler;

    invoke-virtual {v2, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x0

    goto :goto_0

    .line 111
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/example/rederdemo/UpgradeActivity;->upHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    invoke-virtual {v7, v14}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->setRtCode(B)V

    .line 125
    :cond_4
    invoke-virtual {v7}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->getRtCode()B

    move-result v0

    if-eq v0, v14, :cond_6

    const-string v0, "FFFFFFFF"

    const/16 v2, 0x10

    .line 126
    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->setPacketNumber(Ljava/lang/Long;)V

    const/4 v0, 0x0

    .line 127
    check-cast v0, [B

    invoke-virtual {v7, v0}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->setPacketContent([B)V

    .line 128
    iget-object v0, v1, Lcom/example/rederdemo/UpgradeActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, v7}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 129
    invoke-virtual {v7}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->getRtCode()B

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    iget-object v0, v1, Lcom/example/rederdemo/UpgradeActivity;->upHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 132
    :cond_5
    iget-object v0, v1, Lcom/example/rederdemo/UpgradeActivity;->upHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-wide/16 v2, 0x7d0

    .line 133
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 134
    iget-object v0, v1, Lcom/example/rederdemo/UpgradeActivity;->client:Lcom/gg/reader/api/dal/GClient;

    new-instance v2, Lcom/gg/reader/api/protocol/gx/MsgAppReset;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/MsgAppReset;-><init>()V

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 137
    :cond_6
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    const/4 v2, 0x0

    .line 138
    iput-boolean v2, v1, Lcom/example/rederdemo/UpgradeActivity;->upRunning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "upgrade"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 141
    iput-boolean v2, v1, Lcom/example/rederdemo/UpgradeActivity;->upRunning:Z

    .line 142
    new-instance v2, Lcom/example/rederdemo/UpgradeActivity$2;

    invoke-direct {v2, v1, v0}, Lcom/example/rederdemo/UpgradeActivity$2;-><init>(Lcom/example/rederdemo/UpgradeActivity;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/example/rederdemo/UpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 178
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    .line 183
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 184
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    const-string v0, ".bin"

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    if-eq p3, p1, :cond_1

    .line 185
    invoke-static {p0, p2}, Lcom/example/rederdemo/util/UriUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 186
    iget-object p2, p0, Lcom/example/rederdemo/UpgradeActivity;->bin_file_path:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f1001ae

    .line 188
    invoke-virtual {p0, p1}, Lcom/example/rederdemo/UpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 52
    invoke-virtual {p0, p1}, Lcom/example/rederdemo/UpgradeActivity;->setContentView(I)V

    .line 53
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public selectBinFileEvent()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/example/rederdemo/UpgradeActivity;->bin_file_path:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/example/rederdemo/UpgradeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public upgradeEvent()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/example/rederdemo/UpgradeActivity;->bin_file_path:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/example/rederdemo/UpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/example/rederdemo/UpgradeActivity;->upRunning:Z

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/example/rederdemo/UpgradeActivity;->numberProgressBar:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/daimajia/numberprogressbar/NumberProgressBar;->setProgress(I)V

    .line 73
    new-instance v0, Lcom/example/rederdemo/UpgradeActivity$1;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/UpgradeActivity$1;-><init>(Lcom/example/rederdemo/UpgradeActivity;)V

    invoke-static {v0}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->run(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/example/rederdemo/UpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
