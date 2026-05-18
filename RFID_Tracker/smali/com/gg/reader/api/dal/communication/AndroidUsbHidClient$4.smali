.class Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$4;
.super Ljava/lang/Object;
.source "AndroidUsbHidClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->startReceive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$4;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 430
    :goto_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$4;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    iget-boolean v0, v0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->keepReceived:Z

    if-eqz v0, :cond_2

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$4;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->access$300(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    new-array v1, v0, [B

    .line 433
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$4;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    invoke-static {v2}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->access$500(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$4;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    invoke-static {v3}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->access$300(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    iget-object v4, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$4;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    invoke-static {v4}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->access$400(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)I

    move-result v4

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0xa

    .line 435
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$4;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$4;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    iget-object v3, v3, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v3}, Lcom/gg/reader/api/utils/RingBuffer;->getDataCount()I

    move-result v3

    add-int/2addr v3, v0

    const/high16 v4, 0x100000

    if-le v3, v4, :cond_1

    .line 440
    iget-object v3, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$4;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    iget-object v3, v3, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->lockRingBuffer:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 442
    :cond_1
    iget-object v3, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$4;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    iget-object v3, v3, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Lcom/gg/reader/api/utils/RingBuffer;->WriteBuffer([BII)V

    .line 443
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$4;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 444
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-wide/16 v0, 0xbb8

    .line 448
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method
