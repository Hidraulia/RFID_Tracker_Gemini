.class public Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;
.super Lcom/android/usbserial/driver/CommonUsbSerialPort;
.source "CdcAcmSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/usbserial/driver/CdcAcmSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CdcAcmSerialPort"
.end annotation


# static fields
.field private static final GET_LINE_CODING:I = 0x21

.field private static final SEND_BREAK:I = 0x23

.field private static final SET_CONTROL_LINE_STATE:I = 0x22

.field private static final SET_LINE_CODING:I = 0x20

.field private static final USB_RECIP_INTERFACE:I = 0x1

.field private static final USB_RT_ACM:I = 0x21


# instance fields
.field private mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mControlIndex:I

.field private mControlInterface:Landroid/hardware/usb/UsbInterface;

.field private mDataInterface:Landroid/hardware/usb/UsbInterface;

.field private mDtr:Z

.field private mRts:Z

.field final synthetic this$0:Lcom/android/usbserial/driver/CdcAcmSerialDriver;


# direct methods
.method public constructor <init>(Lcom/android/usbserial/driver/CdcAcmSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/android/usbserial/driver/CdcAcmSerialDriver;

    .line 109
    invoke-direct {p0, p2, p3}, Lcom/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    .line 98
    iput-boolean p1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    return-void
.end method

.method private getInterfaceIdFromDescriptors()I
    .locals 10

    .line 231
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {v0}, Lcom/android/usbserial/util/UsbUtils;->getDescriptors(Landroid/hardware/usb/UsbDeviceConnection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v1}, Lcom/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USB descriptor:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 234
    iget-object v3, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v3}, Lcom/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/android/usbserial/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    .line 238
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    if-ne v3, v4, :cond_2

    .line 239
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v5, 0x4

    aget-byte v3, v3, v5

    const/16 v6, -0x11

    if-ne v3, v6, :cond_2

    .line 240
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v6, 0x5

    aget-byte v3, v3, v6

    const/4 v7, 0x2

    if-ne v3, v7, :cond_2

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v3, 0x6

    aget-byte v1, v1, v3

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 244
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 245
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    array-length v8, v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 246
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    aget-byte v8, v8, v4

    const/16 v9, 0xb

    if-ne v8, v9, :cond_1

    .line 247
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    aget-byte v8, v8, v5

    if-ne v8, v7, :cond_1

    .line 248
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    aget-byte v8, v8, v6

    if-ne v8, v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 250
    iget v8, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mPortNumber:I

    if-ne v3, v8, :cond_1

    .line 251
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    const/4 v9, 0x3

    aget-byte v8, v8, v9

    if-ne v8, v7, :cond_1

    .line 252
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    aget-byte v0, v0, v7

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method private openInterface()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 160
    iput-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 161
    invoke-direct {p0}, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->getInterfaceIdFromDescriptors()I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v1}, Lcom/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interface count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", IAD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ltz v0, :cond_3

    const/4 v4, 0x0

    .line 164
    :goto_0
    iget-object v5, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 165
    iget-object v5, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v5, v4}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    .line 166
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v6

    if-eq v6, v0, :cond_0

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v6

    add-int/lit8 v7, v0, 0x1

    if-ne v6, v7, :cond_2

    .line 167
    :cond_0
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 168
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 169
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v6

    iput v6, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlIndex:I

    .line 170
    iput-object v5, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 172
    :cond_1
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v6

    if-ne v6, v1, :cond_2

    .line 173
    iput-object v5, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    if-nez v0, :cond_9

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v0}, Lcom/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "no IAD fallback"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 182
    :goto_1
    iget-object v6, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v6

    if-ge v0, v6, :cond_9

    .line 183
    iget-object v6, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v6, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v6

    .line 184
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v7

    if-ne v7, v2, :cond_6

    .line 185
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v7

    if-ne v7, v2, :cond_6

    .line 186
    iget v7, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mPortNumber:I

    if-ne v4, v7, :cond_5

    .line 187
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v7

    iput v7, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlIndex:I

    .line 188
    iput-object v6, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 192
    :cond_6
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v7

    if-ne v7, v1, :cond_8

    .line 193
    iget v7, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mPortNumber:I

    if-ne v5, v7, :cond_7

    .line 194
    iput-object v6, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    :cond_7
    add-int/lit8 v5, v5, 0x1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_9
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v0, :cond_11

    .line 204
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v0}, Lcom/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Control interface id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 209
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 210
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_f

    .line 214
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v0, :cond_e

    .line 217
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v0}, Lcom/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data interface id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v5, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 221
    :goto_2
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    if-ge v3, v0, :cond_c

    .line 222
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    if-ne v4, v1, :cond_a

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    if-ne v4, v2, :cond_a

    .line 224
    iput-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 225
    :cond_a
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    if-ne v4, v2, :cond_b

    .line 226
    iput-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    return-void

    .line 219
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim data interface"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No data interface"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid control endpoint"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim control interface"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No control interface"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private openSingleInterface()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlIndex:I

    .line 136
    iget-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 137
    iget-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 138
    iget-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 143
    iget-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 145
    iput-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 147
    iput-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 149
    iput-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v0, :cond_4

    return-void

    .line 153
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No control endpoint"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim shared control/data interface"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private sendAcmControlMessage(II[B)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget v4, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlIndex:I

    if-eqz p3, :cond_0

    .line 262
    array-length v1, p3

    move v6, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x1388

    const/16 v1, 0x21

    move v2, p1

    move v3, p2

    move-object v5, p3

    .line 261
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ltz p1, :cond_1

    return p1

    .line 264
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "controlTransfer failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setDtrRts()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    iget-boolean v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    or-int/2addr v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x0

    .line 337
    invoke-direct {p0, v1, v0, v2}, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->sendAcmControlMessage(II[B)I

    return-void
.end method


# virtual methods
.method protected closeInt()V
    .locals 2

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 273
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getControlLines()Ljava/util/EnumSet;
    .locals 2
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

    .line 342
    const-class v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 343
    iget-boolean v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_0
    iget-boolean v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getDTR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-boolean v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    return v0
.end method

.method public getDriver()Lcom/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/android/usbserial/driver/CdcAcmSerialDriver;

    return-object v0
.end method

.method public getRTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    iget-boolean v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    return v0
.end method

.method public getSupportedControlLines()Ljava/util/EnumSet;
    .locals 2
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

    .line 350
    sget-object v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    sget-object v1, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method protected openInt()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v0}, Lcom/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "interfaces:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v1}, Lcom/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iget v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mPortNumber:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v0}, Lcom/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device might be castrated ACM device, trying single interface logic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->openSingleInterface()V

    goto :goto_1

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v0}, Lcom/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trying default interface logic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->openInterface()V

    :goto_1
    return-void
