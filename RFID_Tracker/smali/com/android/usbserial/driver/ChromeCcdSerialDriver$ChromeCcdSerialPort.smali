.class public Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;
.super Lcom/android/usbserial/driver/CommonUsbSerialPort;
.source "ChromeCcdSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/usbserial/driver/ChromeCcdSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChromeCcdSerialPort"
.end annotation


# instance fields
.field private mDataInterface:Landroid/hardware/usb/UsbInterface;

.field final synthetic this$0:Lcom/android/usbserial/driver/ChromeCcdSerialDriver;


# direct methods
.method public constructor <init>(Lcom/android/usbserial/driver/ChromeCcdSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->this$0:Lcom/android/usbserial/driver/ChromeCcdSerialDriver;

    .line 49
    invoke-direct {p0, p2, p3}, Lcom/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    return-void
.end method


# virtual methods
.method protected closeInt()V
    .locals 2

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getDriver()Lcom/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->this$0:Lcom/android/usbserial/driver/ChromeCcdSerialDriver;

    return-object v0
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

    .line 89
    const-class v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

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

    .line 54
    iget-object v0, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->this$0:Lcom/android/usbserial/driver/ChromeCcdSerialDriver;

    invoke-static {v0}, Lcom/android/usbserial/driver/ChromeCcdSerialDriver;->access$000(Lcom/android/usbserial/driver/ChromeCcdSerialDriver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "claiming interfaces, count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v1, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mPortNumber:I

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 56
    iget-object v0, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->this$0:Lcom/android/usbserial/driver/ChromeCcdSerialDriver;

    invoke-static {v0}, Lcom/android/usbserial/driver/ChromeCcdSerialDriver;->access$000(Lcom/android/usbserial/driver/ChromeCcdSerialDriver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endpoint count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    const/16 v3, 0x80

    const/4 v4, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 63
    iput-object v1, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 65
    iput-object v1, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 57
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim shared control/data interface"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public setParameters(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
