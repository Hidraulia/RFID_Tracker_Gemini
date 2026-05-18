.class public Lcom/peripheral/ble/BluetoothPeripheralManager;
.super Ljava/lang/Object;
.source "BluetoothPeripheralManager.java"


# static fields
.field private static final ADDRESS_IS_NULL:Ljava/lang/String; = "address is null"

.field private static final BLUETOOTH_MANAGER_IS_NULL:Ljava/lang/String; = "BluetoothManager is null"

.field protected static final CCC_DESCRIPTOR_UUID:Ljava/util/UUID;

.field private static final CENTRAL_IS_NULL:Ljava/lang/String; = "central is null"

.field private static final CHARACTERISTIC_IS_NULL:Ljava/lang/String; = "characteristic is null"

.field private static final CHARACTERISTIC_VALUE_IS_NULL:Ljava/lang/String; = "characteristic value is null"

.field private static final CONTEXT_IS_NULL:Ljava/lang/String; = "context is null"

.field private static final DEVICE_IS_NULL:Ljava/lang/String; = "device is null"

.field private static final SERVICE_IS_NULL:Ljava/lang/String; = "service is null"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final adapterStateReceiver:Landroid/content/BroadcastReceiver;

.field protected final advertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final bluetoothGattServer:Landroid/bluetooth/BluetoothGattServer;

.field protected final bluetoothGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

.field private final bluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private final bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private final callback:Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

.field private centralManager:Lcom/peripheral/ble/BluetoothCentralManager;

.field private final centralsWantingIndications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final centralsWantingNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final commandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile commandQueueBusy:Z

