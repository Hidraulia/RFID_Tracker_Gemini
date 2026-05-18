.class Lorg/apache/log4j/Dispatcher;
.super Ljava/lang/Thread;
.source "Dispatcher.java"


# instance fields
.field private aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private bf:Lorg/apache/log4j/helpers/BoundedFIFO;

.field container:Lorg/apache/log4j/AsyncAppender;

.field private interrupted:Z


# direct methods
.method constructor <init>(Lorg/apache/log4j/helpers/BoundedFIFO;Lorg/apache/log4j/AsyncAppender;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lorg/apache/log4j/Dispatcher;->interrupted:Z

    .line 44
    iput-object p1, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    .line 45
    iput-object p2, p0, Lorg/apache/log4j/Dispatcher;->container:Lorg/apache/log4j/AsyncAppender;

    .line 46
    iget-object p1, p2, Lorg/apache/log4j/AsyncAppender;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    iput-object p1, p0, Lorg/apache/log4j/Dispatcher;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 54
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Dispatcher-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    monitor-enter v0

    const/4 v1, 0x1

    .line 63
    :try_start_0
    iput-boolean v1, p0, Lorg/apache/log4j/Dispatcher;->interrupted:Z

    .line 67
    iget-object v1, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/BoundedFIFO;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 70
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 88
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/BoundedFIFO;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 91
    iget-boolean v1, p0, Lorg/apache/log4j/Dispatcher;->interrupted:Z

    if-eqz v1, :cond_0

    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 98
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 100
    :catch_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    :goto_1
    iget-object v0, p0, Lorg/apache/log4j/Dispatcher;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAllAppenders()V

    return-void

    .line 104
    :cond_1
    :goto_2
    :try_start_3
    iget-object v1, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/BoundedFIFO;->get()Lorg/apache/log4j/spi/LoggingEvent;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    invoke-virtual {v2}, Lorg/apache/log4j/helpers/BoundedFIFO;->wasFull()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    iget-object v2, p0, Lorg/apache/log4j/Dispatcher;->bf:Lorg/apache/log4j/helpers/BoundedFIFO;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 110
    :cond_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    iget-object v0, p0, Lorg/apache/log4j/Dispatcher;->container:Lorg/apache/log4j/AsyncAppender;

    iget-object v0, v0, Lorg/apache/log4j/AsyncAppender;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 114
    :try_start_4
    iget-object v2, p0, Lorg/apache/log4j/Dispatcher;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 115
    iget-object v2, p0, Lorg/apache/log4j/Dispatcher;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v2, v1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I

    .line 117
    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 110
    monitor-exit v0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
