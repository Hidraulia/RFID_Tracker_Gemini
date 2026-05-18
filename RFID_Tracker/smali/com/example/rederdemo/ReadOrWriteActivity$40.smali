.class Lcom/example/rederdemo/ReadOrWriteActivity$40;
.super Landroid/os/Handler;
.source "ReadOrWriteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/rederdemo/ReadOrWriteActivity;
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

    .line 2179
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$40;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 2182
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2184
    :cond_0
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$40;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v0}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$500(Lcom/example/rederdemo/ReadOrWriteActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$40;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v1}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1600(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2185
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$40;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v0}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$600(Lcom/example/rederdemo/ReadOrWriteActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$40;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v1}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1700(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2186
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$40;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v0}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1800(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    .line 2187
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$40;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1302(Lcom/example/rederdemo/ReadOrWriteActivity;Z)Z

    .line 2199
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
