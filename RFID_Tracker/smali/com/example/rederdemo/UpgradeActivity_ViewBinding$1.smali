.class Lcom/example/rederdemo/UpgradeActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "UpgradeActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/UpgradeActivity_ViewBinding;-><init>(Lcom/example/rederdemo/UpgradeActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/UpgradeActivity_ViewBinding;

.field final synthetic val$target:Lcom/example/rederdemo/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/UpgradeActivity_ViewBinding;Lcom/example/rederdemo/UpgradeActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/example/rederdemo/UpgradeActivity_ViewBinding$1;->this$0:Lcom/example/rederdemo/UpgradeActivity_ViewBinding;

    iput-object p2, p0, Lcom/example/rederdemo/UpgradeActivity_ViewBinding$1;->val$target:Lcom/example/rederdemo/UpgradeActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/example/rederdemo/UpgradeActivity_ViewBinding$1;->val$target:Lcom/example/rederdemo/UpgradeActivity;

    invoke-virtual {p1}, Lcom/example/rederdemo/UpgradeActivity;->selectBinFileEvent()V

    return-void
.end method
