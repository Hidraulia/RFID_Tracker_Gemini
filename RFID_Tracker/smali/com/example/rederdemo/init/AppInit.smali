.class public Lcom/example/rederdemo/init/AppInit;
.super Landroid/app/Application;
.source "AppInit.java"


# instance fields
.field client:Lcom/gg/reader/api/dal/GClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 17
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    iput-object v0, p0, Lcom/example/rederdemo/init/AppInit;->client:Lcom/gg/reader/api/dal/GClient;

    return-void
.end method

.method static synthetic access$000(Lcom/example/rederdemo/init/AppInit;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/example/rederdemo/init/AppInit;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 44
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 45
    aget v3, v1, v2

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/example/rederdemo/init/AppInit;->openReader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x70800
        0x1c200
    .end array-data
.end method

.method private openReader(Ljava/lang/String;)Z
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/example/rederdemo/init/AppInit;->client:Lcom/gg/reader/api/dal/GClient;

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

    .line 56
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 57
    iget-object v0, p0, Lcom/example/rederdemo/init/AppInit;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 58
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result v0

    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/example/rederdemo/init/AppInit;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1}, Lcom/gg/reader/api/dal/GClient;->close()Z

    goto :goto_0

    :cond_2
    const-string p1, "\u6253\u5f00\u4e32\u53e3\u5931\u8d25"

    .line 65
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 21
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 22
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mmkv root:"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Lcom/example/rederdemo/init/AppInit$1;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/init/AppInit$1;-><init>(Lcom/example/rederdemo/init/AppInit;)V

    invoke-static {p0, v0}, Lcom/example/rederdemo/init/AppStateTracker;->track(Landroid/app/Application;Lcom/example/rederdemo/init/AppStateTracker$AppStateChangeListener;)V

    return-void
.end method
