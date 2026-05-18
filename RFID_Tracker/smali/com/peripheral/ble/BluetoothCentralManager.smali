.class public Lcom/peripheral/ble/BluetoothCentralManager;
.super Ljava/lang/Object;
.source "BluetoothCentralManager.java"


# static fields
.field private static final CANNOT_CONNECT_TO_PERIPHERAL_BECAUSE_BLUETOOTH_IS_OFF:Ljava/lang/String; = "cannot connect to peripheral because Bluetooth is off"

.field private static final DEFAULT_TRANSPORT:Lcom/peripheral/ble/Transport;

.field private static final MAX_CONNECTION_RETRIES:I = 0x1

.field private static final NO_PERIPHERAL_ADDRESS_PROVIDED:Ljava/lang/String; = "no peripheral address provided"

.field private static final NO_VALID_PERIPHERAL_CALLBACK_SPECIFIED:Ljava/lang/String; = "no valid peripheral callback specified"

.field private static final NO_VALID_PERIPHERAL_PROVIDED:Ljava/lang/String; = "no valid peripheral provided"

.field private static final SCAN_RESTART_DELAY:I = 0x3e8

.field private static final SCAN_TIMEOUT:J = 0x2bf20L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final adapterStateReceiver:Landroid/content/BroadcastReceiver;

.field private autoConnectRunnable:Ljava/lang/Runnable;

.field private final autoConnectScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private final autoConnectScanSettings:Landroid/bluetooth/le/ScanSettings;

.field private volatile autoConnectScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final bluetoothCentralManagerCallback:Lcom/peripheral/ble/BluetoothCentralManagerCallback;

.field private volatile bluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private final callBackHandler:Landroid/os/Handler;

.field private final connectLock:Ljava/lang/Object;

.field protected final connectedPeripherals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/peripheral/ble/BluetoothPeripheral;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionRetries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private volatile currentCallback:Landroid/bluetooth/le/ScanCallback;

.field private currentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultScanCallback:Landroid/bluetooth/le/ScanCallback;

.field protected final internalCallback:Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

.field private final mainHandler:Landroid/os/Handler;

.field private final pinCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final reconnectCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/peripheral/ble/BluetoothPeripheralCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final reconnectPeripheralAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scanByNameCallback:Landroid/bluetooth/le/ScanCallback;

.field private final scanLock:Ljava/lang/Object;