.field private final connectedCentralsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/peripheral/ble/BluetoothCentral;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private currentNotifyValue:[B

.field private currentReadValue:[B

.field private final mainHandler:Landroid/os/Handler;

.field private final writeLongCharacteristicTemporaryBytes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "[B>;"
        }
    .end annotation
.end field

.field private final writeLongDescriptorTemporaryBytes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/peripheral/ble/BluetoothPeripheralManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/peripheral/ble/BluetoothPeripheralManager;->TAG:Ljava/lang/String;

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 73
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/peripheral/ble/BluetoothPeripheralManager;->CCC_DESCRIPTOR_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothManager;Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;)V
    .locals 2

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralManager:Lcom/peripheral/ble/BluetoothCentralManager;

    .line 92
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->commandQueue:Ljava/util/Queue;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->writeLongCharacteristicTemporaryBytes:Ljava/util/HashMap;

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->writeLongDescriptorTemporaryBytes:Ljava/util/HashMap;

    .line 95
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->connectedCentralsMap:Ljava/util/Map;

    .line 96
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->currentNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralsWantingNotifications:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralsWantingIndications:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 99
    iput-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->currentNotifyValue:[B

    new-array v1, v0, [B

    .line 100
    iput-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->currentReadValue:[B

    .line 101
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->commandQueueBusy:Z

    .line 103
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheralManager$1;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothPeripheralManager$1;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 442
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheralManager$2;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothPeripheralManager$2;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->advertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 789
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheralManager$7;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothPeripheralManager$7;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->adapterStateReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "context is null"

    .line 485
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->context:Landroid/content/Context;

    const-string v0, "Callback is null"

    .line 486
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->callback:Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    const-string p3, "BluetoothManager is null"

    .line 487
    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/bluetooth/BluetoothManager;

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 488
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p3

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 489
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object p3

    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 490
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    invoke-virtual {p2, p1, p3}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object p2

    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothGattServer:Landroid/bluetooth/BluetoothGattServer;

    .line 493
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 494
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->adapterStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothCentralManager;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralManager:Lcom/peripheral/ble/BluetoothCentralManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/Map;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->connectedCentralsMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/peripheral/ble/BluetoothPeripheralManager;[BI)[B
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->chopValue([BI)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/peripheral/ble/BluetoothPeripheralManager;[B)[B
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->nonnullOf([B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->writeLongCharacteristicTemporaryBytes:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Ljava/util/HashMap;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->writeLongDescriptorTemporaryBytes:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->supportsIndicate(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->supportsNotify(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->currentNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/peripheral/ble/BluetoothPeripheralManager;)[B
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->currentNotifyValue:[B

    return-object p0
.end method

.method static synthetic access$1802(Lcom/peripheral/ble/BluetoothPeripheralManager;[B)[B
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->currentNotifyValue:[B

    return-object p1
.end method

.method static synthetic access$1900(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)Z
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/peripheral/ble/BluetoothPeripheralManager;->internalNotifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/bluetooth/BluetoothGattServer;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothGattServer:Landroid/bluetooth/BluetoothGattServer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/peripheral/ble/BluetoothPeripheralManager;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->handleAdapterState(I)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheralManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/peripheral/ble/BluetoothPeripheralManager;)Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->callback:Lcom/peripheral/ble/BluetoothPeripheralManagerCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/peripheral/ble/BluetoothPeripheralManager;)Landroid/os/Handler;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;)Lcom/peripheral/ble/BluetoothCentral;
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->getCentral(Landroid/bluetooth/BluetoothDevice;)Lcom/peripheral/ble/BluetoothCentral;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->removeCentral(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$800(Lcom/peripheral/ble/BluetoothPeripheralManager;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->completedCommand()V

    return-void
.end method

.method static synthetic access$900(Lcom/peripheral/ble/BluetoothPeripheralManager;)[B
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->currentReadValue:[B

    return-object p0
.end method

.method static synthetic access$902(Lcom/peripheral/ble/BluetoothPeripheralManager;[B)[B
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->currentReadValue:[B

    return-object p1
.end method

.method private cancelAllConnectionsWhenBluetoothOff()V
    .locals 4

    .line 822
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->getConnectedCentrals()Ljava/util/Set;

    move-result-object v0

    .line 823
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/peripheral/ble/BluetoothCentral;

    .line 824
    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Lcom/peripheral/ble/BluetoothCentral;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Landroid/bluetooth/BluetoothGattServerCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 826
    :cond_0
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->onAdvertisingStopped()V

    return-void
.end method

.method private cancelConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    const-string v0, "device is null"

    .line 691
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 693
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheralManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->notNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "cancelConnection with \'%s\' (%s)"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattServer;->cancelConnection(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private chopValue([BI)[B
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    if-nez p1, :cond_0

    return-object v0

    .line 841
    :cond_0
    array-length v1, p1

    if-gt p2, v1, :cond_1

    .line 842
    array-length v0, p1

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private completedCommand()V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->commandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    const/4 v0, 0x0

    .line 732
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->commandQueueBusy:Z

    .line 733
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->nextCommand()V

    return-void
.end method

.method private doesNotSupportNotifying(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1

    .line 881
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->supportsIndicate(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->supportsNotify(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private enqueue(Ljava/lang/Runnable;)Z
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->commandQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 720
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->nextCommand()V

    goto :goto_0

    .line 722
    :cond_0
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "could not enqueue command"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p1
.end method

.method private getCentral(Landroid/bluetooth/BluetoothDevice;)Lcom/peripheral/ble/BluetoothCentral;
    .locals 2

    const-string v0, "device is null"

    .line 774
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 776
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->connectedCentralsMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/peripheral/ble/BluetoothCentral;

    if-nez v0, :cond_0

    .line 778
    new-instance v0, Lcom/peripheral/ble/BluetoothCentral;

    invoke-direct {v0, p1}, Lcom/peripheral/ble/BluetoothCentral;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-object v0
.end method

.method private getCentralsByAddress(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/peripheral/ble/BluetoothCentral;",
            ">;"
        }
    .end annotation

    .line 939
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 940
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 941
    invoke-virtual {p0, v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->getCentral(Ljava/lang/String;)Lcom/peripheral/ble/BluetoothCentral;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private handleAdapterState(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 810
    :pswitch_0
    sget-object p1, Lcom/peripheral/ble/BluetoothPeripheralManager;->TAG:Ljava/lang/String;

    const-string v0, "bluetooth turning off"

    invoke-static {p1, v0}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 813
    :pswitch_1
    sget-object p1, Lcom/peripheral/ble/BluetoothPeripheralManager;->TAG:Ljava/lang/String;

    const-string v0, "bluetooth turned on"

    invoke-static {p1, v0}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 816
    :pswitch_2
    sget-object p1, Lcom/peripheral/ble/BluetoothPeripheralManager;->TAG:Ljava/lang/String;

    const-string v0, "bluetooth turning on"

    invoke-static {p1, v0}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :pswitch_3
    sget-object p1, Lcom/peripheral/ble/BluetoothPeripheralManager;->TAG:Ljava/lang/String;

    const-string v0, "bluetooth turned off"

    invoke-static {p1, v0}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->cancelAllConnectionsWhenBluetoothOff()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private internalNotifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)Z
    .locals 2

    .line 668
    iput-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->currentNotifyValue:[B

    .line 669
    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->currentNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 671
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 672
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, p1, p2, p4, p3}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z[B)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 675
    :cond_1
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 676
    iget-object p3, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {p3, p1, p2, p4}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p1

    return p1
.end method

.method private nextCommand()V
    .locals 3

    .line 741
    monitor-enter p0

    .line 743
    :try_start_0
    iget-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->commandQueueBusy:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->commandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 747
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 750
    iput-boolean v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->commandQueueBusy:Z

    .line 751
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/peripheral/ble/BluetoothPeripheralManager$6;

    invoke-direct {v2, p0, v0}, Lcom/peripheral/ble/BluetoothPeripheralManager$6;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 763
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private nonnullOf([B)[B
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    :cond_0
    return-object p1
.end method

.method private notifyCharacteristicChanged([BLandroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 7

    const-string v0, "characteristic value is null"

    .line 647
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "device is null"

    .line 648
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "characteristic is null"

    .line 649
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 651
    invoke-direct {p0, p3}, Lcom/peripheral/ble/BluetoothPeripheralManager;->doesNotSupportNotifying(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 653
    :cond_0
    new-instance v6, Lcom/peripheral/ble/BluetoothPeripheralManager$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/peripheral/ble/BluetoothPeripheralManager$5;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V

    invoke-direct {p0, v6}, Lcom/peripheral/ble/BluetoothPeripheralManager;->enqueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method private removeCentral(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const-string v0, "device is null"

    .line 784
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->connectedCentralsMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private supportsIndicate(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    .line 877
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private supportsNotify(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    .line 873
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public add(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 1

    const-string v0, "service is null"

    .line 555
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 557
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheralManager$4;

    invoke-direct {v0, p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager$4;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager;Landroid/bluetooth/BluetoothGattService;)V

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->enqueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method protected addCentralWantingIndications(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/BluetoothCentral;)V
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralsWantingIndications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 887
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 888
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralsWantingIndications:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :cond_0
    invoke-virtual {p2}, Lcom/peripheral/ble/BluetoothCentral;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addCentralWantingNotifications(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/BluetoothCentral;)V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralsWantingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 896
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 897
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralsWantingNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    :cond_0
    invoke-virtual {p2}, Lcom/peripheral/ble/BluetoothCentral;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelConnection(Lcom/peripheral/ble/BluetoothCentral;)V
    .locals 1

    const-string v0, "central is null"

    .line 686
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 687
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothCentral;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->cancelConnection(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 509
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->stopAdvertising()V

    .line 510
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->adapterStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 511
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->close()V

    return-void
.end method

.method copyOf([B)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    goto :goto_0

    .line 855
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCentral(Ljava/lang/String;)Lcom/peripheral/ble/BluetoothCentral;
    .locals 1

    const-string v0, "address is null"

    .line 768
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 769
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->connectedCentralsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/peripheral/ble/BluetoothCentral;

    return-object p1
.end method

.method public getCentralsWantingIndications(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Ljava/util/Set<",
            "Lcom/peripheral/ble/BluetoothCentral;",
            ">;"
        }
    .end annotation

    .line 929
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralsWantingIndications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_0

    .line 930
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->getCentralsByAddress(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCentralsWantingNotifications(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Ljava/util/Set<",
            "Lcom/peripheral/ble/BluetoothCentral;",
            ">;"
        }
    .end annotation

    .line 934
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralsWantingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_0

    .line 935
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->getCentralsByAddress(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getConnectedCentrals()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/peripheral/ble/BluetoothCentral;",
            ">;"
        }
    .end annotation

    .line 707
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->connectedCentralsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 708
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->getServices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method notNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public notifyCharacteristicChanged([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 4

    const-string v0, "characteristic value is null"

    .line 608
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "characteristic is null"

    .line 609
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 611
    invoke-direct {p0, p2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->doesNotSupportNotifying(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 614
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->getConnectedCentrals()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/peripheral/ble/BluetoothCentral;

    .line 615
    invoke-virtual {p0, p1, v3, p2}, Lcom/peripheral/ble/BluetoothPeripheralManager;->notifyCharacteristicChanged([BLcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return v0
.end method

.method public notifyCharacteristicChanged([BLcom/peripheral/ble/BluetoothCentral;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 4

    const-string v0, "central is null"

    .line 634
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "characteristic value is null"

    .line 635
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "characteristic is null"

    .line 636
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 638
    iget-object v0, p2, Lcom/peripheral/ble/BluetoothCentral;->device:Landroid/bluetooth/BluetoothDevice;

    .line 639
    invoke-direct {p0, p3}, Lcom/peripheral/ble/BluetoothPeripheralManager;->supportsIndicate(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p3}, Lcom/peripheral/ble/BluetoothPeripheralManager;->getCentralsWantingIndications(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 640
    invoke-virtual {p0, p3}, Lcom/peripheral/ble/BluetoothPeripheralManager;->getCentralsWantingNotifications(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return v2

    .line 643
    :cond_1
    invoke-virtual {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->copyOf([B)[B

    move-result-object p1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/peripheral/ble/BluetoothPeripheralManager;->notifyCharacteristicChanged([BLandroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p1

    return p1
.end method

.method protected onAdvertisingStopped()V
    .locals 2

    .line 468
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "advertising stopped"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/peripheral/ble/BluetoothPeripheralManager$3;

    invoke-direct {v1, p0}, Lcom/peripheral/ble/BluetoothPeripheralManager$3;-><init>(Lcom/peripheral/ble/BluetoothPeripheralManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public remove(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 1

    const-string v0, "service is null"

    .line 575
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 577
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattServer;->removeService(Landroid/bluetooth/BluetoothGattService;)Z

    move-result p1

    return p1
.end method

.method public removeAllServices()V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->clearServices()V

    return-void
.end method

.method protected removeCentralFromWantingAnything(Lcom/peripheral/ble/BluetoothCentral;)V
    .locals 2

    .line 917
    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothCentral;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 919
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralsWantingIndications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 920
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralsWantingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 924
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected removeCentralWantingIndications(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/BluetoothCentral;)V
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralsWantingIndications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 905
    invoke-virtual {p2}, Lcom/peripheral/ble/BluetoothCentral;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected removeCentralWantingNotifications(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/BluetoothCentral;)V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralsWantingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 912
    invoke-virtual {p2}, Lcom/peripheral/ble/BluetoothCentral;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setCentralManager(Lcom/peripheral/ble/BluetoothCentralManager;)V
    .locals 0

    .line 498
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/peripheral/ble/BluetoothCentralManager;

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->centralManager:Lcom/peripheral/ble/BluetoothCentralManager;

    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;)V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isMultipleAdvertisementSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    sget-object p1, Lcom/peripheral/ble/BluetoothPeripheralManager;->TAG:Ljava/lang/String;

    const-string p2, "device does not support advertising"

    invoke-static {p1, p2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->advertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    :goto_0
    return-void
.end method

.method public stopAdvertising()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->bluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheralManager;->advertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 537
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheralManager;->onAdvertisingStopped()V

    return-void
.end method
