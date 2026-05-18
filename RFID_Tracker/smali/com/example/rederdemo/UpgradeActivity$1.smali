.class Lcom/example/rederdemo/UpgradeActivity$1;
.super Ljava/lang/Object;
.source "UpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/UpgradeActivity;->upgradeEvent()V
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

    .line 73
    iput-object p1, p0, Lcom/example/rederdemo/UpgradeActivity$1;->this$0:Lcom/example/rederdemo/UpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/example/rederdemo/UpgradeActivity$1;->this$0:Lcom/example/rederdemo/UpgradeActivity;

    invoke-static {v0}, Lcom/example/rederdemo/UpgradeActivity;->access$000(Lcom/example/rederdemo/UpgradeActivity;)V

    return-void
.end method
