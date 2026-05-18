.class public Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;
.super Lcom/android/usbserial/driver/CommonUsbSerialPort;
.source "Cp21xxSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/usbserial/driver/Cp21xxSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cp21xxSerialPort"
.end annotation


# static fields
.field private static final DTR_DISABLE:I = 0x100

.field private static final DTR_ENABLE:I = 0x101

.field private static final FLUSH_READ_CODE:I = 0xa

.field private static final FLUSH_WRITE_CODE:I = 0x5

.field private static final REQTYPE_DEVICE_TO_HOST:I = 0xc1

.field private static final REQTYPE_HOST_TO_DEVICE:I = 0x41

.field private static final RTS_DISABLE:I = 0x200

.field private static final RTS_ENABLE:I = 0x202

.field private static final SILABSER_FLUSH_REQUEST_CODE:I = 0x12

.field private static final SILABSER_GET_MDMSTS_REQUEST_CODE:I = 0x8

.field private static final SILABSER_IFC_ENABLE_REQUEST_CODE:I = 0x0

.field private static final SILABSER_SET_BAUDRATE:I = 0x1e

.field private static final SILABSER_SET_BREAK_REQUEST_CODE:I = 0x5

.field private static final SILABSER_SET_LINE_CTL_REQUEST_CODE:I = 0x3

.field private static final SILABSER_SET_MHS_REQUEST_CODE:I = 0x7

.field private static final STATUS_CD:I = 0x80

.field private static final STATUS_CTS:I = 0x10

.field private static final STATUS_DSR:I = 0x20

.field private static final STATUS_RI:I = 0x40

.field private static final UART_DISABLE:I = 0x0

.field private static final UART_ENABLE:I = 0x1

.field private static final USB_WRITE_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private dtr:Z

.field private mIsRestrictedPort:Z

.field private rts:Z

.field final synthetic this$0:Lcom/android/usbserial/driver/Cp21xxSerialDriver;


