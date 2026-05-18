.class public Lcom/peripheral/ble/BluetoothPeripheral;
.super Ljava/lang/Object;
.source "BluetoothPeripheral.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;
    }
.end annotation


# static fields
.field private static final AVG_REQUEST_CONNECTION_PRIORITY_DURATION:J = 0x1f4L

.field private static final CCC_DESCRIPTOR_UUID:Ljava/util/UUID;

.field private static final CONNECTION_TIMEOUT_IN_MS:I = 0x88b8

.field private static final DEFAULT_MTU:I = 0x17

.field private static final DELAY_AFTER_BOND_LOST:J = 0x3e8L

.field private static final DIRECT_CONNECTION_DELAY_IN_MS:I = 0x64

.field private static final IDLE:I = 0x0

.field public static final MAX_MTU:I = 0x205

.field private static final MAX_TRIES:I = 0x2

.field private static final NO_VALID_CHARACTERISTIC_PROVIDED:Ljava/lang/String; = "no valid characteristic provided"

.field private static final NO_VALID_CHARACTERISTIC_UUID_PROVIDED:Ljava/lang/String; = "no valid characteristic UUID provided"

.field private static final NO_VALID_DESCRIPTOR_PROVIDED:Ljava/lang/String; = "no valid descriptor provided"

.field private static final NO_VALID_DEVICE_PROVIDED:Ljava/lang/String; = "no valid device provided"

.field private static final NO_VALID_PERIPHERAL_CALLBACK_PROVIDED:Ljava/lang/String; = "no valid peripheral callback provided"

.field private static final NO_VALID_PRIORITY_PROVIDED:Ljava/lang/String; = "no valid priority provided"

.field private static final NO_VALID_SERVICE_UUID_PROVIDED:Ljava/lang/String; = "no valid service UUID provided"

.field private static final NO_VALID_VALUE_PROVIDED:Ljava/lang/String; = "no valid value provided"

.field private static final NO_VALID_WRITE_TYPE_PROVIDED:Ljava/lang/String; = "no valid writeType provided"

.field private static final PAIRING_VARIANT_CONSENT:I = 0x3

.field private static final PAIRING_VARIANT_DISPLAY_PASSKEY:I = 0x4

.field private static final PAIRING_VARIANT_DISPLAY_PIN:I = 0x5

.field private static final PAIRING_VARIANT_OOB_CONSENT:I = 0x6

.field private static final PAIRING_VARIANT_PASSKEY:I = 0x1

.field private static final PAIRING_VARIANT_PASSKEY_CONFIRMATION:I = 0x2

.field private static final PAIRING_VARIANT_PIN:I = 0x0

.field private static final PERIPHERAL_NOT_CONNECTED:Ljava/lang/String; = "peripheral not connected"

.field private static final REQUEST_MTU_COMMAND:I = 0x1

.field private static final SET_PHY_TYPE_COMMAND:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_THRESHOLD_DEFAULT:I = 0x61a8

.field private static final TIMEOUT_THRESHOLD_SAMSUNG:I = 0x1194

.field private static final VALUE_BYTE_ARRAY_IS_EMPTY:Ljava/lang/String; = "value byte array is empty"

.field private static final VALUE_BYTE_ARRAY_IS_TOO_LONG:Ljava/lang/String; = "value byte array is too long"


# instance fields
.field private volatile bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private bondLost:Z

.field private final bondStateReceiver:Landroid/content/BroadcastReceiver;

.field private cachedName:Ljava/lang/String;

.field private final callbackHandler:Landroid/os/Handler;

.field private final commandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile commandQueueBusy:Z

.field private connectTimestamp:J

.field private final context:Landroid/content/Context;

.field private currentCommand:I

.field private currentMtu:I

