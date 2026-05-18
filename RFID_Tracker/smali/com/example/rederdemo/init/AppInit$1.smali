.class Lcom/example/rederdemo/init/AppInit$1;
.super Ljava/lang/Object;
.source "AppInit.java"

# interfaces
.implements Lcom/example/rederdemo/init/AppStateTracker$AppStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/init/AppInit;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/init/AppInit;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/init/AppInit;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/example/rederdemo/init/AppInit$1;->this$0:Lcom/example/rederdemo/init/AppInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appTurnIntoBackGround()V
    .locals 2

    const-string v0, "appTurnIntoForeground"

    const-string v1, "\u540e\u53f0"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    .line 37
    invoke-static {v0}, Lcom/example/rederdemo/util/PowerUtil;->power(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/example/rederdemo/init/AppInit$1;->this$0:Lcom/example/rederdemo/init/AppInit;

    iget-object v0, v0, Lcom/example/rederdemo/init/AppInit;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0}, Lcom/gg/reader/api/dal/GClient;->close()Z

    return-void
.end method

.method public appTurnIntoForeground()V
    .locals 2

    const-string v0, "appTurnIntoForeground"

    const-string v1, "\u524d\u53f0"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "1"

    .line 30
    invoke-static {v0}, Lcom/example/rederdemo/util/PowerUtil;->power(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/example/rederdemo/init/AppInit$1;->this$0:Lcom/example/rederdemo/init/AppInit;

    invoke-static {v0}, Lcom/example/rederdemo/init/AppInit;->access$000(Lcom/example/rederdemo/init/AppInit;)V

    return-void
.end method
