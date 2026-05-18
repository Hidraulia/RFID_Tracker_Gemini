.class Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;
.super Lcom/android/usbserial/driver/CommonUsbSerialPort;
.source "ProlificSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/usbserial/driver/ProlificSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProlificSerialPort"
.end annotation


# static fields
.field private static final CONTROL_DTR:I = 0x1

.field private static final CONTROL_RTS:I = 0x2

.field private static final CTRL_OUT_REQTYPE:I = 0x21

.field private static final FLUSH_RX_REQUEST:I = 0x8

.field private static final FLUSH_TX_REQUEST:I = 0x9

.field private static final GET_CONTROL_FLAG_CD:I = 0x2

.field private static final GET_CONTROL_FLAG_CTS:I = 0x8

.field private static final GET_CONTROL_FLAG_DSR:I = 0x4

.field private static final GET_CONTROL_FLAG_RI:I = 0x1

.field private static final GET_CONTROL_HXN_FLAG_CD:I = 0x40

.field private static final GET_CONTROL_HXN_FLAG_CTS:I = 0x8

.field private static final GET_CONTROL_HXN_FLAG_DSR:I = 0x20

.field private static final GET_CONTROL_HXN_FLAG_RI:I = 0x80

.field private static final GET_CONTROL_HXN_REQUEST:I = 0x80

.field private static final GET_CONTROL_REQUEST:I = 0x87

.field private static final INTERRUPT_ENDPOINT:I = 0x81

.field private static final READ_ENDPOINT:I = 0x83

.field private static final RESET_HXN_REQUEST:I = 0x7

.field private static final RESET_HXN_RX_PIPE:I = 0x1

.field private static final RESET_HXN_TX_PIPE:I = 0x2

.field private static final SEND_BREAK_REQUEST:I = 0x23

.field private static final SET_CONTROL_REQUEST:I = 0x22

.field private static final SET_LINE_REQUEST:I = 0x20

.field private static final STATUS_BUFFER_SIZE:I = 0xa

.field private static final STATUS_BYTE_IDX:I = 0x8

.field private static final STATUS_FLAG_CD:I = 0x1

.field private static final STATUS_FLAG_CTS:I = 0x80

.field private static final STATUS_FLAG_DSR:I = 0x2

.field private static final STATUS_FLAG_RI:I = 0x8

.field private static final STATUS_NOTIFICATION:I = 0xa1

.field private static final USB_READ_TIMEOUT_MILLIS:I = 0x3e8

.field private static final USB_RECIP_INTERFACE:I = 0x1

.field private static final USB_WRITE_TIMEOUT_MILLIS:I = 0x1388

.field private static final VENDOR_IN_REQTYPE:I = 0xc0

.field private static final VENDOR_OUT_REQTYPE:I = 0x40

.field private static final VENDOR_READ_HXN_REQUEST:I = 0x81

.field private static final VENDOR_READ_REQUEST:I = 0x1

.field private static final VENDOR_WRITE_HXN_REQUEST:I = 0x80

.field private static final VENDOR_WRITE_REQUEST:I = 0x1

.field private static final WRITE_ENDPOINT:I = 0x2


# instance fields
.field private mBaudRate:I

.field private mControlLinesValue:I

.field private mDataBits:I

.field protected mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

.field private mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mParity:I

.field private mReadStatusException:Ljava/io/IOException;

.field private volatile mReadStatusThread:Ljava/lang/Thread;

.field private final mReadStatusThreadLock:Ljava/lang/Object;

.field private mStatus:I

.field private mStopBits:I

.field private mStopReadStatusThread:Z

.field final synthetic this$0:Lcom/android/usbserial/driver/ProlificSerialDriver;


