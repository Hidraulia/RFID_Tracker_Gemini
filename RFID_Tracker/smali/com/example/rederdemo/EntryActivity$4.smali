.class Lcom/example/rederdemo/EntryActivity$4;
.super Ljava/lang/Object;
.source "EntryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/EntryActivity;->searchDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/EntryActivity;

.field final synthetic val$baseVersion:Landroid/widget/TextView;

.field final synthetic val$baseVersion1:Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/EntryActivity;Landroid/widget/TextView;Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/example/rederdemo/EntryActivity$4;->this$0:Lcom/example/rederdemo/EntryActivity;

    iput-object p2, p0, Lcom/example/rederdemo/EntryActivity$4;->val$baseVersion:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/example/rederdemo/EntryActivity$4;->val$baseVersion1:Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity$4;->val$baseVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/EntryActivity$4;->val$baseVersion1:Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;->getBaseVersions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
