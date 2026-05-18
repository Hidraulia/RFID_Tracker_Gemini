.class public Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;
.super Lcom/android/usbserial/driver/CommonUsbSerialPort;
.source "Ch34xSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/usbserial/driver/Ch34xSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ch340SerialPort"
.end annotation


# static fields
.field private static final USB_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final DEFAULT_BAUD_RATE:I

.field private dtr:Z

.field private rts:Z

.field final synthetic this$0:Lcom/android/usbserial/driver/Ch34xSerialDriver;


# direct methods
.method public constructor <init>(Lcom/android/usbserial/driver/Ch34xSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->this$0:Lcom/android/usbserial/driver/Ch34xSerialDriver;

    .line 77
    invoke-direct {p0, p2, p3}, Lcom/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    const/16 p1, 0x2580

    .line 71
    iput p1, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->DEFAULT_BAUD_RATE:I

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 74
    iput-boolean p1, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    return-void
.end method

.method private checkState(Ljava/lang/String;II[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    array-length v0, p4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p2, p3, v1, v0}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlIn(III[B)I

    move-result p2

    const-string p3, "]"

    if-ltz p2, :cond_4

    .line 140
    array-length v2, p4

    const-string v3, " ["

    if-ne p2, v2, :cond_3

    .line 144
    :goto_0
    array-length p2, p4

    if-ge v1, p2, :cond_2

    .line 145
    aget p2, p4, v1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    aget-byte p2, v0, v1

    and-int/lit16 p2, p2, 0xff

    .line 150
    aget v2, p4, v1

    if-ne v2, p2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p4, v1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " byte, but get 0x"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    .line 141
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p4, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " bytes, but get "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_4
    new-instance p2, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed send cmd ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method private controlIn(III[B)I
    .locals 8

    .line 127
    iget-object v0, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    array-length v6, p4

    const/16 v1, 0xc0

    const/16 v7, 0x1388

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method private controlOut(III)I
    .locals 8

    .line 120
    iget-object v0, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method private getStatus()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x95

    const/16 v3, 0x706

    .line 164
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlIn(III[B)I

    move-result v2

    if-ltz v2, :cond_0

    .line 167
    aget-byte v0, v0, v1

    return v0

    .line 166
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error getting control lines"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initialize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 171
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const-string v3, "init #1"

    const/16 v4, 0x5f

    invoke-direct {p0, v3, v4, v2, v1}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    const/16 v1, 0xa1

    .line 173
    invoke-direct {p0, v1, v2, v2}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v2

    if-ltz v2, :cond_2

    const/16 v2, 0x2580

    .line 177
    invoke-direct {p0, v2}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    new-array v3, v0, [I

    .line 179
    fill-array-data v3, :array_1

    const/16 v4, 0x2518

    const/16 v5, 0x95

    const-string v6, "init #4"

    invoke-direct {p0, v6, v5, v4, v3}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    const/16 v3, 0x9a

    const/16 v6, 0xc3

    .line 181
    invoke-direct {p0, v3, v4, v6}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v3

    if-ltz v3, :cond_1

    new-array v3, v0, [I

    .line 185
    fill-array-data v3, :array_2

    const/16 v4, 0x706

    const-string v6, "init #6"

    invoke-direct {p0, v6, v5, v4, v3}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    const/16 v3, 0x501f

    const v6, 0xd90a

    .line 187
    invoke-direct {p0, v1, v3, v6}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v1

    if-ltz v1, :cond_0

    .line 191
    invoke-direct {p0, v2}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    .line 193
    invoke-direct {p0}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setControlLines()V

    new-array v0, v0, [I

    .line 195
    fill-array-data v0, :array_3

    const-string v1, "init #10"

    invoke-direct {p0, v1, v5, v4, v0}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Init failed: #7"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Init failed: #5"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Init failed: #2"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private setBaudRate(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const v1, 0xe1000

    if-ne p1, v1, :cond_0

    const-wide/16 v1, 0x7

    const-wide/32 v3, 0xf300

    goto :goto_1

    .line 210
    :cond_0
    sget-boolean v1, Lcom/android/usbserial/driver/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x60000000

    and-int/2addr v1, p1

    const/high16 v2, 0x20000000

    if-ne v1, v2, :cond_1

    const v1, -0x20000001

    and-int/2addr p1, v1

    :cond_1
    const-wide/32 v1, 0x5b59f000

    int-to-long v3, p1

    .line 212
    div-long/2addr v1, v3

    const-wide/16 v3, 0x3

    :goto_0
    const-wide/32 v5, 0xfff0

    cmp-long v7, v1, v5

    if-lez v7, :cond_2

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_2

    shr-long/2addr v1, v0

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    goto :goto_0

    :cond_2
    cmp-long v7, v1, v5

    if-gtz v7, :cond_5

    const-wide/32 v5, 0x10000

    sub-long v1, v5, v1

    move-wide v10, v1

    move-wide v1, v3

    move-wide v3, v10

    :goto_1
    const-wide/16 v5, 0x80

    or-long/2addr v1, v5

    const-wide/32 v5, 0xff00

    and-long/2addr v5, v3

    or-long/2addr v1, v5

    long-to-int v2, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v1, v3

    .line 227
    invoke-static {}, Lcom/android/usbserial/driver/Ch34xSerialDriver;->access$000()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const/4 p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, p1

    const/4 p1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, p1

    const-string p1, "baud rate=%d, 0x1312=0x%04x, 0x0f2c=0x%04x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1312

    const/16 v0, 0x9a

    .line 228
    invoke-direct {p0, v0, p1, v2}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result p1

    if-ltz p1, :cond_4

    const/16 p1, 0xf2c

    .line 232
    invoke-direct {p0, v0, p1, v1}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result p1

    if-ltz p1, :cond_3

    return-void

    .line 234
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error setting baud rate: #2"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error setting baud rate: #1)"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported baud rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private setControlLines()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-boolean v0, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v0, v2

    xor-int/lit8 v0, v0, -0x1

    const/16 v2, 0xa4

    invoke-direct {p0, v2, v0, v1}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v0

    if-ltz v0, :cond_2

    return-void

    .line 158
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to set control lines"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected closeInt()V
    .locals 3

    const/4 v0, 0x0

    .line 113
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getCD()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCTS()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getControlLines()Ljava/util/EnumSet;
    .locals 3
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

    .line 345
    invoke-direct {p0}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    .line 346
    const-class v1, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 347
    iget-boolean v2, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_1

    .line 348
    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_1
    iget-boolean v2, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_3

    .line 350
    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_4

    .line 351
    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_5

    .line 352
    sget-object v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->RI:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v1
.end method

.method public getDSR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-direct {p0}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDTR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    iget-boolean v0, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    return v0
.end method

.method public getDriver()Lcom/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->this$0:Lcom/android/usbserial/driver/Ch34xSerialDriver;

    return-object v0
.end method

.method public getRI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    invoke-direct {p0}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    iget-boolean v0, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    return v0
.end method

.method public getSupportedControlLines()Ljava/util/EnumSet;
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

    .line 358
    const-class v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method protected openInt()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 89
    iget-object v4, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v4, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim data interface"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v2, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 95
    :goto_1
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 96
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 98
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2

    .line 99
    iput-object v2, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_2

    .line 101
    :cond_2
    iput-object v2, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_4
    invoke-direct {p0}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->initialize()V

    const/16 v0, 0x2580

    .line 107
    invoke-direct {p0, v0}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    return-void
.end method

.method public setBreak(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, 0x1805

    const/4 v2, 0x0

    const/16 v3, 0x95

    .line 364
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlIn(III[B)I

    move-result v3

    if-ltz v3, :cond_2

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 368
    aget-byte p1, v0, v2

    and-int/lit8 p1, p1, -0x2

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 369
    aget-byte p1, v0, v3

    and-int/lit8 p1, p1, -0x41

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    goto :goto_0

    .line 371
    :cond_0
    aget-byte p1, v0, v2

    or-int/2addr p1, v3

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 372
    aget-byte p1, v0, v3

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    .line 374
    :goto_0
    aget-byte p1, v0, v3

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    const/16 v0, 0x9a

    .line 375
    invoke-direct {p0, v0, v1, p1}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result p1

    if-ltz p1, :cond_1

    return-void

    .line 376
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error setting BREAK condition"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error getting BREAK condition"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDTR(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iput-boolean p1, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 324
    invoke-direct {p0}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setControlLines()V

    return-void
.end method

.method public setParameters(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_d

    .line 243
    invoke-direct {p0, p1}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    const/4 p1, 0x5

    if-eq p2, p1, :cond_3

    const/4 p1, 0x6

    if-eq p2, p1, :cond_2

    const/4 p1, 0x7

    if-eq p2, p1, :cond_1

    const/16 p1, 0x8

    if-ne p2, p1, :cond_0

    const/16 p1, 0xc3

    goto :goto_0

    .line 261
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid data bits: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0xc2

    goto :goto_0

    :cond_2
    const/16 p1, 0xc1

    goto :goto_0

    :cond_3
    const/16 p1, 0xc0

    :goto_0
    const/4 p2, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_8

    if-eq p4, v1, :cond_7

    if-eq p4, v0, :cond_6

    if-eq p4, p2, :cond_5

    const/4 v2, 0x4

    if-ne p4, v2, :cond_4

    or-int/lit8 p1, p1, 0x38

    goto :goto_1

    .line 280
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid parity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    or-int/lit8 p1, p1, 0x28

    goto :goto_1

    :cond_6
    or-int/lit8 p1, p1, 0x18

    goto :goto_1

    :cond_7
    or-int/lit8 p1, p1, 0x8

    :cond_8
    :goto_1
    if-eq p3, v1, :cond_b

    if-eq p3, v0, :cond_a

    if-eq p3, p2, :cond_9

    .line 292
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid stop bits: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported stop bits: 1.5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    or-int/lit8 p1, p1, 0x4

    :cond_b
    const/16 p2, 0x9a

    const/16 p3, 0x2518

    .line 295
    invoke-direct {p0, p2, p3, p1}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result p1

    if-ltz p1, :cond_c

    return-void

    .line 297
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error setting control byte"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 241
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid baud rate: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setRTS(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    iput-boolean p1, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    .line 340
    invoke-direct {p0}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setControlLines()V

    return-void
.end method
