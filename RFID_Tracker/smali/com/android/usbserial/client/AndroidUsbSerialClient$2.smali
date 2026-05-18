.class Lcom/android/usbserial/client/AndroidUsbSerialClient$2;
.super Ljava/lang/Object;
.source "AndroidUsbSerialClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/usbserial/client/AndroidUsbSerialClient;->openDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;


# direct methods
.method constructor <init>(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient$2;->this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient$2;->this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;

    iget-object v0, v0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->deviceListener:Lcom/android/usbserial/client/OnUsbSerialDeviceListener;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient$2;->this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;

    invoke-static {v0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->access$200(Lcom/android/usbserial/client/AndroidUsbSerialClient;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient$2;->this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;

    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;

    invoke-static {v0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->access$200(Lcom/android/usbserial/client/AndroidUsbSerialClient;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->send(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient$2;->this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;

    iget-object v0, v0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->deviceListener:Lcom/android/usbserial/client/OnUsbSerialDeviceListener;

    invoke-interface {v0}, Lcom/android/usbserial/client/OnUsbSerialDeviceListener;->onDeviceConnected()V

    :cond_1
    return-void
.end method
