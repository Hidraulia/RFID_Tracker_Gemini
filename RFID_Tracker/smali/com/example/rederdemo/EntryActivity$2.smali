.class Lcom/example/rederdemo/EntryActivity$2;
.super Lcom/gg/reader/api/dal/HandlerDebugLog;
.source "EntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/EntryActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/EntryActivity;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/EntryActivity;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/example/rederdemo/EntryActivity$2;->this$0:Lcom/example/rederdemo/EntryActivity;

    invoke-direct {p0}, Lcom/gg/reader/api/dal/HandlerDebugLog;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveDebugLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "receive"

    .line 147
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendDebugLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "send"

    .line 142
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
