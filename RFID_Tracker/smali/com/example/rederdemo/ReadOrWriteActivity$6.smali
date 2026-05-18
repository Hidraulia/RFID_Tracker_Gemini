.class Lcom/example/rederdemo/ReadOrWriteActivity$6;
.super Ljava/lang/Object;
.source "ReadOrWriteActivity.java"

# interfaces
.implements Lcom/gg/reader/api/dal/HandlerTagGbOver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/ReadOrWriteActivity;->subHandler(Lcom/gg/reader/api/dal/GClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/ReadOrWriteActivity;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$6;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;)V
    .locals 1

    .line 347
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$6;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p1, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->handlerStop:Landroid/os/Handler;

    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    iput v0, p2, Landroid/os/Message;->what:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