.field private scanPeripheralNames:[Ljava/lang/String;

.field private scanSettings:Landroid/bluetooth/le/ScanSettings;

.field private final scannedPeripherals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/peripheral/ble/BluetoothPeripheral;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutRunnable:Ljava/lang/Runnable;

.field private transport:Lcom/peripheral/ble/Transport;

.field protected final unconnectedPeripherals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/peripheral/ble/BluetoothPeripheral;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/peripheral/ble/BluetoothCentralManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/peripheral/ble/Transport;->LE:Lcom/peripheral/ble/Transport;

    sput-object v0, Lcom/peripheral/ble/BluetoothCentralManager;->DEFAULT_TRANSPORT:Lcom/peripheral/ble/Transport;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/peripheral/ble/BluetoothCentralManagerCallback;Landroid/os/Handler;)V
    .locals 2

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scannedPeripherals:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectPeripheralAddresses:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectCallbacks:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanPeripheralNames:[Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->mainHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectionRetries:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->pinCodes:Ljava/util/Map;

    .line 97
    sget-object v0, Lcom/peripheral/ble/BluetoothCentralManager;->DEFAULT_TRANSPORT:Lcom/peripheral/ble/Transport;

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->transport:Lcom/peripheral/ble/Transport;

    .line 101
    new-instance v0, Lcom/peripheral/ble/BluetoothCentralManager$1;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothCentralManager$1;-><init>(Lcom/peripheral/ble/BluetoothCentralManager;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanByNameCallback:Landroid/bluetooth/le/ScanCallback;

    .line 124
    new-instance v0, Lcom/peripheral/ble/BluetoothCentralManager$2;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothCentralManager$2;-><init>(Lcom/peripheral/ble/BluetoothCentralManager;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->defaultScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 164
    new-instance v0, Lcom/peripheral/ble/BluetoothCentralManager$5;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothCentralManager$5;-><init>(Lcom/peripheral/ble/BluetoothCentralManager;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 205
    new-instance v0, Lcom/peripheral/ble/BluetoothCentralManager$6;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothCentralManager$6;-><init>(Lcom/peripheral/ble/BluetoothCentralManager;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->internalCallback:Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

    .line 1080
    new-instance v0, Lcom/peripheral/ble/BluetoothCentralManager$11;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothCentralManager$11;-><init>(Lcom/peripheral/ble/BluetoothCentralManager;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->adapterStateReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "no valid context provided"

    .line 303
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->context:Landroid/content/Context;

    const-string v0, "no valid bluetoothCallback provided"

    .line 304
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/peripheral/ble/BluetoothCentralManagerCallback;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothCentralManagerCallback:Lcom/peripheral/ble/BluetoothCentralManagerCallback;

    const-string p2, "no valid handler provided"

    .line 305
    invoke-static {p3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->callBackHandler:Landroid/os/Handler;

    const-string p2, "bluetooth"

    .line 306
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothManager;

    const-string p3, "cannot get BluetoothManager"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothManager;

    .line 307
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    const-string p3, "no bluetooth adapter found"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 308
    sget-object p2, Lcom/peripheral/ble/ScanMode;->LOW_POWER:Lcom/peripheral/ble/ScanMode;

    invoke-direct {p0, p2}, Lcom/peripheral/ble/BluetoothCentralManager;->getScanSettings(Lcom/peripheral/ble/ScanMode;)Landroid/bluetooth/le/ScanSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectScanSettings:Landroid/bluetooth/le/ScanSettings;

    .line 309
    sget-object p2, Lcom/peripheral/ble/ScanMode;->LOW_LATENCY:Lcom/peripheral/ble/ScanMode;

    invoke-direct {p0, p2}, Lcom/peripheral/ble/BluetoothCentralManager;->getScanSettings(Lcom/peripheral/ble/ScanMode;)Landroid/bluetooth/le/ScanSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanSettings:Landroid/bluetooth/le/ScanSettings;

    .line 312
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 313
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothCentralManager;->adapterStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/peripheral/ble/BluetoothCentralManager;)[Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanPeripheralNames:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/peripheral/ble/BluetoothCentralManager;Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothCentralManager;->sendScanResult(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/peripheral/ble/BluetoothCentralManager;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->scanForAutoConnectPeripherals()V

    return-void
.end method

.method static synthetic access$1100(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->callBackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/peripheral/ble/BluetoothCentralManager;)Ljava/util/Map;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectionRetries:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/peripheral/ble/BluetoothCentralManager;)Ljava/util/Map;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->pinCodes:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/bluetooth/le/ScanCallback;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->currentCallback:Landroid/bluetooth/le/ScanCallback;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/peripheral/ble/BluetoothCentralManager;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->currentFilters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/bluetooth/le/ScanSettings;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanSettings:Landroid/bluetooth/le/ScanSettings;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/peripheral/ble/BluetoothCentralManager;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/peripheral/ble/BluetoothCentralManager;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/peripheral/ble/BluetoothCentralManager;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/peripheral/ble/BluetoothCentralManager;Lcom/peripheral/ble/ScanFailure;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothCentralManager;->sendScanFailed(Lcom/peripheral/ble/ScanFailure;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/peripheral/ble/BluetoothCentralManager;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothCentralManager;->handleAdapterState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/peripheral/ble/BluetoothCentralManager;)Lcom/peripheral/ble/BluetoothCentralManagerCallback;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothCentralManagerCallback:Lcom/peripheral/ble/BluetoothCentralManagerCallback;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/peripheral/ble/BluetoothCentralManager;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->isAutoScanning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/peripheral/ble/BluetoothCentralManager;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->stopAutoconnectScan()V

    return-void
.end method

.method static synthetic access$700(Lcom/peripheral/ble/BluetoothCentralManager;)Ljava/util/Map;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800(Lcom/peripheral/ble/BluetoothCentralManager;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectPeripheralAddresses:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/peripheral/ble/BluetoothCentralManager;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothCentralManager;->removePeripheralFromCaches(Ljava/lang/String;)V

    return-void
.end method

.method private autoConnectPeripheralByScan(Ljava/lang/String;Lcom/peripheral/ble/BluetoothPeripheralCallback;)V
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectPeripheralAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    sget-object p1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string p2, "peripheral already on list for reconnection"

    invoke-static {p1, p2}, Lcom/peripheral/ble/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectPeripheralAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->scanForAutoConnectPeripherals()V

    return-void
.end method

.method private bleNotReady()Z
    .locals 2

    .line 833
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->isBleSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->permissionsGranted()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method private cancelAllConnectionsWhenBluetoothOff()V
    .locals 2

    .line 1062
    sget-object v0, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v1, "disconnect all peripherals because bluetooth is off"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/peripheral/ble/BluetoothPeripheral;

    .line 1065
    invoke-virtual {v1}, Lcom/peripheral/ble/BluetoothPeripheral;->disconnectWhenBluetoothOff()V

    goto :goto_0

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1070
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/peripheral/ble/BluetoothPeripheral;

    .line 1071
    invoke-virtual {v1}, Lcom/peripheral/ble/BluetoothPeripheral;->disconnectWhenBluetoothOff()V

    goto :goto_1

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1076
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectPeripheralAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1077
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private cancelAutoConnectTimer()V
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 958
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 959
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private cancelTimeoutTimer()V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 921
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 922
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->timeoutRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private getScanSettings(Lcom/peripheral/ble/ScanMode;)Landroid/bluetooth/le/ScanSettings;
    .locals 4

    const-string v0, "scanMode is null"

    .line 345
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 348
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    iget p1, p1, Lcom/peripheral/ble/ScanMode;->value:I

    .line 349
    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 350
    invoke-virtual {p1, v0}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    .line 351
    invoke-virtual {p1, v0}, Landroid/bluetooth/le/ScanSettings$Builder;->setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    .line 352
    invoke-virtual {p1, v0}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    .line 353
    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    .line 354
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object p1

    return-object p1

    .line 356
    :cond_0
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    iget p1, p1, Lcom/peripheral/ble/ScanMode;->value:I

    .line 357
    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    .line 358
    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object p1

    return-object p1
.end method

.method private handleAdapterState(I)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 1110
    :pswitch_0
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/peripheral/ble/BluetoothPeripheral;

    .line 1111
    invoke-virtual {v1}, Lcom/peripheral/ble/BluetoothPeripheral;->cancelConnection()V

    goto :goto_0

    .line 1115
    :cond_0
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/peripheral/ble/BluetoothPeripheral;

    .line 1116
    invoke-virtual {v1}, Lcom/peripheral/ble/BluetoothPeripheral;->cancelConnection()V

    goto :goto_1

    .line 1120
    :cond_1
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectPeripheralAddresses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1121
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1124
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->isScanning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1125
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->stopScan()V

    .line 1128
    :cond_2
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->isAutoScanning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1129
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->stopAutoconnectScan()V

    .line 1132
    :cond_3
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->cancelTimeoutTimer()V

    .line 1133
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->cancelAutoConnectTimer()V

    .line 1134
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 1135
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 1136
    sget-object p1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v0, "bluetooth turning off"

    invoke-static {p1, v0}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1139
    :pswitch_1
    sget-object p1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v1, "bluetooth turned on"

    invoke-static {p1, v1}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p1

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 1144
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->currentCallback:Landroid/bluetooth/le/ScanCallback;

    if-eqz p1, :cond_4

    .line 1146
    :try_start_0
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->currentCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p1, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    :catch_0
    :cond_4
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->currentCallback:Landroid/bluetooth/le/ScanCallback;

    .line 1150
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->currentFilters:Ljava/util/List;

    goto :goto_2

    .line 1153
    :pswitch_2
    sget-object p1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v0, "bluetooth turning on"

    invoke-static {p1, v0}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1103
    :pswitch_3
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-gtz p1, :cond_5

    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 1104
    :cond_5
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->cancelAllConnectionsWhenBluetoothOff()V

    .line 1106
    :cond_6
    sget-object p1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v0, "bluetooth turned off"

    invoke-static {p1, v0}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAutoScanning()Z
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBleSupported()Z
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 846
    :cond_0
    sget-object v0, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v1, "BLE not supported"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private permissionsGranted()Z
    .locals 4

    .line 864
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 865
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2

    if-lt v0, v2, :cond_2

    .line 866
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->context:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->context:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 870
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "app does not have BLUETOOTH_CONNECT permission, cannot connect"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "app does not have BLUETOOTH_SCAN permission, cannot start scan"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_4

    if-lt v0, v2, :cond_4

    .line 874
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 875
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "app does not have ACCESS_FINE_LOCATION permission, cannot start scan"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_6

    .line 878
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    return v3

    .line 879
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "app does not have ACCESS_COARSE_LOCATION permission, cannot start scan"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return v3
.end method

.method private removePeripheralFromCaches(Ljava/lang/String;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scannedPeripherals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectionRetries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private scanForAutoConnectPeripherals()V
    .locals 4

    .line 510
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->bleNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_1

    .line 513
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->stopAutoconnectScan()V

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 517
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_3

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectPeripheralAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 520
    new-instance v3, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 521
    invoke-virtual {v3, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v2

    .line 522
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v2

    .line 523
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 526
    :cond_2
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectScanSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 527
    sget-object v0, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "started scanning to autoconnect peripherals ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectPeripheralAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->setAutoConnectTimer()V

    goto :goto_1

    .line 530
    :cond_3
    sget-object v0, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v1, "starting autoconnect scan failed"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private sendScanFailed(Lcom/peripheral/ble/ScanFailure;)V
    .locals 2

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->currentCallback:Landroid/bluetooth/le/ScanCallback;

    .line 154
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->currentFilters:Ljava/util/List;

    .line 155
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->callBackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/peripheral/ble/BluetoothCentralManager$4;

    invoke-direct {v1, p0, p1}, Lcom/peripheral/ble/BluetoothCentralManager$4;-><init>(Lcom/peripheral/ble/BluetoothCentralManager;Lcom/peripheral/ble/ScanFailure;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->callBackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/peripheral/ble/BluetoothCentralManager$3;

    invoke-direct {v1, p0, p1}, Lcom/peripheral/ble/BluetoothCentralManager$3;-><init>(Lcom/peripheral/ble/BluetoothCentralManager;Landroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setAutoConnectTimer()V
    .locals 4

    .line 931
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->cancelAutoConnectTimer()V

    .line 932
    new-instance v0, Lcom/peripheral/ble/BluetoothCentralManager$9;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothCentralManager$9;-><init>(Lcom/peripheral/ble/BluetoothCentralManager;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectRunnable:Ljava/lang/Runnable;

    .line 950
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->mainHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setScanTimer()V
    .locals 4

    .line 891
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->cancelTimeoutTimer()V

    .line 893
    new-instance v0, Lcom/peripheral/ble/BluetoothCentralManager$8;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothCentralManager$8;-><init>(Lcom/peripheral/ble/BluetoothCentralManager;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->timeoutRunnable:Ljava/lang/Runnable;

    .line 913
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->mainHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .line 393
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->bleNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    sget-object v0, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v1, "other scan still active, stopping scan"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->stopScan()V

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_3

    .line 405
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->setScanTimer()V

    .line 406
    iput-object p3, p0, Lcom/peripheral/ble/BluetoothCentralManager;->currentCallback:Landroid/bluetooth/le/ScanCallback;

    .line 407
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->currentFilters:Ljava/util/List;

    .line 408
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 409
    sget-object p1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string p2, "scan started"

    invoke-static {p1, p2}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_3
    sget-object p1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string p2, "starting scan failed"

    invoke-static {p1, p2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private stopAutoconnectScan()V
    .locals 2

    .line 535
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->cancelAutoConnectTimer()V

    .line 536
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_0

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 540
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 541
    sget-object v0, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v1, "autoscan stopped"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public autoConnectPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/BluetoothPeripheralCallback;)V
    .locals 6

    .line 669
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "no valid peripheral provided"

    .line 670
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "no valid peripheral callback specified"

    .line 671
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 673
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 674
    sget-object p2, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v1, "already connected to %s\'"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2, v1, v3}, Lcom/peripheral/ble/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    monitor-exit v0

    return-void

    .line 678
    :cond_0
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 679
    sget-object p2, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v1, "already issued autoconnect for \'%s\' "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2, v1, v3}, Lcom/peripheral/ble/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    monitor-exit v0

    return-void

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 684
    sget-object p1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string p2, "cannot connect to peripheral because Bluetooth is off"

    invoke-static {p1, p2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    monitor-exit v0

    return-void

    .line 689
    :cond_2
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->isUncached()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 690
    sget-object v1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v4, "peripheral with address \'%s\' not in Bluetooth cache, autoconnecting by scanning"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v4, v3}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scannedPeripherals:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectPeripheralByScan(Ljava/lang/String;Lcom/peripheral/ble/BluetoothPeripheralCallback;)V

    .line 694
    monitor-exit v0

    return-void

    .line 697
    :cond_3
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getType()Lcom/peripheral/ble/PeripheralType;

    move-result-object v1

    sget-object v2, Lcom/peripheral/ble/PeripheralType;->CLASSIC:Lcom/peripheral/ble/PeripheralType;

    if-ne v1, v2, :cond_4

    .line 698
    sget-object p1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string p2, "peripheral does not support Bluetooth LE"

    invoke-static {p1, p2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    monitor-exit v0

    return-void

    .line 702
    :cond_4
    invoke-virtual {p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->setPeripheralCallback(Lcom/peripheral/ble/BluetoothPeripheralCallback;)V

    .line 703
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scannedPeripherals:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->autoConnect()V

    .line 706
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public autoConnectPeripheralsBatch(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/peripheral/ble/BluetoothPeripheral;",
            "Lcom/peripheral/ble/BluetoothPeripheralCallback;",
            ">;)V"
        }
    .end annotation

    const-string v0, "no valid batch provided"

    .line 767
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 769
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    sget-object p1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v0, "cannot connect to peripheral because Bluetooth is off"

    invoke-static {p1, v0}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 775
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 776
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/peripheral/ble/BluetoothPeripheral;

    .line 777
    invoke-virtual {v2}, Lcom/peripheral/ble/BluetoothPeripheral;->isUncached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 778
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/peripheral/ble/BluetoothPeripheralCallback;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 780
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/peripheral/ble/BluetoothPeripheralCallback;

    invoke-virtual {p0, v2, v3}, Lcom/peripheral/ble/BluetoothCentralManager;->autoConnectPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/BluetoothPeripheralCallback;)V

    goto :goto_0

    .line 785
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 786
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/peripheral/ble/BluetoothPeripheral;

    .line 787
    invoke-virtual {v1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 788
    iget-object v3, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectPeripheralAddresses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    iget-object v3, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectCallbacks:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/peripheral/ble/BluetoothPeripheralCallback;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v3, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 792
    :cond_3
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->scanForAutoConnectPeripherals()V

    :cond_4
    return-void
.end method

.method public cancelConnection(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 4

    const-string v0, "no valid peripheral provided"

    .line 726
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 729
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 730
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectPeripheralAddresses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 731
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectPeripheralAddresses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 732
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->stopAutoconnectScan()V

    .line 735
    sget-object v1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "cancelling autoconnect for %s"

    invoke-static {v1, v0, v3}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->callBackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/peripheral/ble/BluetoothCentralManager$7;

    invoke-direct {v1, p0, p1}, Lcom/peripheral/ble/BluetoothCentralManager$7;-><init>(Lcom/peripheral/ble/BluetoothCentralManager;Lcom/peripheral/ble/BluetoothPeripheral;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 744
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectPeripheralAddresses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 745
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->scanForAutoConnectPeripherals()V

    :cond_0
    return-void

    .line 751
    :cond_1
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 754
    :cond_2
    sget-object p1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "cannot cancel connection to unknown peripheral %s"

    invoke-static {p1, v0, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 752
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->cancelConnection()V

    :goto_1
    return-void
.end method

.method public close()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scannedPeripherals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 321
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 322
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 323
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 324
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->reconnectPeripheralAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectionRetries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 326
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->pinCodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 327
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->adapterStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public connectPeripheral(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/BluetoothPeripheralCallback;)V
    .locals 6

    .line 594
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "no valid peripheral provided"

    .line 595
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "no valid peripheral callback specified"

    .line 596
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 598
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 599
    sget-object p2, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v1, "already connected to %s\'"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2, v1, v3}, Lcom/peripheral/ble/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    monitor-exit v0

    return-void

    .line 603
    :cond_0
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    sget-object p2, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v1, "already connecting to %s\'"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2, v1, v3}, Lcom/peripheral/ble/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    monitor-exit v0

    return-void

    .line 608
    :cond_1
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 609
    sget-object p1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string p2, "cannot connect to peripheral because Bluetooth is off"

    invoke-static {p1, p2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    monitor-exit v0

    return-void

    .line 615
    :cond_2
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->isUncached()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 616
    sget-object v1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v4, "peripheral with address \'%s\' is not in the Bluetooth cache, hence connection may fail"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v4, v3}, Lcom/peripheral/ble/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    :cond_3
    invoke-virtual {p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->setPeripheralCallback(Lcom/peripheral/ble/BluetoothPeripheralCallback;)V

    .line 620
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scannedPeripherals:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->connect()V

    .line 623
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createBond(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/BluetoothPeripheralCallback;)V
    .locals 6

    .line 633
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "no valid peripheral provided"

    .line 634
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "no valid peripheral callback specified"

    .line 635
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 637
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 638
    sget-object p2, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v1, "already connected to %s\'"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2, v1, v3}, Lcom/peripheral/ble/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    monitor-exit v0

    return-void

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    sget-object p2, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v1, "already connecting to %s\'"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2, v1, v3}, Lcom/peripheral/ble/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    monitor-exit v0

    return-void

    .line 647
    :cond_1
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 648
    sget-object p1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string p2, "cannot connect to peripheral because Bluetooth is off"

    invoke-static {p1, p2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    monitor-exit v0

    return-void

    .line 654
    :cond_2
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->isUncached()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 655
    sget-object v1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v4, "peripheral with address \'%s\' is not in the Bluetooth cache, hence connection may fail"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v4, v3}, Lcom/peripheral/ble/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    :cond_3
    invoke-virtual {p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->setPeripheralCallback(Lcom/peripheral/ble/BluetoothPeripheralCallback;)V

    .line 659
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->createBond()Z

    .line 660
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public disableLogging()V
    .locals 1

    const/4 v0, 0x0

    .line 341
    sput-boolean v0, Lcom/peripheral/ble/Logger;->enabled:Z

    return-void
.end method

.method public enableLogging()V
    .locals 1

    const/4 v0, 0x1

    .line 334
    sput-boolean v0, Lcom/peripheral/ble/Logger;->enabled:Z

    return-void
.end method

.method public getConnectedPeripherals()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/peripheral/ble/BluetoothPeripheral;",
            ">;"
        }
    .end annotation

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPeripheral(Ljava/lang/String;)Lcom/peripheral/ble/BluetoothPeripheral;
    .locals 8

    const-string v0, "no peripheral address provided"

    .line 803
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 805
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 810
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->connectedPeripherals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/peripheral/ble/BluetoothPeripheral;

    return-object p1

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->unconnectedPeripherals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/peripheral/ble/BluetoothPeripheral;

    return-object p1

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scannedPeripherals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 815
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scannedPeripherals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/peripheral/ble/BluetoothPeripheral;

    return-object p1

    .line 817
    :cond_2
    new-instance v7, Lcom/peripheral/ble/BluetoothPeripheral;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothCentralManager;->internalCallback:Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

    new-instance v4, Lcom/peripheral/ble/BluetoothPeripheralCallback$NULL;

    invoke-direct {v4}, Lcom/peripheral/ble/BluetoothPeripheralCallback$NULL;-><init>()V

    iget-object v5, p0, Lcom/peripheral/ble/BluetoothCentralManager;->callBackHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/peripheral/ble/BluetoothCentralManager;->transport:Lcom/peripheral/ble/Transport;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/peripheral/ble/BluetoothPeripheral;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;Lcom/peripheral/ble/BluetoothPeripheralCallback;Landroid/os/Handler;Lcom/peripheral/ble/Transport;)V

    .line 818
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scannedPeripherals:Ljava/util/Map;

    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v7

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s is not a valid bluetooth address. Make sure all alphabetic characters are uppercase."

    .line 806
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 807
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTransport()Lcom/peripheral/ble/Transport;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->transport:Lcom/peripheral/ble/Transport;

    return-object v0
.end method

.method public isBluetoothEnabled()Z
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 859
    :cond_0
    sget-object v0, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth disabled"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isScanning()Z
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->currentCallback:Landroid/bluetooth/le/ScanCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeBond(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "no peripheral address provided"

    .line 999
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1002
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 1006
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_3

    .line 1007
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 1008
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    const/4 p1, 0x0

    .line 1019
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "removeBond"

    move-object v5, v1

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1020
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1022
    sget-object v1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v4, "Succesfully removed bond for \'%s\'"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-static {v1, v4, v2}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v0

    .line 1026
    sget-object v1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v2, "could not remove bond"

    invoke-static {v1, v2}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return p1

    :cond_3
    return v2
.end method

.method public scanForPeripherals()V
    .locals 3

    .line 503
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->defaultScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-direct {p0, v0, v1, v2}, Lcom/peripheral/ble/BluetoothCentralManager;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    return-void
.end method

.method public scanForPeripheralsUsingFilters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "no filters supplied"

    .line 490
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 492
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->defaultScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-direct {p0, p1, v0, v1}, Lcom/peripheral/ble/BluetoothCentralManager;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    return-void

    .line 493
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "at least one scan filter must be supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scanForPeripheralsWithAddresses([Ljava/lang/String;)V
    .locals 7

    const-string v0, "no peripheral addresses supplied"

    .line 463
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 465
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 471
    invoke-static {v4}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 472
    new-instance v5, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 473
    invoke-virtual {v5, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v4

    .line 474
    invoke-virtual {v4}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v4

    .line 475
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 477
    :cond_0
    sget-object v5, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const-string v4, "%s is not a valid address. Make sure all alphabetic characters are uppercase."

    invoke-static {v5, v4, v6}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 481
    :cond_1
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->defaultScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-direct {p0, v0, p1, v1}, Lcom/peripheral/ble/BluetoothCentralManager;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    return-void

    .line 466
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "at least one peripheral address must be supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public scanForPeripheralsWithNames([Ljava/lang/String;)V
    .locals 2

    const-string v0, "no peripheral names supplied"

    .line 446
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 453
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanPeripheralNames:[Ljava/lang/String;

    .line 454
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanByNameCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-direct {p0, p1, v0, v1}, Lcom/peripheral/ble/BluetoothCentralManager;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    return-void

    .line 449
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "at least one peripheral name must be supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scanForPeripheralsWithServices([Ljava/util/UUID;)V
    .locals 6

    const-string v0, "no service UUIDs supplied"

    .line 421
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 423
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 429
    new-instance v4, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-direct {v5, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 430
    invoke-virtual {v4, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v3

    .line 431
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v3

    .line 432
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    :cond_0
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->defaultScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-direct {p0, v0, p1, v1}, Lcom/peripheral/ble/BluetoothCentralManager;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    return-void

    .line 424
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "at least one service UUID  must be supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setPinCodeForPeripheral(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "no peripheral address provided"

    .line 975
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "no pin provided"

    .line 976
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 978
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 979
    sget-object p2, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "%s is not a valid address. Make sure all alphabetic characters are uppercase."

    invoke-static {p2, p1, v0}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 983
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    .line 984
    sget-object p1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string p2, "%s is not 6 digits long"

    invoke-static {p1, p2, v0}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->pinCodes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public setScanMode(Lcom/peripheral/ble/ScanMode;)V
    .locals 0

    .line 369
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothCentralManager;->getScanSettings(Lcom/peripheral/ble/ScanMode;)Landroid/bluetooth/le/ScanSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanSettings:Landroid/bluetooth/le/ScanSettings;

    return-void
.end method

.method public setTransport(Lcom/peripheral/ble/Transport;)V
    .locals 1

    const-string v0, "not a valid transport"

    .line 389
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/peripheral/ble/Transport;

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->transport:Lcom/peripheral/ble/Transport;

    return-void
.end method

.method public startPairingPopupHack()V
    .locals 4

    .line 1042
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    .line 1043
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1044
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->bleNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 1048
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->callBackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/peripheral/ble/BluetoothCentralManager$10;

    invoke-direct {v1, p0}, Lcom/peripheral/ble/BluetoothCentralManager$10;-><init>(Lcom/peripheral/ble/BluetoothCentralManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public stopScan()V
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scanLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_0
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->cancelTimeoutTimer()V

    .line 555
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothCentralManager;->isScanning()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 560
    :try_start_1
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothCentralManager;->currentCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 562
    iput-object v2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->currentCallback:Landroid/bluetooth/le/ScanCallback;

    .line 563
    iput-object v2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->currentFilters:Ljava/util/List;

    .line 564
    sget-object v1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v3, "scan stopped"

    invoke-static {v1, v3}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 567
    :catch_0
    :try_start_2
    sget-object v1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v3, "caught exception in stopScan"

    invoke-static {v1, v3}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :cond_0
    sget-object v1, Lcom/peripheral/ble/BluetoothCentralManager;->TAG:Ljava/lang/String;

    const-string v3, "no scan to stop because no scan is running"

    invoke-static {v1, v3}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/peripheral/ble/BluetoothCentralManager;->bluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 574
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothCentralManager;->scannedPeripherals:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 575
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