# direct methods
.method public constructor <init>(Lcom/android/usbserial/driver/ProlificSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/android/usbserial/driver/ProlificSerialDriver;

    .line 134
    invoke-direct {p0, p2, p3}, Lcom/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 121
    sget-object p1, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HX:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    iput-object p1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const/4 p1, 0x0

    .line 123
    iput p1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    const/4 p2, -0x1

    .line 124
    iput p2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    iput p2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    iput p2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    iput p2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    .line 126
    iput p1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    const/4 p2, 0x0

    .line 127
    iput-object p2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    .line 128
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    .line 129
    iput-boolean p1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    .line 130
    iput-object p2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    return-void
.end method

.method private ctrlOut(III[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x21

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 174
    invoke-direct/range {v0 .. v5}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->outControlTransfer(IIII[B)V

    return-void
.end method

.method private doBlackMagic()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v1, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const v0, 0x8484

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    invoke-direct {p0, v0, v2, v1}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    const/16 v3, 0x404

    const/4 v4, 0x0

    .line 190
    invoke-direct {p0, v3, v2, v4}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 191
    invoke-direct {p0, v0, v2, v1}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    const v5, 0x8383

    .line 192
    invoke-direct {p0, v5, v2, v1}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 193
    invoke-direct {p0, v0, v2, v1}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 194
    invoke-direct {p0, v3, v1, v4}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 195
    invoke-direct {p0, v0, v2, v1}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 196
    invoke-direct {p0, v5, v2, v1}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 197
    invoke-direct {p0, v2, v1, v4}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 198
    invoke-direct {p0, v1, v2, v4}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    const/4 v0, 0x2

    .line 199
    iget-object v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v2, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_01:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    if-ne v1, v2, :cond_1

    const/16 v1, 0x24

    goto :goto_0

    :cond_1
    const/16 v1, 0x44

    :goto_0
    invoke-direct {p0, v0, v1, v4}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    return-void
.end method

.method private filterBaudRate(I)I
    .locals 13

    .line 348
    sget-boolean v0, Lcom/android/usbserial/driver/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x60000000

    and-int/2addr v0, p1

    const/high16 v1, 0x20000000

    if-ne v0, v1, :cond_0

    const v0, -0x20000001

    and-int/2addr p1, v0

    return p1

    :cond_0
    if-lez p1, :cond_b

    .line 354
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v1, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    if-ne v0, v1, :cond_1

    return p1

    .line 357
    :cond_1
    invoke-static {}, Lcom/android/usbserial/driver/ProlificSerialDriver;->access$100()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget v4, v0, v3

    if-ne v4, p1, :cond_2

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const v0, 0x16e36000

    .line 380
    div-int v1, v0, p1

    if-eqz v1, :cond_a

    .line 385
    iget-object v3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v4, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_T:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const-string v5, "Baud rate to low"

    const/high16 v6, -0x80000000

    if-ne v3, v4, :cond_6

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x800

    if-lt v1, v4, :cond_5

    const/16 v4, 0xf

    if-ge v3, v4, :cond_4

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 391
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    and-int/lit8 v4, v3, -0x2

    shl-int/lit8 v4, v4, 0xc

    add-int/2addr v4, v1

    and-int/lit8 v5, v3, 0x1

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    .line 395
    div-int/2addr v0, v1

    shr-int/2addr v0, v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_2
    const/16 v4, 0x200

    if-lt v1, v4, :cond_8

    const/4 v4, 0x7

    if-ge v3, v4, :cond_7

    shr-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 402
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    shl-int/lit8 v4, v3, 0x9

    add-int/2addr v4, v1

    add-int/2addr v4, v6

    .line 406
    div-int/2addr v0, v1

    shl-int/lit8 v5, v3, 0x1

    shr-int/2addr v0, v5

    :goto_3
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    int-to-double v7, v0

    int-to-double v9, p1

    .line 408
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3f9fbe76c8b43958L    # 0.031

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const/4 v11, 0x1

    cmpl-double v12, v5, v7

    if-gez v12, :cond_9

    .line 412
    iget-object v7, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {v7}, Lcom/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    .line 413
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v11

    mul-double v5, v5, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v8, v0

    const/4 p1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, p1

    const/4 p1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, p1

    const/4 p1, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, p1

    const-string p1, "baud rate=%d, effective=%d, error=%.1f%%, value=0x%08x, mantissa=%d, exponent=%d"

    .line 412
    invoke-static {p1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 410
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-array v0, v11, [Ljava/lang/Object;

    mul-double v5, v5, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Baud rate deviation %.1f%% is higher than allowed 3%%"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 382
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Baud rate to high"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid baud rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private getStatus()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    if-nez v0, :cond_9

    .line 233
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    .line 235
    iput v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 236
    iget-object v2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v3, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const/16 v4, 0x80

    const/4 v5, 0x1

    if-ne v2, v3, :cond_3

    .line 237
    invoke-direct {p0, v4, v1, v5}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    move-result-object v2

    .line 238
    aget-byte v3, v2, v1

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 239
    :cond_0
    aget-byte v3, v2, v1

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 240
    :cond_1
    aget-byte v3, v2, v1

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 241
    :cond_2
    aget-byte v1, v2, v1

    and-int/2addr v1, v4

    if-nez v1, :cond_7

    iget v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    goto :goto_0

    :cond_3
    const/16 v2, 0x87

    .line 243
    invoke-direct {p0, v2, v1, v5}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    move-result-object v2

    .line 244
    aget-byte v3, v2, v1

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 245
    :cond_4
    aget-byte v3, v2, v1

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_5

    iget v3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 246
    :cond_5
    aget-byte v3, v2, v1

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 247
    :cond_6
    aget-byte v1, v2, v1

    and-int/2addr v1, v5

    if-nez v1, :cond_7

    iget v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 250
    :cond_7
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/usbserial/driver/-$$Lambda$ProlificSerialDriver$ProlificSerialPort$l49Pew4oq7uQ00rXIosOGLlUX5U;

    invoke-direct {v2, p0}, Lcom/android/usbserial/driver/-$$Lambda$ProlificSerialDriver$ProlificSerialPort$l49Pew4oq7uQ00rXIosOGLlUX5U;-><init>(Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    .line 251
    iget-object v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    invoke-virtual {v1, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 252
    iget-object v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 254
    :cond_8
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 258
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    if-nez v0, :cond_a

    .line 264
    iget v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    return v0

    :cond_a
    const/4 v1, 0x0

    .line 260
    iput-object v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    .line 261
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private inControlTransfer(IIIII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    new-array v8, p5, [B

    .line 144
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v7, 0x3e8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v8

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ne p1, p5, :cond_0

    return-object v8

    .line 146
    :cond_0
    new-instance p2, Ljava/io/IOException;

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    invoke-virtual {v0}, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, p5

    const/4 p5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, p5

    const/4 p3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, p3

    const-string p1, "ControlTransfer %s 0x%x failed: %d"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic lambda$l49Pew4oq7uQ00rXIosOGLlUX5U(Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->readStatusThreadFunction()V

    return-void
.end method

.method private outControlTransfer(IIII[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :cond_0
    array-length v1, p5

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v9, 0x1388

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    .line 155
    :cond_1
    new-instance p2, Ljava/io/IOException;

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    iget-object p5, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    invoke-virtual {p5}, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->name()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v0

    const/4 p5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, p5

    const/4 p3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, p3

    const-string p1, "ControlTransfer %s 0x%x failed: %d"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private readStatusThreadFunction()V
    .locals 8

    .line 209
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    if-nez v0, :cond_4

    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 211
    invoke-static {}, Lcom/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    .line 212
    iget-object v4, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/16 v6, 0x1f4

    invoke-virtual {v4, v5, v1, v0, v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 213
    invoke-static {}, Lcom/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testConnection()V

    :cond_1
    if-lez v4, :cond_0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x0

    .line 218
    aget-byte v2, v1, v0

    const/16 v3, -0x5f

    if-ne v2, v3, :cond_2

    const/16 v0, 0x8

    .line 221
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    goto :goto_0

    .line 219
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid status notification, expected 161 request, got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status notification, expected 10 bytes, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 226
    iput-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    :cond_4
    return-void
.end method

.method private resetDevice()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0, v0, v0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->purgeHwBuffers(ZZ)V

    return-void
.end method

.method private setControlLines(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 203
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->ctrlOut(III[B)V

    .line 204
    iput p1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    return-void
.end method

.method private testHxStatus()Z
    .locals 6

    const/16 v1, 0xc0

    const/4 v2, 0x1

    const v3, 0x8080

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 179
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->inControlTransfer(IIIII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private testStatusFlag(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->getStatus()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private vendorIn(III)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v1, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x81

    const/16 v3, 0x81

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_0
    const/16 v2, 0xc0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    .line 161
    invoke-direct/range {v1 .. v6}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->inControlTransfer(IIIII)[B

    move-result-object p1

    return-object p1
.end method

.method private vendorOut(II[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v1, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x80

    const/16 v3, 0x80

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_0
    const/16 v2, 0x40

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    .line 166
    invoke-direct/range {v1 .. v6}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->outControlTransfer(IIII[B)V

    return-void
.end method


# virtual methods
.method public closeInt()V
    .locals 5

    const/4 v0, 0x0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    :try_start_1
    iget-object v2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 330
    :try_start_2
    iput-boolean v2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    .line 331
    iget-object v2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 333
    :try_start_3
    iget-object v3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {v3}, Lcom/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "An error occured while waiting for status read thread"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    :goto_0
    iput-boolean v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    const/4 v2, 0x0

    .line 336
    iput-object v2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    .line 337
    iput-object v2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    .line 339
    :cond_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 340
    :try_start_4
    invoke-direct {p0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 339
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 343
    :catch_1
    :goto_1
    :try_start_7
    iget-object v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    return-void
.end method

.method public getCD()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 483
    invoke-direct {p0, v0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getCTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    .line 488
    invoke-direct {p0, v0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

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

    .line 536
    invoke-direct {p0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->getStatus()I

    move-result v0

    .line 537
    const-class v1, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 538
    iget v2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    .line 539
    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_1
    iget v2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    .line 541
    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_4

    .line 542
    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 543
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

    const/4 v0, 0x2

    .line 493
    invoke-direct {p0, v0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getDTR()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    iget v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDriver()Lcom/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/android/usbserial/driver/ProlificSerialDriver;

    return-object v0
.end method

.method public getRI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 514
    invoke-direct {p0, v0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getRTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    iget v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 549
    const-class v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public openInt()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    .line 275
    iget-object v2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    .line 279
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v4

    const/4 v5, 0x2

    if-ge v2, v4, :cond_3

    .line 280
    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    .line 282
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v6

    if-eq v6, v5, :cond_2

    const/16 v5, 0x81

    if-eq v6, v5, :cond_1

    const/16 v5, 0x83

    if-eq v6, v5, :cond_0

    goto :goto_1

    .line 284
    :cond_0
    iput-object v4, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 292
    :cond_1
    iput-object v4, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 288
    :cond_2
    iput-object v4, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    move-result-object v0

    if-eqz v0, :cond_9

    .line 298
    array-length v2, v0

    const/16 v4, 0xe

    if-lt v2, v4, :cond_9

    const/4 v2, 0x3

    .line 301
    aget-byte v4, v0, v2

    shl-int/lit8 v4, v4, 0x8

    aget-byte v6, v0, v5

    add-int/2addr v4, v6

    const/16 v6, 0xd

    .line 302
    aget-byte v6, v0, v6

    shl-int/lit8 v6, v6, 0x8

    const/16 v7, 0xc

    aget-byte v7, v0, v7

    add-int/2addr v6, v7

    const/4 v7, 0x7

    .line 303
    aget-byte v0, v0, v7

    .line 304
    iget-object v7, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v7

    if-eq v7, v5, :cond_8

    const/16 v7, 0x40

    if-eq v0, v7, :cond_4

    goto :goto_2

    :cond_4
    const/16 v7, 0x200

    if-ne v4, v7, :cond_7

    const/16 v7, 0x300

    if-ne v6, v7, :cond_5

    .line 307
    invoke-direct {p0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testHxStatus()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 308
    sget-object v7, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_T:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    iput-object v7, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    goto :goto_3

    :cond_5
    const/16 v7, 0x500

    if-ne v6, v7, :cond_6

    .line 309
    invoke-direct {p0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testHxStatus()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 310
    sget-object v7, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_T:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    iput-object v7, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    goto :goto_3

    .line 312
    :cond_6
    sget-object v7, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    iput-object v7, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    goto :goto_3

    .line 315
    :cond_7
    sget-object v7, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HX:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    iput-object v7, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    goto :goto_3

    .line 305
    :cond_8
    :goto_2
    sget-object v7, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_01:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    iput-object v7, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 317
    :goto_3
    iget-object v7, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {v7}, Lcom/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    .line 318
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v3

    iget-object v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v5

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v8, v2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    invoke-virtual {v1}, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const-string v0, "usbVersion=%x, deviceVersion=%x, deviceClass=%d, packetSize=%d => deviceType=%s"

    .line 317
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V

    .line 320
    invoke-direct {p0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->doBlackMagic()V

    .line 321
    iget v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    invoke-direct {p0, v0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    return-void

    .line 299
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not get device descriptors"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error claiming Prolific interface 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public purgeHwBuffers(ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v1, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    if-eqz v3, :cond_4

    const/4 p1, 0x7

    .line 559
    invoke-direct {p0, p1, v3, v2}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/16 p1, 0x8

    .line 562
    invoke-direct {p0, p1, v3, v2}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    :cond_3
    if-eqz p2, :cond_4

    const/16 p1, 0x9

    .line 564
    invoke-direct {p0, p1, v3, v2}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setBreak(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const p1, 0xffff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x23

    .line 570
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->ctrlOut(III[B)V

    return-void
.end method

.method public setDTR(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 505
    iget p1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 507
    :cond_0
    iget p1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 p1, p1, -0x2

    .line 509
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    return-void
.end method

.method public setParameters(IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-direct {p0, p1}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->filterBaudRate(I)I

    move-result p1

    .line 420
    iget v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    if-ne v0, p4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    const/4 v1, 0x4

    if-eq p3, v3, :cond_3

    if-eq p3, v4, :cond_2

    if-ne p3, v5, :cond_1

    aput-byte v3, v0, v1

    goto :goto_0

    .line 443
    :cond_1
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

    :cond_2
    aput-byte v4, v0, v1

    goto :goto_0

    :cond_3
    aput-byte v2, v0, v1

    :goto_0
    const/4 v6, 0x5

    if-eqz p4, :cond_8

    if-eq p4, v3, :cond_7

    if-eq p4, v4, :cond_6

    if-eq p4, v5, :cond_5

    if-ne p4, v1, :cond_4

    aput-byte v1, v0, v6

    goto :goto_1

    .line 463
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
    aput-byte v5, v0, v6

    goto :goto_1

    :cond_6
    aput-byte v4, v0, v6

    goto :goto_1

    :cond_7
    aput-byte v3, v0, v6

    goto :goto_1

    :cond_8
    aput-byte v2, v0, v6

    :goto_1
    if-lt p2, v6, :cond_9

    const/16 v1, 0x8

    if-gt p2, v1, :cond_9

    const/4 v1, 0x6

    int-to-byte v3, p2

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 471
    invoke-direct {p0, v1, v2, v2, v0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->ctrlOut(III[B)V

    .line 473
    invoke-direct {p0}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V

    .line 475
    iput p1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    .line 476
    iput p2, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    .line 477
    iput p3, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    .line 478
    iput p4, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    return-void

    .line 467
    :cond_9
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
.end method

.method public setRTS(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 526
    iget p1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 528
    :cond_0
    iget p1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 p1, p1, -0x3

    .line 530
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    return-void
.end method