# direct methods
.method public constructor <init>(Lcom/android/usbserial/driver/Cp21xxSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->this$0:Lcom/android/usbserial/driver/Cp21xxSerialDriver;

    .line 106
    invoke-direct {p0, p2, p3}, Lcom/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->dtr:Z

    .line 99
    iput-boolean p1, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->rts:Z

    return-void
.end method

.method private getStatus()B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v9, v0, [B

    .line 124
    iget-object v1, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget v5, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mPortNumber:I

    const/16 v2, 0xc1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v8, 0x1388

    const/4 v7, 0x1

    move-object v6, v9

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 129
    aget-byte v0, v9, v0

    return v0

    .line 127
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Control transfer failed: 8 / 0 -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setBaudRate(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v6, v0, [B

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, v6, v1

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, v6, v1

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x3

    aput-byte p1, v6, v0

    .line 174
    iget-object v1, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget v5, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mPortNumber:I

    const/16 v2, 0x41

    const/16 v3, 0x1e

    const/4 v4, 0x0

    const/4 v7, 0x4

    const/16 v8, 0x1388

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 177
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error setting baud rate"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setConfigSingle(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget v4, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mPortNumber:I

    const/16 v1, 0x41

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Control transfer failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected closeInt()V
    .locals 3

    const/4 v0, 0x0

    .line 160
    :try_start_0
    invoke-direct {p0, v0, v0}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v2, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mPortNumber:I

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public getCD()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    invoke-direct {p0}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->getStatus()B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->getStatus()B

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 295
    invoke-direct {p0}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->getStatus()B

    move-result v0

    .line 296
    const-class v1, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 297
    iget-boolean v2, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->rts:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 298
    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_1
    iget-boolean v2, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->dtr:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_3

    .line 300
    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    .line 301
    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 302
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

    .line 263
    invoke-direct {p0}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->getStatus()B

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

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

    .line 268
    iget-boolean v0, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->dtr:Z

    return v0
.end method

.method public getDriver()Lcom/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->this$0:Lcom/android/usbserial/driver/Cp21xxSerialDriver;

    return-object v0
.end method

.method public getRI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->getStatus()B

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

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

    .line 284
    iget-boolean v0, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->rts:Z

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

    .line 308
    const-class v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method protected openInt()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mPortNumber:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mIsRestrictedPort:Z

    .line 135
    iget v0, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mPortNumber:I

    iget-object v4, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 138
    iget-object v0, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v4, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mPortNumber:I

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    .line 139
    iget-object v4, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v4, v0, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    .line 142
    :goto_1
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 143
    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v5

    .line 144
    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v6

    if-ne v6, v1, :cond_2

    .line 145
    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v6

    const/16 v7, 0x80

    if-ne v6, v7, :cond_1

    .line 146
    iput-object v5, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_2

    .line 148
    :cond_1
    iput-object v5, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 153
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    const/4 v0, 0x7

    .line 154
    iget-boolean v1, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->dtr:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x101

    goto :goto_3

    :cond_4
    const/16 v1, 0x100

    :goto_3
    iget-boolean v2, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->rts:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x202

    goto :goto_4

    :cond_5
    const/16 v2, 0x200

    :goto_4
    or-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    return-void

    .line 140
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not claim interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mPortNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown port number"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public purgeHwBuffers(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0xa

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x5

    :cond_1
    or-int p1, p2, v0

    if-eqz p1, :cond_2

    const/16 p2, 0x12

    .line 318
    invoke-direct {p0, p2, p1}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    :cond_2
    return-void
.end method

.method public setBreak(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 324
    invoke-direct {p0, v0, p1}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    return-void
.end method

.method public setDTR(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    iput-boolean p1, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->dtr:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x101

    goto :goto_0

    :cond_0
    const/16 p1, 0x100

    :goto_0
    const/4 v0, 0x7

    .line 274
    invoke-direct {p0, v0, p1}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    return-void
.end method

.method public setParameters(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_12

    .line 186
    invoke-direct {p0, p1}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setBaudRate(I)V

    const/4 p1, 0x5

    const-string v0, "Unsupported data bits: "

    if-eq p2, p1, :cond_5

    const/4 p1, 0x6

    if-eq p2, p1, :cond_3

    const/4 p1, 0x7

    if-eq p2, p1, :cond_1

    const/16 p1, 0x8

    if-ne p2, p1, :cond_0

    const/16 p1, 0x800

    goto :goto_0

    .line 209
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

    .line 201
    :cond_1
    iget-boolean p1, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mIsRestrictedPort:Z

    if-nez p1, :cond_2

    const/16 p1, 0x700

    goto :goto_0

    .line 202
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_3
    iget-boolean p1, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mIsRestrictedPort:Z

    if-nez p1, :cond_4

    const/16 p1, 0x600

    goto :goto_0

    .line 197
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_5
    iget-boolean p1, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mIsRestrictedPort:Z

    if-nez p1, :cond_11

    const/16 p1, 0x500

    :goto_0
    const/4 p2, 0x1

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p4, :cond_c

    if-eq p4, p2, :cond_b

    if-eq p4, v1, :cond_a

    if-eq p4, v0, :cond_8

    const/4 v2, 0x4

    if-ne p4, v2, :cond_7

    .line 227
    iget-boolean p4, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mIsRestrictedPort:Z

    if-nez p4, :cond_6

    or-int/lit8 p1, p1, 0x40

    goto :goto_1

    .line 228
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported parity: space"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_7
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

    .line 222
    :cond_8
    iget-boolean p4, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mIsRestrictedPort:Z

    if-nez p4, :cond_9

    or-int/lit8 p1, p1, 0x30

    goto :goto_1

    .line 223
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported parity: mark"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    or-int/lit8 p1, p1, 0x20

    goto :goto_1

    :cond_b
    or-int/lit8 p1, p1, 0x10

    :cond_c
    :goto_1
    if-eq p3, p2, :cond_10

    if-eq p3, v1, :cond_e

    if-eq p3, v0, :cond_d

    .line 246
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

    .line 239
    :cond_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported stop bits: 1.5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 241
    :cond_e
    iget-boolean p2, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mIsRestrictedPort:Z

    if-nez p2, :cond_f

    or-int/lit8 p1, p1, 0x2

    goto :goto_2

    .line 242
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported stop bits: 2"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_10
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    return-void

    .line 192
    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_12
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iput-boolean p1, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->rts:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x202

    goto :goto_0

    :cond_0
    const/16 p1, 0x200

    :goto_0
    const/4 v0, 0x7

    .line 290
    invoke-direct {p0, v0, p1}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    return-void
.end method
