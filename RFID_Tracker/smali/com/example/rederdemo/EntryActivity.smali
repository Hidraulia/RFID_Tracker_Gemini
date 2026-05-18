.class public Lcom/example/rederdemo/EntryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "EntryActivity.java"


# instance fields
.field client:Lcom/gg/reader/api/dal/GClient;

.field connect_param:Landroid/widget/TextView;

.field private isClient:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/example/rederdemo/EntryActivity;->isClient:Z

    .line 38
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    iput-object v0, p0, Lcom/example/rederdemo/EntryActivity;->client:Lcom/gg/reader/api/dal/GClient;

    return-void
.end method

.method static synthetic access$000(Lcom/example/rederdemo/EntryActivity;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/example/rederdemo/EntryActivity;->isClient:Z

    return p0
.end method

.method private init()V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 135
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 136
    aget v4, v1, v3

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/example/rederdemo/EntryActivity;->openReader(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "/dev/ttyS3:"

    if-eqz v5, :cond_0

    .line 139
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v5

    new-instance v7, Lcom/example/rederdemo/EntryActivity$2;

    invoke-direct {v7, p0}, Lcom/example/rederdemo/EntryActivity$2;-><init>(Lcom/example/rederdemo/EntryActivity;)V

    iput-object v7, v5, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    const/4 v5, 0x1

    .line 150
    iput-boolean v5, p0, Lcom/example/rederdemo/EntryActivity;->isClient:Z

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/example/rederdemo/EntryActivity;->setConnect_param(Ljava/lang/String;)V

    const-string v4, "\u8fde\u63a5\u6210\u529f"

    .line 152
    invoke-static {v4}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_0
    iput-boolean v2, p0, Lcom/example/rederdemo/EntryActivity;->isClient:Z

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/example/rederdemo/EntryActivity;->setConnect_param(Ljava/lang/String;)V

    const-string v4, "\u8fde\u63a5\u5931\u8d25"

    .line 156
    invoke-static {v4}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x70800
        0x1c200
    .end array-data
.end method

.method private openReader(Ljava/lang/String;)Z
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity;->client:Lcom/gg/reader/api/dal/GClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/dev/ttyS3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/gg/reader/api/dal/GClient;->openAndroidSerial(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 165
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 166
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 169
    :cond_1
    iget-object p1, p0, Lcom/example/rederdemo/EntryActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1}, Lcom/gg/reader/api/dal/GClient;->close()Z

    goto :goto_0

    :cond_2
    const-string p1, "\u6253\u5f00\u4e32\u53e3\u5931\u8d25"

    .line 173
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1
.end method


# virtual methods
.method public frequencyHopping()V
    .locals 2

    .line 206
    iget-boolean v0, p0, Lcom/example/rederdemo/EntryActivity;->isClient:Z

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/EntryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/example/rederdemo/EntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public initConnected()V
    .locals 7

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 77
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 78
    aget v4, v1, v3

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/example/rederdemo/EntryActivity;->openReader(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "/dev/ttyS3:"

    if-eqz v5, :cond_0

    .line 83
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    new-instance v1, Lcom/example/rederdemo/EntryActivity$1;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/EntryActivity$1;-><init>(Lcom/example/rederdemo/EntryActivity;)V

    iput-object v1, v0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/example/rederdemo/EntryActivity;->isClient:Z

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/example/rederdemo/EntryActivity;->setConnect_param(Ljava/lang/String;)V

    const-string v0, "\u8fde\u63a5\u6210\u529f"

    .line 96
    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_0
    iput-boolean v2, p0, Lcom/example/rederdemo/EntryActivity;->isClient:Z

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/example/rederdemo/EntryActivity;->setConnect_param(Ljava/lang/String;)V

    const-string v4, "\u8fde\u63a5\u5931\u8d25"

    .line 101
    invoke-static {v4}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x70800
        0x1c200
        0x2580
        0x4b00
        0x38400
        0xe1000
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mmkv root:"

    .line 44
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0c0036

    .line 45
    invoke-virtual {p0, p1}, Lcom/example/rederdemo/EntryActivity;->setContentView(I)V

    .line 46
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    const-string p1, "1"

    .line 47
    invoke-static {p1}, Lcom/example/rederdemo/util/PowerUtil;->power(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/example/rederdemo/EntryActivity;->initConnected()V


    # Botón Seguridad Pista
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v2
    const-string v0, "safetyBtn"
    const-string v3, "id"
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :no_safety_btn
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/EntryActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :no_safety_btn
    new-instance v1, Lcom/example/rederdemo/EntryActivity$6;
    invoke-direct {v1, p0}, Lcom/example/rederdemo/EntryActivity$6;-><init>(Lcom/example/rederdemo/EntryActivity;)V
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :no_safety_btn

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 321
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const-string v0, "0"

    .line 322
    invoke-static {v0}, Lcom/example/rederdemo/util/PowerUtil;->power(Ljava/lang/String;)V

    .line 323
    iget-boolean v0, p0, Lcom/example/rederdemo/EntryActivity;->isClient:Z

    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gg/reader/api/dal/GClient;->close()Z

    :cond_0
    return-void
.end method

.method public readOrWrite()V
    .locals 3

    .line 180
    iget-boolean v0, p0, Lcom/example/rederdemo/EntryActivity;->isClient:Z

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    iget-boolean v1, p0, Lcom/example/rederdemo/EntryActivity;->isClient:Z

    const-string v2, "isClient"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/EntryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/example/rederdemo/EntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public rfidConfig()V
    .locals 2

    .line 196
    iget-boolean v0, p0, Lcom/example/rederdemo/EntryActivity;->isClient:Z

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/rederdemo/entity/RfidConfigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/EntryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/example/rederdemo/EntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public searchDevice()V
    .locals 13

    .line 237
    iget-boolean v0, p0, Lcom/example/rederdemo/EntryActivity;->isClient:Z

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/example/rederdemo/EntryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0034

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900a3

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    const v1, 0x7f090028

    .line 241
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const v1, 0x7f090034

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090027

    .line 243
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    const v2, 0x7f090033

    .line 244
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    const v2, 0x7f090174

    .line 245
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    const v2, 0x7f090120

    .line 246
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 247
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 249
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 256
    new-instance v5, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;

    invoke-direct {v5}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;-><init>()V

    .line 257
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    const/16 v11, 0xbb8

    invoke-virtual {v0, v5, v11}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;I)V

    .line 258
    invoke-virtual {v5}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getRtCode()B

    move-result v0

    const-string v12, "---["

    if-nez v0, :cond_0

    const-string v0, "\u8bfb\u5199\u5668\u4fe1\u606f"

    .line 259
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Lcom/example/rederdemo/EntryActivity$3;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/example/rederdemo/EntryActivity$3;-><init>(Lcom/example/rederdemo/EntryActivity;Landroid/widget/TextView;Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Lcom/example/rederdemo/EntryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 272
    :cond_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;-><init>()V

    .line 273
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v2

    invoke-virtual {v2, v0, v11}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;I)V

    .line 274
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;->getRtCode()B

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u57fa\u5e26\u7248\u672c\u4fe1\u606f"

    .line 275
    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v2, Lcom/example/rederdemo/EntryActivity$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/example/rederdemo/EntryActivity$4;-><init>(Lcom/example/rederdemo/EntryActivity;Landroid/widget/TextView;Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;)V

    invoke-virtual {p0, v2}, Lcom/example/rederdemo/EntryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/example/rederdemo/EntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setConnect_param(Ljava/lang/String;)V
    .locals 1

    .line 294
    new-instance v0, Lcom/example/rederdemo/EntryActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/example/rederdemo/EntryActivity$5;-><init>(Lcom/example/rederdemo/EntryActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/example/rederdemo/EntryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public test()V
    .locals 2

    .line 226
    iget-boolean v0, p0, Lcom/example/rederdemo/EntryActivity;->isClient:Z

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/rederdemo/TestActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/EntryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/example/rederdemo/EntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public upgradeEvent()V
    .locals 2

    .line 216
    iget-boolean v0, p0, Lcom/example/rederdemo/EntryActivity;->isClient:Z

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/rederdemo/UpgradeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/EntryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/example/rederdemo/EntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public safetyMode()V
    .locals 2
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcom/example/rederdemo/SafetyActivity;
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/EntryActivity;->startActivity(Landroid/content/Intent;)V
    return-void
.end method
