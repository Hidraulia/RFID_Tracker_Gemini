.class Lcom/example/rederdemo/ReadOrWriteActivity$1;
.super Ljava/lang/Object;
.source "ReadOrWriteActivity.java"

# interfaces
.implements Lcom/gg/reader/api/dal/HandlerTagEpcLog;


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

    .line 308
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$1;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;)V
    .locals 1

    .line 310
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getResult()I

    move-result p1

    if-nez p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$1;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {p1}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$000(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$1;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-virtual {v0, p2}, Lcom/example/rederdemo/ReadOrWriteActivity;->pooled6cData(Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;)Ljava/util/Map;

    .line 313
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
