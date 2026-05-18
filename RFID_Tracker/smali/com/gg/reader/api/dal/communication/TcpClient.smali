.class public Lcom/gg/reader/api/dal/communication/TcpClient;
.super Lcom/gg/reader/api/dal/communication/CommunicationInterface;
.source "TcpClient.java"


# instance fields
.field _isOpen:Z

.field private count:I

.field public inputStream:Ljava/io/InputStream;

.field private lastUrgentData:Ljava/util/Date;

.field public outputStream:Ljava/io/OutputStream;

.field public sConn:Ljava/net/Socket;

.field public serverIp:Ljava/lang/String;

.field public serverPort:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    const-string v1, "192.168.1.168"

    .line 25
    iput-object v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->serverIp:Ljava/lang/String;

    const/16 v1, 0x1fe0

    .line 26
    iput v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->serverPort:I

    .line 27
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->inputStream:Ljava/io/InputStream;

    .line 28
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->_isOpen:Z

    .line 147
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->lastUrgentData:Ljava/util/Date;

    const/4 v0, 0x1

    .line 148
    iput v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->count:I

    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/communication/TcpClient;)Z
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/TcpClient;->isRemoteClosed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/gg/reader/api/dal/communication/TcpClient;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->lastUrgentData:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$202(Lcom/gg/reader/api/dal/communication/TcpClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->count:I

    return p1
.end method

.method private isRemoteClosed()Z
    .locals 8

    .line 151
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 154
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 155
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->lastUrgentData:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->count:I

    mul-int/lit16 v5, v4, 0xbb8

    int-to-long v5, v5

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    add-int/2addr v4, v1

    .line 157
    :try_start_0
    iput v4, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->count:I

    .line 159
    new-instance v2, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;-><init>()V

    invoke-virtual {p0, v2}, Lcom/gg/reader/api/dal/communication/TcpClient;->send(Lcom/gg/reader/api/protocol/gx/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 163
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->lastUrgentData:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->heartbeatTimeout:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 98
    :try_start_0
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->keepReceived:Z

    .line 99
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->_isOpen:Z

    .line 100
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->inputStream:Ljava/io/InputStream;

    .line 103
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->outputStream:Ljava/io/OutputStream;

    .line 104
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 108
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public open(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "::"

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ":"

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 70
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 71
    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->serverIp:Ljava/lang/String;

    .line 72
    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->serverPort:I

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 75
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->serverIp:Ljava/lang/String;

    add-int/2addr v1, v3

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->serverPort:I

    .line 78
    :goto_0
    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    .line 79
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->serverIp:Ljava/lang/String;

    iget v4, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->serverPort:I

    invoke-direct {v1, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x1388

    invoke-virtual {p1, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 81
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 82
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    invoke-virtual {p1, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 83
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->inputStream:Ljava/io/InputStream;

    .line 84
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->outputStream:Ljava/io/OutputStream;

    .line 85
    iput-boolean v3, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->keepReceived:Z

    .line 86
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/TcpClient;->startReceive()V

    .line 87
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/TcpClient;->startProcess()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :catch_0
    return v0
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public open(Ljava/lang/String;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public open(Ljava/net/Socket;)Z
    .locals 3

    const/4 v0, 0x0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->keepReceived:Z

    const/16 v2, 0x3e8

    .line 48
    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 49
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 50
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->inputStream:Ljava/io/InputStream;

    .line 51
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->outputStream:Ljava/io/OutputStream;

    .line 52
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/TcpClient;->startReceive()V

    .line 53
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/TcpClient;->startProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 56
    :catch_0
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/TcpClient;->close()V

    return v0
.end method

.method public receive([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public send(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 1

    .line 126
    :try_start_0
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    .line 127
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->isRs485:Z

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/Message;->toBytes(Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/communication/TcpClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public send([B)V
    .locals 1

    .line 115
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 120
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setBufferSize(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public startReceive()V
    .locals 1

    .line 170
    new-instance v0, Lcom/gg/reader/api/dal/communication/TcpClient$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/TcpClient$1;-><init>(Lcom/gg/reader/api/dal/communication/TcpClient;)V

    invoke-static {v0}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->run(Ljava/lang/Runnable;)V

    return-void
.end method