.field private currentWriteBytes:[B

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private discoverServicesRunnable:Ljava/lang/Runnable;

.field private discoveryStarted:Z

.field private isRetrying:Z

.field private final listener:Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

.field private final mainHandler:Landroid/os/Handler;

.field private manuallyBonding:Z

.field private final notifyingCharacteristics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private nrTries:I

.field private final pairingRequestBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

.field private volatile peripheralInitiatedBonding:Z

.field private final peripheralType:Lcom/peripheral/ble/PeripheralType;

.field private volatile state:I

.field private timeoutRunnable:Ljava/lang/Runnable;

.field private final transport:Lcom/peripheral/ble/Transport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lcom/peripheral/ble/BluetoothPeripheral;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 78
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->CCC_DESCRIPTOR_UUID:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;Lcom/peripheral/ble/BluetoothPeripheralCallback;Landroid/os/Handler;Lcom/peripheral/ble/Transport;)V
    .locals 3

    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueue:Ljava/util/Queue;

    const-string v0, ""

    .line 137
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->cachedName:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 138
    iput-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentWriteBytes:[B

    .line 139
    iput v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentCommand:I

    .line 140
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->notifyingCharacteristics:Ljava/util/Set;

    .line 141
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->mainHandler:Landroid/os/Handler;

    .line 145
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueueBusy:Z

    .line 147
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bondLost:Z

    .line 148
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->manuallyBonding:Z

    .line 149
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralInitiatedBonding:Z

    .line 150
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->discoveryStarted:Z

    .line 151
    iput v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->state:I

    const/16 v0, 0x17

    .line 154
    iput v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentMtu:I

    .line 160
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$1;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothPeripheral$1;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 575
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$4;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothPeripheral$4;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bondStateReceiver:Landroid/content/BroadcastReceiver;

    .line 702
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$11;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothPeripheral$11;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->pairingRequestBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "no valid context provided"

    .line 734
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->context:Landroid/content/Context;

    const-string p1, "no valid device provided"

    .line 735
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->device:Landroid/bluetooth/BluetoothDevice;

    .line 736
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result p1

    invoke-static {p1}, Lcom/peripheral/ble/PeripheralType;->fromValue(I)Lcom/peripheral/ble/PeripheralType;

    move-result-object p1

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralType:Lcom/peripheral/ble/PeripheralType;

    const-string p1, "no valid listener provided"

    .line 737
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->listener:Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

    const-string p1, "no valid peripheral callback provided"

    .line 738
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/peripheral/ble/BluetoothPeripheralCallback;

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

    const-string p1, "no valid callback handler provided"

    .line 739
    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->callbackHandler:Landroid/os/Handler;

    const-string p1, "no valid transport provided"

    .line 740
    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/peripheral/ble/Transport;

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->transport:Lcom/peripheral/ble/Transport;

    return-void
.end method

.method static synthetic access$000(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->cancelConnectionTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/peripheral/ble/BluetoothPeripheral;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->state:I

    return p0
.end method

.method static synthetic access$1000()Ljava/util/UUID;
    .locals 1

    .line 75
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->CCC_DESCRIPTOR_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$102(Lcom/peripheral/ble/BluetoothPeripheral;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->state:I

    return p1
.end method

.method static synthetic access$1100(Lcom/peripheral/ble/BluetoothPeripheral;)Ljava/util/Set;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->notifyingCharacteristics:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->completedCommand()V

    return-void
.end method

.method static synthetic access$1302(Lcom/peripheral/ble/BluetoothPeripheral;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentMtu:I

    return p1
.end method

.method static synthetic access$1400(Lcom/peripheral/ble/BluetoothPeripheral;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentCommand:I

    return p0
.end method

.method static synthetic access$1402(Lcom/peripheral/ble/BluetoothPeripheral;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentCommand:I

    return p1
.end method

.method static synthetic access$1500(Lcom/peripheral/ble/BluetoothPeripheral;)Ljava/util/Queue;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/peripheral/ble/BluetoothPeripheral;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueueBusy:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/peripheral/ble/BluetoothPeripheral;J)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->delayedDiscoverServices(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/peripheral/ble/BluetoothPeripheral;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->discoveryStarted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->successfullyConnected()V

    return-void
.end method

.method static synthetic access$2002(Lcom/peripheral/ble/BluetoothPeripheral;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->discoverServicesRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/peripheral/ble/BluetoothPeripheral;ZLcom/peripheral/ble/HciStatus;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->completeDisconnect(ZLcom/peripheral/ble/HciStatus;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/peripheral/ble/BluetoothPeripheral;II)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->handleBondStateChange(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->retryCommand()V

    return-void
.end method

.method static synthetic access$2400(Lcom/peripheral/ble/BluetoothPeripheral;I)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral;->pairingVariantToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2502(Lcom/peripheral/ble/BluetoothPeripheral;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->manuallyBonding:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->device:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$2708(Lcom/peripheral/ble/BluetoothPeripheral;)I
    .locals 2

    .line 75
    iget v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->nrTries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->nrTries:I

    return v0
.end method

.method static synthetic access$2800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/bluetooth/BluetoothGattCallback;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/peripheral/ble/BluetoothPeripheral;[BLcom/peripheral/ble/WriteType;)Z
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->willCauseLongWrite([BLcom/peripheral/ble/WriteType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/peripheral/ble/BluetoothPeripheral;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral;->successfullyDisconnected(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/peripheral/ble/BluetoothPeripheral;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/peripheral/ble/WriteType;)Z
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/peripheral/ble/BluetoothPeripheral;->internalWriteCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/peripheral/ble/WriteType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/peripheral/ble/BluetoothPeripheral;Landroid/bluetooth/BluetoothGattDescriptor;[B)Z
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->internalWriteDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/os/Handler;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/peripheral/ble/BluetoothPeripheral;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->timeoutRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/peripheral/ble/BluetoothPeripheral;)Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->listener:Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;II)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/peripheral/ble/BluetoothPeripheral;->connectionStateChangeUnsuccessful(Lcom/peripheral/ble/HciStatus;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->disconnect()V

    return-void
.end method

.method static synthetic access$800(Lcom/peripheral/ble/BluetoothPeripheral;)Landroid/os/Handler;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->callbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/peripheral/ble/BluetoothPeripheral;)[B
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentWriteBytes:[B

    return-object p0
.end method

.method static synthetic access$902(Lcom/peripheral/ble/BluetoothPeripheral;[B)[B
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentWriteBytes:[B

    return-object p1
.end method

.method private adjustWriteTypeIfNeeded(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 1444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    .line 1447
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    :cond_0
    return-void
.end method

.method private cancelConnectionTimer()V
    .locals 2

    .line 1944
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1945
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1946
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->timeoutRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private cancelPendingServiceDiscovery()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->discoverServicesRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 570
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->discoverServicesRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private completeDisconnect(ZLcom/peripheral/ble/HciStatus;)V
    .locals 3

    .line 919
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v0, 0x0

    .line 921
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    .line 924
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueueBusy:Z

    .line 925
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->notifyingCharacteristics:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/16 v1, 0x17

    .line 926
    iput v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentMtu:I

    .line 927
    iput v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentCommand:I

    .line 928
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->manuallyBonding:Z

    .line 929
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralInitiatedBonding:Z

    .line 930
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->discoveryStarted:Z

    .line 932
    :try_start_0
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bondStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 933
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->pairingRequestBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 937
    :goto_0
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bondLost:Z

    if-eqz p1, :cond_1

    .line 939
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->listener:Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

    invoke-interface {p1, p0, p2}, Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;->disconnected(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V

    :cond_1
    return-void
.end method

.method private completedCommand()V
    .locals 2

    const/4 v0, 0x0

    .line 1644
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->isRetrying:Z

    .line 1645
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 1646
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueueBusy:Z

    .line 1647
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->nextCommand()V

    return-void
.end method

.method private connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;
    .locals 9

    .line 1845
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->transport:Lcom/peripheral/ble/Transport;

    iget v1, v1, Lcom/peripheral/ble/Transport;->value:I

    invoke-virtual {p2, v0, p3, p1, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    .line 1850
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "connectGatt"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/bluetooth/BluetoothGattCallback;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-array v1, v2, [Ljava/lang/Object;

    .line 1852
    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->context:Landroid/content/Context;

    aput-object v2, v1, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p1, v1, v7

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->transport:Lcom/peripheral/ble/Transport;

    iget v2, v2, Lcom/peripheral/ble/Transport;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1854
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 1857
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 1861
    :goto_1
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->context:Landroid/content/Context;

    invoke-virtual {p2, v0, p3, p1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method

.method private connectGattHelper(Landroid/bluetooth/BluetoothDevice;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1806
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_5

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 1811
    :try_start_0
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getIBluetoothManager()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->getIBluetoothGatt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1814
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "could not get iBluetoothGatt object"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    invoke-direct {p0, p3, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    .line 1818
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/peripheral/ble/BluetoothPeripheral;->createBluetoothGatt(Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1821
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "could not create BluetoothGatt object"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    invoke-direct {p0, p3, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    .line 1825
    :cond_3
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->connectUsingReflection(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCallback;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1828
    sget-object v1, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "connection using reflection failed, closing gatt"

    invoke-static {v1, v2}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    .line 1839
    :catch_0
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "error during reflection"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    invoke-direct {p0, p3, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    .line 1807
    :cond_5
    :goto_0
    invoke-direct {p0, p3, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method

.method private connectUsingReflection(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCallback;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1867
    invoke-direct {p0, p2, p4}, Lcom/peripheral/ble/BluetoothPeripheral;->setAutoConnectValue(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 1868
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 p4, 0x2

    new-array v0, p4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/bluetooth/BluetoothGattCallback;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "connect"

    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1869
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p4, p4, [Ljava/lang/Object;

    .line 1870
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p4, v2

    aput-object p3, p4, v3

    invoke-virtual {p1, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private connectionStateChangeUnsuccessful(Lcom/peripheral/ble/HciStatus;II)V
    .locals 5

    .line 541
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->cancelPendingServiceDiscovery()V

    .line 542
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_2

    .line 546
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iget-wide v3, p0, Lcom/peripheral/ble/BluetoothPeripheral;->connectTimestamp:J

    sub-long/2addr p2, v3

    .line 547
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getTimoutThreshold()I

    move-result v0

    int-to-long v3, v0

    cmp-long v0, p2, v3

    if-lez v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 548
    :goto_0
    sget-object p3, Lcom/peripheral/ble/HciStatus;->ERROR:Lcom/peripheral/ble/HciStatus;

    if-ne p1, p3, :cond_1

    if-eqz p2, :cond_1

    sget-object p1, Lcom/peripheral/ble/HciStatus;->CONNECTION_FAILED_ESTABLISHMENT:Lcom/peripheral/ble/HciStatus;

    .line 549
    :cond_1
    sget-object p2, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v2

    const-string v0, "connection failed with status \'%s\'"

    invoke-static {p2, v0, p3}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    invoke-direct {p0, v2, p1}, Lcom/peripheral/ble/BluetoothPeripheral;->completeDisconnect(ZLcom/peripheral/ble/HciStatus;)V

    .line 551
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->listener:Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

    invoke-interface {p2, p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;->connectFailed(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne p2, v4, :cond_3

    if-nez p3, :cond_3

    if-nez v0, :cond_3

    .line 554
    sget-object p2, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    aput-object p1, p3, v1

    iget v0, p1, Lcom/peripheral/ble/HciStatus;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v4

    const-string v0, "peripheral \'%s\' disconnected with status \'%s\' (%d) before completing service discovery"

    invoke-static {p2, v0, p3}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    invoke-direct {p0, v2, p1}, Lcom/peripheral/ble/BluetoothPeripheral;->completeDisconnect(ZLcom/peripheral/ble/HciStatus;)V

    .line 556
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->listener:Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

    invoke-interface {p2, p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;->connectFailed(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V

    goto :goto_2

    :cond_3
    if-nez p3, :cond_4

    .line 560
    sget-object p2, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    aput-object p1, p3, v1

    iget v0, p1, Lcom/peripheral/ble/HciStatus;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v4

    const-string v0, "peripheral \'%s\' disconnected with status \'%s\' (%d)"

    invoke-static {p2, v0, p3}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 562
    :cond_4
    sget-object p2, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    aput-object p1, p3, v1

    iget v0, p1, Lcom/peripheral/ble/HciStatus;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v4

    const-string v0, "unexpected connection state change for \'%s\' status \'%s\' (%d)"

    invoke-static {p2, v0, p3}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/peripheral/ble/BluetoothPeripheral;->completeDisconnect(ZLcom/peripheral/ble/HciStatus;)V

    :goto_2
    return-void
.end method

.method private createBluetoothGatt(Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothGatt;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1875
    const-class v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    .line 1876
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1877
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    new-array v3, v6, [Ljava/lang/Object;

    .line 1878
    iget-object v6, p0, Lcom/peripheral/ble/BluetoothPeripheral;->context:Landroid/content/Context;

    aput-object v6, v3, v1

    aput-object p1, v3, v2

    aput-object p2, v3, v4

    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->transport:Lcom/peripheral/ble/Transport;

    iget p1, p1, Lcom/peripheral/ble/Transport;->value:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    return-object p1

    :cond_0
    new-array v3, v5, [Ljava/lang/Object;

    .line 1880
    iget-object v5, p0, Lcom/peripheral/ble/BluetoothPeripheral;->context:Landroid/content/Context;

    aput-object v5, v3, v1

    aput-object p1, v3, v2

    aput-object p2, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method private delayedDiscoverServices(J)V
    .locals 2

    .line 484
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral$2;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;J)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->discoverServicesRunnable:Ljava/lang/Runnable;

    .line 496
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private disconnect()V
    .locals 4

    .line 893
    iget v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->listener:Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;

    sget-object v1, Lcom/peripheral/ble/HciStatus;->SUCCESS:Lcom/peripheral/ble/HciStatus;

    invoke-interface {v0, p0, v1}, Lcom/peripheral/ble/BluetoothPeripheral$InternalCallback;->disconnected(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/HciStatus;)V

    goto :goto_1

    .line 894
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    .line 895
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v2, Lcom/peripheral/ble/HciStatus;->SUCCESS:Lcom/peripheral/ble/HciStatus;

    iget v2, v2, Lcom/peripheral/ble/HciStatus;->value:I

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 897
    :cond_2
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/peripheral/ble/BluetoothPeripheral$14;

    invoke-direct {v1, p0}, Lcom/peripheral/ble/BluetoothPeripheral$14;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method private doesNotSupportReading(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    .line 1178
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private doesNotSupportWriteType(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/WriteType;)Z
    .locals 0

    .line 1271
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    iget p2, p2, Lcom/peripheral/ble/WriteType;->property:I

    and-int/2addr p1, p2

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

    .line 1626
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->notConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1627
    sget-object p1, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v0, "peripheral not connected"

    invoke-static {p1, v0}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 1631
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1633
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->nextCommand()V

    goto :goto_0

    .line 1635
    :cond_1
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "could not enqueue command"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p1
.end method

.method private getIBluetoothGatt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1891
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBluetoothGatt"

    invoke-direct {p0, v0, v1}, Lcom/peripheral/ble/BluetoothPeripheral;->getMethodFromClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1892
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getIBluetoothManager()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1897
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1903
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBluetoothManager"

    invoke-direct {p0, v1, v2}, Lcom/peripheral/ble/BluetoothPeripheral;->getMethodFromClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1904
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getMethodFromClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 1908
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 1909
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p1
.end method

.method private getServiceDiscoveryDelay(Lcom/peripheral/ble/BondState;)J
    .locals 5

    .line 501
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x0

    const/16 v3, 0x18

    if-gt v0, v3, :cond_0

    const-wide/16 v3, 0x3e8

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 508
    :goto_0
    sget-object v0, Lcom/peripheral/ble/BondState;->BONDED:Lcom/peripheral/ble/BondState;

    if-ne p1, v0, :cond_1

    move-wide v1, v3

    :cond_1
    return-wide v1
.end method

.method private getTimoutThreshold()I
    .locals 2

    .line 1951
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    .line 1952
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1194

    return v0

    :cond_0
    const/16 v0, 0x61a8

    return v0
.end method

.method private handleBondStateChange(II)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 606
    :pswitch_0
    sget-object p1, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "bonded with \'%s\' (%s)"

    invoke-static {p1, v0, p2}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->callbackHandler:Landroid/os/Handler;

    new-instance p2, Lcom/peripheral/ble/BluetoothPeripheral$6;

    invoke-direct {p2, p0}, Lcom/peripheral/ble/BluetoothPeripheral$6;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 615
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p1, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->connect()V

    return-void

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->discoveryStarted:Z

    if-nez p1, :cond_1

    const-wide/16 p1, 0x0

    .line 624
    invoke-direct {p0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->delayedDiscoverServices(J)V

    .line 628
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-ge p1, p2, :cond_2

    .line 629
    iget-boolean p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueueBusy:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->manuallyBonding:Z

    if-nez p1, :cond_2

    .line 630
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/peripheral/ble/BluetoothPeripheral$7;

    invoke-direct {p2, p0}, Lcom/peripheral/ble/BluetoothPeripheral$7;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 641
    :cond_2
    iget-boolean p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->manuallyBonding:Z

    if-eqz p1, :cond_3

    .line 642
    iput-boolean v2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->manuallyBonding:Z

    .line 643
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->completedCommand()V

    .line 647
    :cond_3
    iget-boolean p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralInitiatedBonding:Z

    if-eqz p1, :cond_5

    .line 648
    iput-boolean v2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralInitiatedBonding:Z

    .line 649
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->nextCommand()V

    goto :goto_1

    .line 597
    :pswitch_1
    sget-object p1, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "starting bonding with \'%s\' (%s)"

    invoke-static {p1, v0, p2}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->callbackHandler:Landroid/os/Handler;

    new-instance p2, Lcom/peripheral/ble/BluetoothPeripheral$5;

    invoke-direct {p2, p0}, Lcom/peripheral/ble/BluetoothPeripheral$5;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_2
    const/16 p1, 0xb

    if-ne p2, p1, :cond_4

    .line 655
    sget-object p1, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "bonding failed for \'%s\', disconnecting device"

    invoke-static {p1, v0, p2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->callbackHandler:Landroid/os/Handler;

    new-instance p2, Lcom/peripheral/ble/BluetoothPeripheral$8;

    invoke-direct {p2, p0}, Lcom/peripheral/ble/BluetoothPeripheral$8;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 663
    :cond_4
    sget-object p1, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "bond lost for \'%s\'"

    invoke-static {p1, v0, p2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    iput-boolean v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bondLost:Z

    .line 667
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->cancelPendingServiceDiscovery()V

    .line 669
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->callbackHandler:Landroid/os/Handler;

    new-instance p2, Lcom/peripheral/ble/BluetoothPeripheral$9;

    invoke-direct {p2, p0}, Lcom/peripheral/ble/BluetoothPeripheral$9;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 687
    :goto_0
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/peripheral/ble/BluetoothPeripheral$10;

    invoke-direct {p2, p0}, Lcom/peripheral/ble/BluetoothPeripheral$10;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private internalWriteCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/peripheral/ble/WriteType;)Z
    .locals 3

    .line 1278
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1280
    :cond_0
    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentWriteBytes:[B

    .line 1282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_2

    .line 1283
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentWriteBytes:[B

    iget p3, p3, Lcom/peripheral/ble/WriteType;->writeType:I

    invoke-virtual {p2, p1, v0, p3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BI)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1286
    :cond_2
    iget p3, p3, Lcom/peripheral/ble/WriteType;->writeType:I

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 1287
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 1288
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1
.end method

.method private internalWriteDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Z
    .locals 3

    .line 1354
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1356
    :cond_0
    iput-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentWriteBytes:[B

    .line 1358
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_2

    .line 1359
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1362
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->adjustWriteTypeIfNeeded(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 1363
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 1364
    iget-object p2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1
.end method

.method private isConnected()Z
    .locals 2

    .line 1109
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextCommand()V
    .locals 6

    .line 1675
    monitor-enter p0

    .line 1677
    :try_start_0
    iget-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueueBusy:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 1680
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 1681
    monitor-exit p0

    return-void

    .line 1684
    :cond_1
    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 1685
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "gatt is \'null\' for peripheral \'%s\', clearing command queue"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1686
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1687
    iput-boolean v2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueueBusy:Z

    .line 1688
    monitor-exit p0

    return-void

    .line 1692
    :cond_2
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getBondState()Lcom/peripheral/ble/BondState;

    move-result-object v1

    sget-object v4, Lcom/peripheral/ble/BondState;->BONDING:Lcom/peripheral/ble/BondState;

    if-ne v1, v4, :cond_3

    .line 1693
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "bonding is in progress, waiting for bonding to complete"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    iput-boolean v3, p0, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralInitiatedBonding:Z

    .line 1695
    monitor-exit p0

    return-void

    .line 1699
    :cond_3
    iput-boolean v3, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueueBusy:Z

    .line 1700
    iget-boolean v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->isRetrying:Z

    if-nez v1, :cond_4

    .line 1701
    iput v2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->nrTries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1707
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1708
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1711
    :try_start_2
    sget-object v1, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v4, "command exception for device \'%s\'"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v4, v3}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1712
    sget-object v1, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->completedCommand()V

    .line 1717
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private notConnected()Z
    .locals 1

    .line 1113
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->isConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private pairingVariantToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "UNKNOWN"

    return-object p1

    :pswitch_0
    const-string p1, "PAIRING_VARIANT_OOB_CONSENT"

    return-object p1

    :pswitch_1
    const-string p1, "PAIRING_VARIANT_DISPLAY_PIN"

    return-object p1

    :pswitch_2
    const-string p1, "PAIRING_VARIANT_DISPLAY_PASSKEY"

    return-object p1

    :pswitch_3
    const-string p1, "PAIRING_VARIANT_CONSENT"

    return-object p1

    :pswitch_4
    const-string p1, "PAIRING_VARIANT_PASSKEY_CONFIRMATION"

    return-object p1

    :pswitch_5
    const-string p1, "PAIRING_VARIANT_PASSKEY"

    return-object p1

    :pswitch_6
    const-string p1, "PAIRING_VARIANT_PIN"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerBondingBroadcastReceivers()V
    .locals 4

    .line 809
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bondStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 810
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->pairingRequestBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private retryCommand()V
    .locals 2

    const/4 v0, 0x0

    .line 1654
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueueBusy:Z

    .line 1655
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1657
    iget v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->nrTries:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1659
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "max number of tries reached, not retrying operation anymore"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->commandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1662
    iput-boolean v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->isRetrying:Z

    .line 1665
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->nextCommand()V

    return-void
.end method

.method private setAutoConnectValue(Landroid/bluetooth/BluetoothGatt;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1914
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mAutoConnect"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 1915
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1916
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    return-void
.end method

.method private startConnectionTimer(Lcom/peripheral/ble/BluetoothPeripheral;)V
    .locals 3

    .line 1920
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->cancelConnectionTimer()V

    .line 1921
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$25;

    invoke-direct {v0, p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral$25;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/BluetoothPeripheral;)V

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->timeoutRunnable:Ljava/lang/Runnable;

    .line 1940
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->mainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x88b8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private successfullyConnected()V
    .locals 7

    .line 471
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getBondState()Lcom/peripheral/ble/BondState;

    move-result-object v0

    .line 472
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/peripheral/ble/BluetoothPeripheral;->connectTimestamp:J

    sub-long/2addr v1, v3

    .line 473
    sget-object v3, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v1, "connected to \'%s\' (%s) in %.1fs"

    invoke-static {v3, v1, v4}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    sget-object v1, Lcom/peripheral/ble/BondState;->NONE:Lcom/peripheral/ble/BondState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/peripheral/ble/BondState;->BONDED:Lcom/peripheral/ble/BondState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    sget-object v1, Lcom/peripheral/ble/BondState;->BONDING:Lcom/peripheral/ble/BondState;

    if-ne v0, v1, :cond_2

    .line 479
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "waiting for bonding to complete"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 476
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->getServiceDiscoveryDelay(Lcom/peripheral/ble/BondState;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/peripheral/ble/BluetoothPeripheral;->delayedDiscoverServices(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method private successfullyDisconnected(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    .line 515
    sget-object p1, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "cancelling connect attempt"

    invoke-static {p1, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 513
    :cond_1
    :goto_0
    sget-object p1, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "disconnected \'%s\' on request"

    invoke-static {p1, v2, v1}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bondLost:Z

    if-eqz p1, :cond_3

    .line 519
    sget-object p1, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v0, "disconnected because of bond lost"

    invoke-static {p1, v0}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->callbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$3;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothPeripheral$3;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 536
    :cond_3
    sget-object p1, Lcom/peripheral/ble/HciStatus;->SUCCESS:Lcom/peripheral/ble/HciStatus;

    invoke-direct {p0, v0, p1}, Lcom/peripheral/ble/BluetoothPeripheral;->completeDisconnect(ZLcom/peripheral/ble/HciStatus;)V

    :goto_2
    return-void
.end method

.method private willCauseLongWrite([BLcom/peripheral/ble/WriteType;)Z
    .locals 1

    .line 1267
    array-length p1, p1

    iget v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentMtu:I

    add-int/lit8 v0, v0, -0x3

    if-le p1, v0, :cond_0

    sget-object p1, Lcom/peripheral/ble/WriteType;->WITH_RESPONSE:Lcom/peripheral/ble/WriteType;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method autoConnect()V
    .locals 6

    .line 786
    iget v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 791
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/peripheral/ble/BluetoothPeripheral;->transport:Lcom/peripheral/ble/Transport;

    invoke-virtual {v5}, Lcom/peripheral/ble/Transport;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "autoConnect to \'%s\' (%s) using transport %s"

    invoke-static {v0, v4, v3}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->registerBondingBroadcastReceivers()V

    .line 793
    iput-boolean v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->discoveryStarted:Z

    .line 794
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/peripheral/ble/BluetoothPeripheral;->connectTimestamp:J

    .line 795
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-direct {p0, v0, v2, v3}, Lcom/peripheral/ble/BluetoothPeripheral;->connectGattHelper(Landroid/bluetooth/BluetoothDevice;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 796
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    iget-object v1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v3, Lcom/peripheral/ble/HciStatus;->SUCCESS:Lcom/peripheral/ble/HciStatus;

    iget v3, v3, Lcom/peripheral/ble/HciStatus;->value:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    goto :goto_0

    .line 799
    :cond_0
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "failed to autoconnect to peripheral \'%s\'"

    invoke-static {v0, v1, v2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 804
    :cond_1
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "peripheral \'%s\' not yet disconnected, will not connect"

    invoke-static {v0, v1, v2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public cancelConnection()V
    .locals 4

    .line 854
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 855
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "cannot cancel connection because no connection attempt is made yet"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 860
    :cond_0
    iget v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->state:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 865
    :cond_1
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->cancelConnectionTimer()V

    .line 868
    iget v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 870
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->disconnect()V

    .line 873
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/peripheral/ble/BluetoothPeripheral$13;

    invoke-direct {v1, p0}, Lcom/peripheral/ble/BluetoothPeripheral$13;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 883
    :cond_2
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->disconnect()V

    :cond_3
    :goto_0
    return-void
.end method

.method public clearServicesCache()Z
    .locals 4

    .line 1605
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1609
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "refresh"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1611
    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    .line 1614
    :catch_0
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "could not invoke refresh method"

    invoke-static {v0, v2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method connect()V
    .locals 6

    .line 756
    iget v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 761
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/peripheral/ble/BluetoothPeripheral;->transport:Lcom/peripheral/ble/Transport;

    invoke-virtual {v5}, Lcom/peripheral/ble/Transport;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "connect to \'%s\' (%s) using transport %s"

    invoke-static {v0, v4, v3}, Lcom/peripheral/ble/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->registerBondingBroadcastReceivers()V

    .line 763
    iput-boolean v2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->discoveryStarted:Z

    .line 764
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/peripheral/ble/BluetoothPeripheral;->connectTimestamp:J

    .line 765
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-direct {p0, v0, v2, v3}, Lcom/peripheral/ble/BluetoothPeripheral;->connectGattHelper(Landroid/bluetooth/BluetoothDevice;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 766
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    iget-object v2, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v3, Lcom/peripheral/ble/HciStatus;->SUCCESS:Lcom/peripheral/ble/HciStatus;

    iget v3, v3, Lcom/peripheral/ble/HciStatus;->value:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 768
    invoke-direct {p0, p0}, Lcom/peripheral/ble/BluetoothPeripheral;->startConnectionTimer(Lcom/peripheral/ble/BluetoothPeripheral;)V

    goto :goto_0

    .line 770
    :cond_0
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "failed to connect to peripheral \'%s\'"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 775
    :cond_1
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "peripheral \'%s\' not yet disconnected, will not connect"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method copyOf([B)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    goto :goto_0

    .line 1967
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public createBond()Z
    .locals 4

    .line 824
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 826
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "connecting and creating bond with \'%s\'"

    invoke-static {v0, v2, v1}, Lcom/peripheral/ble/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    invoke-direct {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->registerBondingBroadcastReceivers()V

    .line 828
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    return v0

    .line 832
    :cond_0
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$12;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothPeripheral$12;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->enqueue(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method disconnectWhenBluetoothOff()V
    .locals 2

    .line 912
    sget-object v0, Lcom/peripheral/ble/HciStatus;->SUCCESS:Lcom/peripheral/ble/HciStatus;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->completeDisconnect(ZLcom/peripheral/ble/HciStatus;)V

    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBondState()Lcom/peripheral/ble/BondState;
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    invoke-static {v0}, Lcom/peripheral/ble/BondState;->fromValue(I)Lcom/peripheral/ble/BondState;

    move-result-object v0

    return-object v0
.end method

.method public getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    const-string v0, "no valid service UUID provided"

    .line 1030
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "no valid characteristic UUID provided"

    .line 1031
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1033
    invoke-virtual {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1035
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentMtu()I
    .locals 1

    .line 1057
    iget v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentMtu:I

    return v0
.end method

.method public getMaximumWriteValueLength(Lcom/peripheral/ble/WriteType;)I
    .locals 1

    const-string v0, "writetype is null"

    .line 1067
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1069
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral$26;->$SwitchMap$com$peripheral$ble$WriteType:[I

    invoke-virtual {p1}, Lcom/peripheral/ble/WriteType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1075
    iget p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentMtu:I

    add-int/lit8 p1, p1, -0x3

    return p1

    .line 1073
    :cond_0
    iget p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->currentMtu:I

    add-int/lit8 p1, p1, -0xf

    return p1

    :cond_1
    const/16 p1, 0x200

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 973
    iput-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->cachedName:Ljava/lang/String;

    return-object v0

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->cachedName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyingCharacteristics()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->notifyingCharacteristics:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 1

    const-string v0, "no valid service UUID provided"

    .line 1012
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1014
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
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

    .line 998
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1001
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/peripheral/ble/ConnectionState;
    .locals 1

    .line 1048
    iget v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->state:I

    invoke-static {v0}, Lcom/peripheral/ble/ConnectionState;->fromValue(I)Lcom/peripheral/ble/ConnectionState;

    move-result-object v0

    return-object v0
.end method

.method public getTransport()Lcom/peripheral/ble/Transport;
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->transport:Lcom/peripheral/ble/Transport;

    return-object v0
.end method

.method public getType()Lcom/peripheral/ble/PeripheralType;
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralType:Lcom/peripheral/ble/PeripheralType;

    return-object v0
.end method

.method public isNotifying(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1

    const-string v0, "no valid characteristic provided"

    .line 1095
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1096
    iget-object v0, p0, Lcom/peripheral/ble/BluetoothPeripheral;->notifyingCharacteristics:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isUncached()Z
    .locals 2

    .line 1122
    invoke-virtual {p0}, Lcom/peripheral/ble/BluetoothPeripheral;->getType()Lcom/peripheral/ble/PeripheralType;

    move-result-object v0

    sget-object v1, Lcom/peripheral/ble/PeripheralType;->UNKNOWN:Lcom/peripheral/ble/PeripheralType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method nonnullOf([B)[B
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    :cond_0
    return-object p1
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 2

    const-string v0, "no valid characteristic provided"

    .line 1156
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1158
    invoke-direct {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral;->doesNotSupportReading(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1163
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$15;

    invoke-direct {v0, p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral$15;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->enqueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1159
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "characteristic <%s> does not have read property"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 1

    const-string v0, "no valid service UUID provided"

    .line 1136
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "no valid characteristic UUID provided"

    .line 1137
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1139
    invoke-virtual {p0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1141
    invoke-virtual {p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 1

    const-string v0, "no valid descriptor provided"

    .line 1299
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1301
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$17;

    invoke-direct {v0, p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral$17;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;Landroid/bluetooth/BluetoothGattDescriptor;)V

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->enqueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public readPhy()Z
    .locals 2

    .line 1583
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 1584
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "setPreferredPhy requires Android 8.0 or newer"

    invoke-static {v0, v1}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 1588
    :cond_0
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$24;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothPeripheral$24;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->enqueue(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public readRemoteRssi()Z
    .locals 1

    .line 1459
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$20;

    invoke-direct {v0, p0}, Lcom/peripheral/ble/BluetoothPeripheral$20;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;)V

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->enqueue(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public requestConnectionPriority(Lcom/peripheral/ble/ConnectionPriority;)Z
    .locals 1

    const-string v0, "no valid priority provided"

    .line 1509
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1511
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$22;

    invoke-direct {v0, p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral$22;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/ConnectionPriority;)V

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->enqueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public requestMtu(I)Z
    .locals 1

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const/16 v0, 0x205

    if-gt p1, v0, :cond_0

    .line 1488
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$21;

    invoke-direct {v0, p0, p1}, Lcom/peripheral/ble/BluetoothPeripheral$21;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;I)V

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->enqueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    .line 1485
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mtu must be between 23 and 517"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const-string v0, "no valid device provided"

    .line 748
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setNotify(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 7

    const-string v0, "no valid characteristic provided"

    .line 1399
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1402
    sget-object v0, Lcom/peripheral/ble/BluetoothPeripheral;->CCC_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v6, :cond_3

    .line 1410
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v3, v2, 0x10

    if-lez v3, :cond_0

    .line 1412
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_2

    .line 1414
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    .line 1419
    :cond_1
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    :goto_1
    move-object v5, v0

    .line 1421
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$19;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/peripheral/ble/BluetoothPeripheral$19;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;Landroid/bluetooth/BluetoothGattCharacteristic;Z[BLandroid/bluetooth/BluetoothGattDescriptor;)V

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->enqueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_2
    new-array p2, v1, [Ljava/lang/Object;

    .line 1416
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "characteristic %s does not have notify or indicate property"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1417
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-array p2, v1, [Ljava/lang/Object;

    .line 1404
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "could not get CCC descriptor for characteristic %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1405
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setNotify(Ljava/util/UUID;Ljava/util/UUID;Z)Z
    .locals 1

    const-string v0, "no valid service UUID provided"

    .line 1378
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "no valid characteristic UUID provided"

    .line 1379
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1381
    invoke-virtual {p0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1383
    invoke-virtual {p0, p1, p3}, Lcom/peripheral/ble/BluetoothPeripheral;->setNotify(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setPeripheralCallback(Lcom/peripheral/ble/BluetoothPeripheralCallback;)V
    .locals 1

    const-string v0, "no valid peripheral callback provided"

    .line 744
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/peripheral/ble/BluetoothPeripheralCallback;

    iput-object p1, p0, Lcom/peripheral/ble/BluetoothPeripheral;->peripheralCallback:Lcom/peripheral/ble/BluetoothPeripheralCallback;

    return-void
.end method

.method public setPreferredPhy(Lcom/peripheral/ble/PhyType;Lcom/peripheral/ble/PhyType;Lcom/peripheral/ble/PhyOptions;)Z
    .locals 2

    .line 1545
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 1550
    sget-object p1, Lcom/peripheral/ble/BluetoothPeripheral;->TAG:Ljava/lang/String;

    const-string p2, "setPreferredPhy requires Android 8.0 or newer"

    invoke-static {p1, p2}, Lcom/peripheral/ble/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 1554
    :cond_0
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$23;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/peripheral/ble/BluetoothPeripheral$23;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;Lcom/peripheral/ble/PhyType;Lcom/peripheral/ble/PhyType;Lcom/peripheral/ble/PhyOptions;)V

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->enqueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/peripheral/ble/WriteType;)Z
    .locals 2

    const-string v0, "no valid characteristic provided"

    .line 1222
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "no valid value provided"

    .line 1223
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "no valid writeType provided"

    .line 1224
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1226
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 1230
    array-length v0, p2

    invoke-virtual {p0, p3}, Lcom/peripheral/ble/BluetoothPeripheral;->getMaximumWriteValueLength(Lcom/peripheral/ble/WriteType;)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1234
    invoke-direct {p0, p1, p3}, Lcom/peripheral/ble/BluetoothPeripheral;->doesNotSupportWriteType(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/peripheral/ble/WriteType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1240
    invoke-virtual {p0, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->copyOf([B)[B

    move-result-object p2

    .line 1242
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$16;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/peripheral/ble/BluetoothPeripheral$16;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;[BLcom/peripheral/ble/WriteType;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->enqueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1235
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object p3, p2, p1

    const-string p1, "characteristic <%s> does not support writeType \'%s\'"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1236
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1231
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value byte array is too long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1227
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value byte array is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeCharacteristic(Ljava/util/UUID;Ljava/util/UUID;[BLcom/peripheral/ble/WriteType;)Z
    .locals 1

    const-string v0, "no valid service UUID provided"

    .line 1195
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "no valid characteristic UUID provided"

    .line 1196
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "no valid value provided"

    .line 1197
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "no valid writeType provided"

    .line 1198
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1200
    invoke-virtual {p0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1202
    invoke-virtual {p0, p1, p3, p4}, Lcom/peripheral/ble/BluetoothPeripheral;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/peripheral/ble/WriteType;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Z
    .locals 2

    const-string v0, "no valid descriptor provided"

    .line 1325
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "no valid value provided"

    .line 1326
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1328
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 1332
    array-length v0, p2

    sget-object v1, Lcom/peripheral/ble/WriteType;->WITH_RESPONSE:Lcom/peripheral/ble/WriteType;

    invoke-virtual {p0, v1}, Lcom/peripheral/ble/BluetoothPeripheral;->getMaximumWriteValueLength(Lcom/peripheral/ble/WriteType;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1337
    invoke-virtual {p0, p2}, Lcom/peripheral/ble/BluetoothPeripheral;->copyOf([B)[B

    move-result-object p2

    .line 1339
    new-instance v0, Lcom/peripheral/ble/BluetoothPeripheral$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/peripheral/ble/BluetoothPeripheral$18;-><init>(Lcom/peripheral/ble/BluetoothPeripheral;Landroid/bluetooth/BluetoothGattDescriptor;[B)V

    invoke-direct {p0, v0}, Lcom/peripheral/ble/BluetoothPeripheral;->enqueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    .line 1333
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value byte array is too long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1329
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value byte array is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
