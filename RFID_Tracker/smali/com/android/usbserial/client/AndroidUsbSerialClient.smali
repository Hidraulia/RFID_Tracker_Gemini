.class public Lcom/android/usbserial/client/AndroidUsbSerialClient;
.super Lcom/gg/reader/api/dal/communication/CommunicationInterface;
.source "AndroidUsbSerialClient.java"

# interfaces
.implements Lcom/android/usbserial/util/SerialInputOutputManager$Listener;


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.android.gx.USB_PERMISSION"


# instance fields
.field public deviceListener:Lcom/android/usbserial/client/OnUsbSerialDeviceListener;

.field private initParam:Ljava/lang/String;

.field private isDtr:Z

.field private mBaudRate:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSerialIoManager:Lcom/android/usbserial/util/SerialInputOutputManager;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbName:Ljava/lang/String;

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private final mUsbStateChange:Landroid/content/BroadcastReceiver;

.field public stateListener:Lcom/gg/reader/api/dal/communication/OnUsbSerialStateListener;

.field private usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

.field private writeTimeout:I


# direct methods
.method private constructor <init>(Lcom/android/usbserial/driver/UsbSerialPort;Landroid/content/Context;Landroid/hardware/usb/UsbManager;Ljava/lang/String;)V
    .locals 1

    .line 187
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;-><init>()V

    const v0, 0x1c200

    .line 43
    iput v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mBaudRate:I

    const/16 v0, 0x7d0

    .line 44
    iput v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->writeTimeout:I

    .line 50
    new-instance v0, Lcom/android/usbserial/client/AndroidUsbSerialClient$1;

    invoke-direct {v0, p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient$1;-><init>(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V

    iput-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 403
    new-instance v0, Lcom/android/usbserial/client/AndroidUsbSerialClient$4;

    invoke-direct {v0, p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient$4;-><init>(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V

    iput-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbStateChange:Landroid/content/BroadcastReceiver;

    .line 188
    iput-object p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    .line 189
    iput-object p2, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mContext:Landroid/content/Context;

    .line 190
    iput-object p3, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 191
    iput-object p4, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->openDevice()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->onConnectFailed()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/usbserial/client/AndroidUsbSerialClient;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->initParam:Ljava/lang/String;

    return-object p0
.end method

.method public static getOtherUsbDevicesMap(Landroid/content/Context;Ljava/util/Map;Ljava/lang/Class;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/usbserial/driver/UsbSerialDriver;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/usbserial/client/AndroidUsbSerialClient;",
            ">;"
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 150
    :cond_0
    new-instance v1, Lcom/android/usbserial/driver/ProbeTable;

    invoke-direct {v1}, Lcom/android/usbserial/driver/ProbeTable;-><init>()V

    if-eqz p1, :cond_1

    .line 152
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 153
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v4, v3, p2}, Lcom/android/usbserial/driver/ProbeTable;->addProduct(IILjava/lang/Class;)Lcom/android/usbserial/driver/ProbeTable;

    goto :goto_0

    .line 156
    :cond_1
    new-instance p1, Lcom/android/usbserial/driver/UsbSerialProber;

    invoke-direct {p1, v1}, Lcom/android/usbserial/driver/UsbSerialProber;-><init>(Lcom/android/usbserial/driver/ProbeTable;)V

    .line 157
    invoke-virtual {p1, v0}, Lcom/android/usbserial/driver/UsbSerialProber;->findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;

    move-result-object p1

    .line 158
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/usbserial/driver/UsbSerialDriver;

    .line 160
    invoke-interface {v1}, Lcom/android/usbserial/driver/UsbSerialDriver;->getPorts()Ljava/util/List;

    move-result-object v2

    .line 161
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/usbserial/driver/UsbSerialPort;

    .line 162
    invoke-interface {v3}, Lcom/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/android/usbserial/driver/UsbSerialDriver;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v4

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/android/usbserial/driver/UsbSerialDriver;->getDriverName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_vid_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "&pid_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    new-instance v5, Lcom/android/usbserial/client/AndroidUsbSerialClient;

    invoke-direct {v5, v3, p0, v0, v4}, Lcom/android/usbserial/client/AndroidUsbSerialClient;-><init>(Lcom/android/usbserial/driver/UsbSerialPort;Landroid/content/Context;Landroid/hardware/usb/UsbManager;Ljava/lang/String;)V

    .line 165
    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method public static getUsbDevicesList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/usbserial/client/AndroidUsbSerialClient;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-static {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbDevicesMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getUsbDevicesList(Landroid/content/Context;II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/usbserial/client/AndroidUsbSerialClient;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-static {p0, p1, p2}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbDevicesMap(Landroid/content/Context;II)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 184
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public static getUsbDevicesMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/usbserial/client/AndroidUsbSerialClient;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_0
    invoke-static {}, Lcom/android/usbserial/driver/UsbSerialProber;->getDefaultProber()Lcom/android/usbserial/driver/UsbSerialProber;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/usbserial/driver/UsbSerialProber;->findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;

    move-result-object v1

    .line 110
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/usbserial/driver/UsbSerialDriver;

    .line 112
    invoke-interface {v3}, Lcom/android/usbserial/driver/UsbSerialDriver;->getPorts()Ljava/util/List;

    move-result-object v4

    .line 113
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/usbserial/driver/UsbSerialPort;

    .line 114
    invoke-interface {v5}, Lcom/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/android/usbserial/driver/UsbSerialDriver;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v6

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/android/usbserial/driver/UsbSerialDriver;->getDriverName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_vid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "&pid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 116
    new-instance v7, Lcom/android/usbserial/client/AndroidUsbSerialClient;

    invoke-direct {v7, v5, p0, v0, v6}, Lcom/android/usbserial/client/AndroidUsbSerialClient;-><init>(Lcom/android/usbserial/driver/UsbSerialPort;Landroid/content/Context;Landroid/hardware/usb/UsbManager;Ljava/lang/String;)V

    .line 117
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static getUsbDevicesMap(Landroid/content/Context;II)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/usbserial/client/AndroidUsbSerialClient;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 128
    :cond_0
    invoke-static {}, Lcom/android/usbserial/driver/UsbSerialProber;->getDefaultProber()Lcom/android/usbserial/driver/UsbSerialProber;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/usbserial/driver/UsbSerialProber;->findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;

    move-result-object v1

    .line 129
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 130
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/usbserial/driver/UsbSerialDriver;

    .line 131
    invoke-interface {v3}, Lcom/android/usbserial/driver/UsbSerialDriver;->getPorts()Ljava/util/List;

    move-result-object v4

    .line 132
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/usbserial/driver/UsbSerialPort;

    .line 133
    invoke-interface {v5}, Lcom/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/android/usbserial/driver/UsbSerialDriver;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v6

    .line 134
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v7

    if-ne v7, p1, :cond_2

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v7

    if-ne v7, p2, :cond_2

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/android/usbserial/driver/UsbSerialDriver;->getDriverName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_vid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "&pid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 136
    new-instance v7, Lcom/android/usbserial/client/AndroidUsbSerialClient;

    invoke-direct {v7, v5, p0, v0, v6}, Lcom/android/usbserial/client/AndroidUsbSerialClient;-><init>(Lcom/android/usbserial/driver/UsbSerialPort;Landroid/content/Context;Landroid/hardware/usb/UsbManager;Ljava/lang/String;)V

    .line 137
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private hasPermission()V
    .locals 5

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mHandler:Landroid/os/Handler;

    .line 196
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.gx.USB_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mContext:Landroid/content/Context;

    const/high16 v3, 0x2000000

    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 207
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 209
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v1, v3, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    :goto_1
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->openDevice()V

    :goto_2
    return-void
.end method

.method private onConnectFailed()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/usbserial/client/AndroidUsbSerialClient$3;

    invoke-direct {v1, p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient$3;-><init>(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private openDevice()V
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->onConnectFailed()V

    return-void

    .line 227
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v1, v0}, Lcom/android/usbserial/driver/UsbSerialPort;->open(Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 228
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    iget v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mBaudRate:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/usbserial/driver/UsbSerialPort;->setParameters(IIII)V

    .line 229
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    iget-boolean v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->isDtr:Z

    invoke-interface {v0, v1}, Lcom/android/usbserial/driver/UsbSerialPort;->setDTR(Z)V

    .line 230
    new-instance v0, Lcom/android/usbserial/util/SerialInputOutputManager;

    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    invoke-direct {v0, v1, p0}, Lcom/android/usbserial/util/SerialInputOutputManager;-><init>(Lcom/android/usbserial/driver/UsbSerialPort;Lcom/android/usbserial/util/SerialInputOutputManager$Listener;)V

    iput-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mSerialIoManager:Lcom/android/usbserial/util/SerialInputOutputManager;

    .line 231
    iput-boolean v4, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->keepReceived:Z

    .line 232
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mSerialIoManager:Lcom/android/usbserial/util/SerialInputOutputManager;

    invoke-virtual {v0}, Lcom/android/usbserial/util/SerialInputOutputManager;->start()V

    .line 233
    invoke-virtual {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->startProcess()V

    .line 234
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/usbserial/client/AndroidUsbSerialClient$2;

    invoke-direct {v1, p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient$2;-><init>(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->keepReceived:Z

    .line 288
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    if-eqz v0, :cond_0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mSerialIoManager:Lcom/android/usbserial/util/SerialInputOutputManager;

    invoke-virtual {v0}, Lcom/android/usbserial/util/SerialInputOutputManager;->stop()V

    .line 291
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v0}, Lcom/android/usbserial/driver/UsbSerialPort;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_1
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 298
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v1}, Lcom/gg/reader/api/utils/RingBuffer;->Clear()V

    .line 299
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_1
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getBaudRate()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mBaudRate:I

    return v0
.end method

.method public getUsbDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v0}, Lcom/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/android/usbserial/driver/UsbSerialDriver;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    return-object v0
.end method

.method public getUsbName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbName:Ljava/lang/String;

    return-object v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->writeTimeout:I

    return v0
.end method

.method public isDtr()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->isDtr:Z

    return v0
.end method

.method public onNewData([B)V
    .locals 4

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    :try_start_1
    array-length v1, p1

    iget-object v2, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v2}, Lcom/gg/reader/api/utils/RingBuffer;->getDataCount()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x100000

    if-le v1, v2, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->lockRingBuffer:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Lcom/gg/reader/api/utils/RingBuffer;->WriteBuffer([BII)V

    .line 378
    iget-object p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 379
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public onRunError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public open(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iput-object p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->initParam:Ljava/lang/String;

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->hasPermission()V

    const/4 p1, 0x1

    return p1
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public open(Ljava/lang/String;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public open(Ljava/net/Socket;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public receive([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public registerUsbState(Landroid/content/Context;)V
    .locals 2

    const-string v0, "usb"

    .line 391
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 392
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 393
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 394
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbStateChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public send(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 2

    .line 344
    :try_start_0
    iget-boolean v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->isRs485:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "1"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    .line 346
    invoke-virtual {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getRs485Address()I

    move-result v0

    iput v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->rs485Address:I

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    .line 349
    iget-boolean v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->isRs485:Z

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/Message;->toBytes(Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public send([B)V
    .locals 7

    .line 305
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    if-eqz v0, :cond_2

    .line 306
    invoke-interface {v0}, Lcom/android/usbserial/driver/UsbSerialPort;->getWriteEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    .line 307
    array-length v1, p1

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    array-length v1, p1

    div-int/2addr v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    div-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    add-int/lit8 v4, v1, -0x1

    if-ne v3, v4, :cond_1

    .line 312
    :try_start_0
    array-length v4, p1

    mul-int v5, v3, v0

    sub-int/2addr v4, v5

    new-array v4, v4, [B

    goto :goto_2

    .line 314
    :cond_1
    new-array v4, v0, [B

    :goto_2
    mul-int v5, v3, v0

    .line 316
    array-length v6, v4

    invoke-static {p1, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    iget-object v5, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    iget v6, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->writeTimeout:I

    invoke-interface {v5, v4, v6}, Lcom/android/usbserial/driver/UsbSerialPort;->write([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 320
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-void
.end method

.method public setBaudRate(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mBaudRate:I

    return-void
.end method

.method public setBufferSize(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDtr(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->isDtr:Z

    return-void
.end method

.method public setWriteTimeout(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->writeTimeout:I

    return-void
.end method

.method public setmUsbName(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbName:Ljava/lang/String;

    return-void
.end method

.method public unregisterState(Landroid/content/Context;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbStateChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
