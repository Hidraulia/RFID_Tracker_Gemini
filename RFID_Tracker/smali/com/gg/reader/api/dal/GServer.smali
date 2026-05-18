.class public Lcom/gg/reader/api/dal/GServer;
.super Ljava/lang/Object;
.source "GServer.java"


# instance fields
.field private MSG_TIME_OUT:I

.field private hpClient:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/gg/reader/api/dal/GClient;",
            ">;"
        }
    .end annotation
.end field

.field private initParam:Ljava/lang/String;

.field public onGClientConnected:Lcom/gg/reader/api/dal/HandlerGClientConnected;

.field private ts:Lcom/gg/reader/api/dal/communication/TcpServer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    .line 22
    iput v0, p0, Lcom/gg/reader/api/dal/GServer;->MSG_TIME_OUT:I

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/GServer;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/gg/reader/api/dal/GServer;->MSG_TIME_OUT:I

    return p0
.end method

.method static synthetic access$100(Lcom/gg/reader/api/dal/GServer;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/gg/reader/api/dal/GServer;->initParam:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gg/reader/api/dal/GServer;)Ljava/util/HashMap;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->ts:Lcom/gg/reader/api/dal/communication/TcpServer;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/gg/reader/api/dal/communication/TcpServer;->close()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/gg/reader/api/dal/GServer;->ts:Lcom/gg/reader/api/dal/communication/TcpServer;

    :cond_0
    return-void
.end method

.method public closeAllClient()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v2}, Lcom/gg/reader/api/dal/GClient;->close()Z

    goto :goto_0

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 112
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public closeClient(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ":"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 93
    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1}, Lcom/gg/reader/api/dal/GClient;->close()Z

    .line 97
    iget-object v1, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public getInitParam()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->initParam:Ljava/lang/String;

    return-object v0
.end method

.method public isListener()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->ts:Lcom/gg/reader/api/dal/communication/TcpServer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 32
    :cond_0
    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/TcpServer;->keepListen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public open(I)Z
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->ts:Lcom/gg/reader/api/dal/communication/TcpServer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 57
    :cond_0
    new-instance v0, Lcom/gg/reader/api/dal/communication/TcpServer;

    invoke-direct {v0}, Lcom/gg/reader/api/dal/communication/TcpServer;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/GServer;->ts:Lcom/gg/reader/api/dal/communication/TcpServer;

    .line 58
    new-instance v2, Lcom/gg/reader/api/dal/GServer$1;

    invoke-direct {v2, p0}, Lcom/gg/reader/api/dal/GServer$1;-><init>(Lcom/gg/reader/api/dal/GServer;)V

    iput-object v2, v0, Lcom/gg/reader/api/dal/communication/TcpServer;->onRemoteConnected:Lcom/gg/reader/api/dal/HandlerRemoteConnected;

    .line 64
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->ts:Lcom/gg/reader/api/dal/communication/TcpServer;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/communication/TcpServer;->open(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/GServer;->close()V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public open(ILjava/lang/String;)Z
    .locals 0

    .line 72
    iput-object p2, p0, Lcom/gg/reader/api/dal/GServer;->initParam:Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/GServer;->open(I)Z

    move-result p1

    return p1
.end method

.method public processConnect(Lcom/gg/reader/api/dal/communication/TcpClient;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/gg/reader/api/dal/GServer$2;

    invoke-direct {v0, p0, p1}, Lcom/gg/reader/api/dal/GServer$2;-><init>(Lcom/gg/reader/api/dal/GServer;Lcom/gg/reader/api/dal/communication/TcpClient;)V

    invoke-static {v0}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected triggerGClientConnectedEvent(Lcom/gg/reader/api/dal/GClient;Ljava/lang/String;)V
    .locals 2

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->onGClientConnected:Lcom/gg/reader/api/dal/HandlerGClientConnected;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->onGClientConnected:Lcom/gg/reader/api/dal/HandlerGClientConnected;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GServer;->onGClientConnected:Lcom/gg/reader/api/dal/HandlerGClientConnected;

    invoke-interface {v1, p1, p2}, Lcom/gg/reader/api/dal/HandlerGClientConnected;->log(Lcom/gg/reader/api/dal/GClient;Ljava/lang/String;)V

    .line 47
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method
