.class Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;
.super Ljava/lang/Object;
.source "AndroidPdaSerialClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->startReceive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 157
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    iget-boolean v0, v0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->keepReceived:Z

    if-eqz v0, :cond_4

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->access$000(Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->access$000(Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_2

    const-wide/16 v1, 0x1

    .line 164
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    :cond_2
    if-lez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->access$000(Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    iget-object v1, v1, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->rcvBuff:[B

    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->rcvBuff:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    iget-object v1, v1, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v2}, Lcom/gg/reader/api/utils/RingBuffer;->getDataCount()I

    move-result v2

    add-int/2addr v2, v0

    const/high16 v4, 0x100000

    if-le v2, v4, :cond_3

    .line 170
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->lockRingBuffer:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 172
    :cond_3
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    iget-object v4, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    iget-object v4, v4, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->rcvBuff:[B

    invoke-virtual {v2, v4, v3, v0}, Lcom/gg/reader/api/utils/RingBuffer;->WriteBuffer([BII)V

    .line 173
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 174
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AndroidPdaSerialClient]startReceive error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gg/reader/api/utils/GLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method
