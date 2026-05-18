.class public Lcom/android/usbserial/driver/ChromeCcdSerialDriver;
.super Ljava/lang/Object;
.source "ChromeCcdSerialDriver.java"

# interfaces
.implements Lcom/android/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver;->TAG:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver;->mPorts:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver;->mPorts:Ljava/util/List;

    new-instance v2, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;-><init>(Lcom/android/usbserial/driver/ChromeCcdSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/usbserial/driver/ChromeCcdSerialDriver;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static getSupportedDevices()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v1, 0x18d1

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x5014

    aput v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/android/usbserial/driver/ChromeCcdSerialDriver;->mPorts:Ljava/util/List;

    return-object v0
.end method
