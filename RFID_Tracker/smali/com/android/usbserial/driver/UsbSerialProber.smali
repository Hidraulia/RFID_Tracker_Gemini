.class public Lcom/android/usbserial/driver/UsbSerialProber;
.super Ljava/lang/Object;
.source "UsbSerialProber.java"


# instance fields
.field private final mProbeTable:Lcom/android/usbserial/driver/ProbeTable;


# direct methods
.method public constructor <init>(Lcom/android/usbserial/driver/ProbeTable;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/usbserial/driver/UsbSerialProber;->mProbeTable:Lcom/android/usbserial/driver/ProbeTable;

    return-void
.end method

.method public static getDefaultProbeTable()Lcom/android/usbserial/driver/ProbeTable;
    .locals 2

    .line 34
    new-instance v0, Lcom/android/usbserial/driver/ProbeTable;

    invoke-direct {v0}, Lcom/android/usbserial/driver/ProbeTable;-><init>()V

    .line 35
    const-class v1, Lcom/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-virtual {v0, v1}, Lcom/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    .line 36
    const-class v1, Lcom/android/usbserial/driver/Cp21xxSerialDriver;

    invoke-virtual {v0, v1}, Lcom/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    .line 37
    const-class v1, Lcom/android/usbserial/driver/FtdiSerialDriver;

    invoke-virtual {v0, v1}, Lcom/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    .line 38
    const-class v1, Lcom/android/usbserial/driver/ProlificSerialDriver;

    invoke-virtual {v0, v1}, Lcom/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    .line 39
    const-class v1, Lcom/android/usbserial/driver/Ch34xSerialDriver;

    invoke-virtual {v0, v1}, Lcom/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    .line 40
    const-class v1, Lcom/android/usbserial/driver/GsmModemSerialDriver;

    invoke-virtual {v0, v1}, Lcom/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    .line 41
    const-class v1, Lcom/android/usbserial/driver/ChromeCcdSerialDriver;

    invoke-virtual {v0, v1}, Lcom/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getDefaultProber()Lcom/android/usbserial/driver/UsbSerialProber;
    .locals 2

    .line 30
    new-instance v0, Lcom/android/usbserial/driver/UsbSerialProber;

    invoke-static {}, Lcom/android/usbserial/driver/UsbSerialProber;->getDefaultProbeTable()Lcom/android/usbserial/driver/ProbeTable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/usbserial/driver/UsbSerialProber;-><init>(Lcom/android/usbserial/driver/ProbeTable;)V

    return-object v0
.end method


# virtual methods
.method public findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/usbserial/driver/UsbSerialDriver;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 58
    invoke-virtual {p0, v1}, Lcom/android/usbserial/driver/UsbSerialProber;->probeDevice(Landroid/hardware/usb/UsbDevice;)Lcom/android/usbserial/driver/UsbSerialDriver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public probeDevice(Landroid/hardware/usb/UsbDevice;)Lcom/android/usbserial/driver/UsbSerialDriver;
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/android/usbserial/driver/UsbSerialProber;->mProbeTable:Lcom/android/usbserial/driver/ProbeTable;

    invoke-virtual {v0, p1}, Lcom/android/usbserial/driver/ProbeTable;->findDriver(Landroid/hardware/usb/UsbDevice;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    .line 78
    const-class v3, Landroid/hardware/usb/UsbDevice;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/usbserial/driver/UsbSerialDriver;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    .line 83
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
