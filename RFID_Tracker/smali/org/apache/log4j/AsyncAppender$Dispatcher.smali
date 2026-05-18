.class Lorg/apache/log4j/AsyncAppender$Dispatcher;
.super Ljava/lang/Object;
.source "AsyncAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/AsyncAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dispatcher"
.end annotation


# instance fields
.field private final appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private final buffer:Ljava/util/List;

.field private final discardMap:Ljava/util/Map;

.field private final parent:Lorg/apache/log4j/AsyncAppender;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/AsyncAppender;Ljava/util/List;Ljava/util/Map;Lorg/apache/log4j/helpers/AppenderAttachableImpl;)V
    .locals 0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p1, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    .line 510
    iput-object p2, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    .line 511
    iput-object p4, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 512
    iput-object p3, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x0

    .line 535
    :try_start_0
    iget-object v2, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :try_start_1
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 537
    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    iget-boolean v4, v4, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    :goto_1
    xor-int/2addr v4, v0

    if-nez v3, :cond_2

    if-nez v4, :cond_1

    goto :goto_2

    .line 540
    :cond_1
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 541
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 542
    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    iget-boolean v4, v4, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    goto :goto_1

    :cond_2
    :goto_2
    if-lez v3, :cond_4

    .line 546
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v3

    new-array v1, v1, [Lorg/apache/log4j/spi/LoggingEvent;

    .line 547
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 555
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 556
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 563
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 564
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 568
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v3, 0x1

    .line 557
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/log4j/AsyncAppender$DiscardSummary;

    invoke-virtual {v7}, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->createEvent()Lorg/apache/log4j/spi/LoggingEvent;

    move-result-object v7

    aput-object v7, v1, v3

    move v3, v6

    goto :goto_3

    .line 570
    :cond_4
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    .line 576
    :goto_5
    :try_start_2
    array-length v3, v1

    if-lt v2, v3, :cond_5

    goto :goto_6

    .line 577
    :cond_5
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 578
    :try_start_3
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I

    .line 579
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3

    throw v0

    :cond_6
    :goto_6
    move v1, v4

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 570
    monitor-exit v2

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 584
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_7
    return-void
.end method
