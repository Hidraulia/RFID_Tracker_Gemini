.class public Lcom/example/rederdemo/UpgradeActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UpgradeActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/example/rederdemo/UpgradeActivity;

.field private view2131296592:Landroid/view/View;

.field private view2131296679:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/example/rederdemo/UpgradeActivity;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Lcom/example/rederdemo/UpgradeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/example/rederdemo/UpgradeActivity_ViewBinding;-><init>(Lcom/example/rederdemo/UpgradeActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/rederdemo/UpgradeActivity;Landroid/view/View;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/example/rederdemo/UpgradeActivity_ViewBinding;->target:Lcom/example/rederdemo/UpgradeActivity;

    .line 34
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09003d

    const-string v2, "field \'bin_file_path\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/example/rederdemo/UpgradeActivity;->bin_file_path:Landroid/widget/EditText;

    .line 35
    const-class v0, Lcom/daimajia/numberprogressbar/NumberProgressBar;

    const v1, 0x7f0901a5

    const-string v2, "field \'numberProgressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/numberprogressbar/NumberProgressBar;

    iput-object v0, p1, Lcom/example/rederdemo/UpgradeActivity;->numberProgressBar:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    const v0, 0x7f090150

    const-string v1, "field \'select_bin_file\' and method \'selectBinFileEvent\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 37
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'select_bin_file\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/example/rederdemo/UpgradeActivity;->select_bin_file:Landroid/widget/Button;

    .line 38
    iput-object v1, p0, Lcom/example/rederdemo/UpgradeActivity_ViewBinding;->view2131296592:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/example/rederdemo/UpgradeActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/example/rederdemo/UpgradeActivity_ViewBinding$1;-><init>(Lcom/example/rederdemo/UpgradeActivity_ViewBinding;Lcom/example/rederdemo/UpgradeActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901a7

    const-string v1, "field \'upgrade_btn\' and method \'upgradeEvent\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 46
    const-class v1, Landroid/widget/Button;

    const-string v2, "field \'upgrade_btn\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/example/rederdemo/UpgradeActivity;->upgrade_btn:Landroid/widget/Button;

    .line 47
    iput-object p2, p0, Lcom/example/rederdemo/UpgradeActivity_ViewBinding;->view2131296679:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/example/rederdemo/UpgradeActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/example/rederdemo/UpgradeActivity_ViewBinding$2;-><init>(Lcom/example/rederdemo/UpgradeActivity_ViewBinding;Lcom/example/rederdemo/UpgradeActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/example/rederdemo/UpgradeActivity_ViewBinding;->target:Lcom/example/rederdemo/UpgradeActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/example/rederdemo/UpgradeActivity_ViewBinding;->target:Lcom/example/rederdemo/UpgradeActivity;

    .line 63
    iput-object v1, v0, Lcom/example/rederdemo/UpgradeActivity;->bin_file_path:Landroid/widget/EditText;

    .line 64
    iput-object v1, v0, Lcom/example/rederdemo/UpgradeActivity;->numberProgressBar:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    .line 65
    iput-object v1, v0, Lcom/example/rederdemo/UpgradeActivity;->select_bin_file:Landroid/widget/Button;

    .line 66
    iput-object v1, v0, Lcom/example/rederdemo/UpgradeActivity;->upgrade_btn:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/example/rederdemo/UpgradeActivity_ViewBinding;->view2131296592:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/example/rederdemo/UpgradeActivity_ViewBinding;->view2131296592:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/example/rederdemo/UpgradeActivity_ViewBinding;->view2131296679:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/example/rederdemo/UpgradeActivity_ViewBinding;->view2131296679:Landroid/view/View;

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
