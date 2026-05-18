.class Lcom/example/rederdemo/UpgradeActivity$2;
.super Ljava/lang/Object;
.source "UpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/UpgradeActivity;->upgradeBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/UpgradeActivity;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/UpgradeActivity;Ljava/lang/Exception;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/example/rederdemo/UpgradeActivity$2;->this$0:Lcom/example/rederdemo/UpgradeActivity;

    iput-object p2, p0, Lcom/example/rederdemo/UpgradeActivity$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/example/rederdemo/UpgradeActivity$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void
.end method
