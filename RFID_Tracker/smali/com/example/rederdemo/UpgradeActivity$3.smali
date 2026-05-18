.class Lcom/example/rederdemo/UpgradeActivity$3;
.super Ljava/lang/Object;
.source "UpgradeActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/rederdemo/UpgradeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/UpgradeActivity;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/example/rederdemo/UpgradeActivity$3;->this$0:Lcom/example/rederdemo/UpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/example/rederdemo/UpgradeActivity$3;->this$0:Lcom/example/rederdemo/UpgradeActivity;

    const v0, 0x7f1001b2

    invoke-virtual {p1, v0}, Lcom/example/rederdemo/UpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/example/rederdemo/UpgradeActivity$3;->this$0:Lcom/example/rederdemo/UpgradeActivity;

    const v0, 0x7f1001b1

    invoke-virtual {p1, v0}, Lcom/example/rederdemo/UpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/example/rederdemo/UpgradeActivity$3;->this$0:Lcom/example/rederdemo/UpgradeActivity;

    const v0, 0x7f1001b0

    invoke-virtual {p1, v0}, Lcom/example/rederdemo/UpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object p1, p0, Lcom/example/rederdemo/UpgradeActivity$3;->this$0:Lcom/example/rederdemo/UpgradeActivity;

    const v0, 0x7f1001af

    invoke-virtual {p1, v0}, Lcom/example/rederdemo/UpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/example/rederdemo/UpgradeActivity$3;->this$0:Lcom/example/rederdemo/UpgradeActivity;

    iget-object v0, v0, Lcom/example/rederdemo/UpgradeActivity;->numberProgressBar:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/daimajia/numberprogressbar/NumberProgressBar;->setProgress(I)V

    :goto_0
    return v1
.end method
