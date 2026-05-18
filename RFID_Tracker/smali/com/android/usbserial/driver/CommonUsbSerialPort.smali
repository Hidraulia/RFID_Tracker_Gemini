.class public abstract Lcom/android/usbserial/driver/CommonUsbSerialPort;
.super Ljava/lang/Object;
.source "CommonUsbSerialPort.java"

# interfaces
.implements Lcom/android/usbserial/driver/UsbSerialPort;


# static fields
.field public static DEBUG:Z = false

.field private static final MAX_READ_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field protected final mDevice:Landroid/hardware/usb/UsbDevice;

.field protected final mPortNumber:I

.field protected mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field protected mUsbRequest:Landroid/hardware/usb/UsbRequest;

.field protected mWriteBuffer:[B

.field protected final mWriteBufferLock:Ljava/lang/Object;

.field protected mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/android/usbserial/driver/CommonUsbSerialPort;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;I)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 54
    iput p2, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mUsbRequest:Landroid/hardware/usb/UsbRequest;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbRequest;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mUsbRequest:Landroid/hardware/usb/UsbRequest;

    .line 148
    :try_start_1
    invoke-virtual {p0}, Lcom/android/usbserial/driver/CommonUsbSerialPort;->closeInt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    :catch_1
    :try_start_2
    iget-object v1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 153
    :catch_2
    iput-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract closeInt()V
.end method

.method public getCD()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getControlLines()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDSR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDTR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getPortNumber()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    return v0
.end method

.method public getRI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getRTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getReadEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSupportedControlLines()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getWriteEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 120
    iput-object p1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/android/usbserial/driver/CommonUsbSerialPort;->openInt()V

    .line 123
    iget-object p1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz p1, :cond_0

    .line 126
    new-instance p1, Landroid/hardware/usb/UsbRequest;

    invoke-direct {p1}, Landroid/hardware/usb/UsbRequest;-><init>()V

    iput-object p1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mUsbRequest:Landroid/hardware/usb/UsbRequest;

    .line 127
    iget-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    return-void

    .line 124
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not get read & write endpoints"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 130
    :try_start_1
    invoke-virtual {p0}, Lcom/android/usbserial/driver/CommonUsbSerialPort;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    :catch_1
    throw p1

    .line 118
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Connection is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Already open"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract openInt()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public purgeHwBuffers(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public read([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/usbserial/driver/CommonUsbSerialPort;->read([BIZ)I

    move-result p1

    return p1
.end method

.method protected read([BIZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mUsbRequest:Landroid/hardware/usb/UsbRequest;

    if-eqz v0, :cond_6

    .line 180
    array-length v0, p1

    if-lez v0, :cond_5

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 193
    invoke-static {}, Lcom/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 194
    :goto_0
    array-length v2, p1

    const/16 v3, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 195
    iget-object v3, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v3, v4, p1, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_2

    .line 198
    invoke-static {}, Lcom/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide p2

    cmp-long v2, p2, v0

    if-gez v2, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/android/usbserial/driver/CommonUsbSerialPort;->testConnection()V

    goto :goto_1

    .line 202
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 203
    iget-object p3, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mUsbRequest:Landroid/hardware/usb/UsbRequest;

    array-length p1, p1

    invoke-virtual {p3, p2, p1}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 206
    iget-object p1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 210
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    if-nez p1, :cond_2

    .line 214
    invoke-virtual {p0}, Lcom/android/usbserial/driver/CommonUsbSerialPort;->testConnection()V

    :cond_2
    :goto_1
    const/4 p2, 0x0

    .line 217
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 208
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Waiting for USB request failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Queueing USB request failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Read buffer to small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBreak(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setDTR(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract setParameters(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setRTS(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setWriteBufferSize(I)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v0

    if-gtz p1, :cond_1

    .line 98
    :try_start_0
    iget-object p1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 102
    monitor-exit v0

    return-void

    .line 105
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    array-length v1, v1

    if-ne p1, v1, :cond_2

    .line 106
    monitor-exit v0

    return-void

    .line 108
    :cond_2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected testConnection()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mUsbRequest:Landroid/hardware/usb/UsbRequest;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v5, v1, [B

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0xc8

    const/4 v6, 0x2

    .line 166
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "USB get_status request failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 61
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "<%s device_name=%s device_id=%s port_number=%s>"

    .line 59
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write([BI)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {}, Lcom/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 225
    :goto_0
    iget-object v2, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 228
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_a

    .line 233
    iget-object v4, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v4

    .line 236
    :try_start_0
    iget-object v5, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    if-nez v5, :cond_1

    .line 237
    iget-object v5, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v5

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 239
    :cond_1
    array-length v5, p1

    sub-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    array-length v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-nez v3, :cond_2

    move-object v6, p1

    goto :goto_2

    .line 244
    :cond_2
    iget-object v6, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    invoke-static {p1, v3, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iget-object v6, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    :goto_2
    if-eqz p2, :cond_4

    if-nez v3, :cond_3

    goto :goto_3

    .line 250
    :cond_3
    invoke-static {}, Lcom/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v7

    sub-long v7, v0, v7

    long-to-int v8, v7

    if-nez v8, :cond_5

    const/4 v8, -0x1

    goto :goto_4

    :cond_4
    :goto_3
    move v8, p2

    :cond_5
    :goto_4
    if-gez v8, :cond_6

    const/4 v6, -0x2

    goto :goto_5

    .line 257
    :cond_6
    iget-object v7, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v9, p0, Lcom/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v7, v9, v6, v5, v8}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v6

    .line 259
    :goto_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    sget-boolean v4, Lcom/android/usbserial/driver/CommonUsbSerialPort;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 261
    sget-object v4, Lcom/android/usbserial/driver/CommonUsbSerialPort;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrote "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " offset "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, p1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " timeout "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-gtz v6, :cond_9

    if-eqz p2, :cond_8

    .line 264
    invoke-static {}, Lcom/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v7

    cmp-long p2, v7, v0

    if-ltz p2, :cond_8

    .line 265
    new-instance p2, Lcom/android/usbserial/driver/SerialTimeoutException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error writing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes at offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of total "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", rc="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/usbserial/driver/SerialTimeoutException;-><init>(Ljava/lang/String;)V

    .line 266
    iput v3, p2, Lcom/android/usbserial/driver/SerialTimeoutException;->bytesTransferred:I

    .line 267
    throw p2

    .line 269
    :cond_8
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error writing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes at offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of total "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    add-int/2addr v3, v6

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    .line 259
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_a
    return-void

    .line 226
    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method
