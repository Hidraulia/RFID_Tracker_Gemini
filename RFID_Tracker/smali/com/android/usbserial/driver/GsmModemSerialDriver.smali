.class public Lcom/android/usbserial/driver/GsmModemSerialDriver;
.super Ljava/lang/Object;
.source "GsmModemSerialDriver.java"

# interfaces
.implements Lcom/android/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPort:Lcom/android/usbserial/driver/UsbSerialPort;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/android/usbserial/driver/GsmModemSerialDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/usbserial/driver/GsmModemSerialDriver;->TAG:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/android/usbserial/driver/GsmModemSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 40
    new-instance v0, Lcom/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;-><init>(Lcom/android/usbserial/driver/GsmModemSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    iput-object v0, p0, Lcom/android/usbserial/driver/GsmModemSerialDriver;->mPort:Lcom/android/usbserial/driver/UsbSerialPort;

    return-void
.end method

.method static synthetic access$000(Lcom/android/usbserial/driver/GsmModemSerialDriver;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/usbserial/driver/GsmModemSerialDriver;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static getSupportedDevices()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v1, 0x1782

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x4d10
        0x4d12
    .end array-data
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/usbserial/driver/GsmModemSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/usbserial/driver/GsmModemSerialDriver;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/usbserial/driver/GsmModemSerialDriver;->mPort:Lcom/android/usbserial/driver/UsbSerialPort;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
