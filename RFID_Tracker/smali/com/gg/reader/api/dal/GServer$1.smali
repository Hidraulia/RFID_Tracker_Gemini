.class Lcom/gg/reader/api/dal/GServer$1;
.super Ljava/lang/Object;
.source "GServer.java"

# interfaces
.implements Lcom/gg/reader/api/dal/HandlerRemoteConnected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/GServer;->open(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/GServer;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/GServer;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/gg/reader/api/dal/GServer$1;->this$0:Lcom/gg/reader/api/dal/GServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/gg/reader/api/dal/communication/TcpClient;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer$1;->this$0:Lcom/gg/reader/api/dal/GServer;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GServer;->processConnect(Lcom/gg/reader/api/dal/communication/TcpClient;)V

    return-void
.end method
