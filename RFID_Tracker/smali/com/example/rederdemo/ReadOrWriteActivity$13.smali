.class Lcom/example/rederdemo/ReadOrWriteActivity$13;
.super Ljava/lang/Object;
.source "ReadOrWriteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/ReadOrWriteActivity;->soundTask()V
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

    .line 927
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$13;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 930
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$13;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-wide v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->rateValue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 931
    invoke-static {v0, v1}, Lcom/example/rederdemo/util/UtilSound;->play(II)V

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$13;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v0}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$600(Lcom/example/rederdemo/ReadOrWriteActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
