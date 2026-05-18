.class public Lcom/android/usbserial/util/UsbUtils;
.super Ljava/lang/Object;
.source "UsbUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescriptors(Landroid/hardware/usb/UsbDeviceConnection;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDeviceConnection;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 14
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 15
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int v4, v2, v3

    .line 18
    array-length v5, p0

    if-le v4, v5, :cond_1

    .line 19
    array-length v3, p0

    sub-int/2addr v3, v2

    .line 20
    :cond_1
    new-array v4, v3, [B

    .line 21
    invoke-static {p0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method