.end method

.method public setBreak(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const p1, 0xffff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    const/16 v1, 0x23

    .line 355
    invoke-direct {p0, v1, p1, v0}, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->sendAcmControlMessage(II[B)I

    return-void
.end method

.method public setDTR(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    iput-boolean p1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    .line 321
    invoke-direct {p0}, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->setDtrRts()V

    return-void
.end method

.method public setParameters(IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_9

    const/4 v0, 0x5

    if-lt p2, v0, :cond_8

    const/16 v1, 0x8

    if-gt p2, v1, :cond_8

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p3, v4, :cond_2

    if-eq p3, v3, :cond_1

    if-ne p3, v2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    .line 290
    :cond_0
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

    :cond_1
    const/4 p3, 0x2

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    const/4 v5, 0x4

    if-eqz p4, :cond_7

    if-eq p4, v4, :cond_6

    if-eq p4, v3, :cond_5

    if-eq p4, v2, :cond_4

    if-ne p4, v5, :cond_3

    const/4 p4, 0x4

    goto :goto_1

    .line 300
    :cond_3
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

    :cond_4
    const/4 p4, 0x3

    goto :goto_1

    :cond_5
    const/4 p4, 0x2

    goto :goto_1

    :cond_6
    const/4 p4, 0x1

    goto :goto_1

    :cond_7
    const/4 p4, 0x0

    :goto_1
    const/4 v6, 0x7

    new-array v6, v6, [B

    and-int/lit16 v7, p1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v6, v3

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v6, v2

    aput-byte p3, v6, v5

    aput-byte p4, v6, v0

    const/4 p1, 0x6

    int-to-byte p2, p2

    aput-byte p2, v6, p1

    const/16 p1, 0x20

    .line 310
    invoke-direct {p0, p1, v1, v6}, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->sendAcmControlMessage(II[B)I

    return-void

    .line 283
    :cond_8
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

    .line 280
    :cond_9
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iput-boolean p1, p0, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    .line 332
    invoke-direct {p0}, Lcom/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->setDtrRts()V

    return-void
.end method
