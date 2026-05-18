.class public Lcom/example/rederdemo/DialogCusActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DialogCusActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/example/rederdemo/DialogCusActivity;


# direct methods
.method public constructor <init>(Lcom/example/rederdemo/DialogCusActivity;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/example/rederdemo/DialogCusActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/example/rederdemo/DialogCusActivity_ViewBinding;-><init>(Lcom/example/rederdemo/DialogCusActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/rederdemo/DialogCusActivity;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/example/rederdemo/DialogCusActivity_ViewBinding;->target:Lcom/example/rederdemo/DialogCusActivity;

    .line 30
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f09005e

    const-string v2, "field \'cus_6c_mode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/example/rederdemo/DialogCusActivity;->cus_6c_mode:Landroid/widget/Spinner;

    .line 31
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090094

    const-string v2, "field \'cus_start\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/example/rederdemo/DialogCusActivity;->cus_start:Landroid/widget/EditText;

    .line 32
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09007c

    const-string v2, "field \'cus_pas\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/example/rederdemo/DialogCusActivity;->cus_pas:Landroid/widget/EditText;

    .line 33
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09005f

    const-string v2, "field \'cus_epc\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/example/rederdemo/DialogCusActivity;->cus_epc:Landroid/widget/EditText;

    .line 34
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090095

    const-string v2, "field \'cus_tid\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/example/rederdemo/DialogCusActivity;->cus_tid:Landroid/widget/EditText;

    .line 35
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090097

    const-string v2, "field \'cus_user\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/example/rederdemo/DialogCusActivity;->cus_user:Landroid/widget/EditText;

    .line 36
    const-class v0, Landroid/support/design/widget/TabLayout;

    const v1, 0x7f090175

    const-string v2, "field \'tab\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p1, Lcom/example/rederdemo/DialogCusActivity;->tab:Landroid/support/design/widget/TabLayout;

    .line 37
    const-class v0, Landroid/support/v4/view/ViewPager;

    const v1, 0x7f090117

    const-string v2, "field \'pager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/example/rederdemo/DialogCusActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 38
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090096

    const-string v2, "field \'cus_title\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/example/rederdemo/DialogCusActivity;->cus_title:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/example/rederdemo/DialogCusActivity_ViewBinding;->target:Lcom/example/rederdemo/DialogCusActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/example/rederdemo/DialogCusActivity_ViewBinding;->target:Lcom/example/rederdemo/DialogCusActivity;

    .line 48
    iput-object v1, v0, Lcom/example/rederdemo/DialogCusActivity;->cus_6c_mode:Landroid/widget/Spinner;

    .line 49
    iput-object v1, v0, Lcom/example/rederdemo/DialogCusActivity;->cus_start:Landroid/widget/EditText;

    .line 50
    iput-object v1, v0, Lcom/example/rederdemo/DialogCusActivity;->cus_pas:Landroid/widget/EditText;

    .line 51
    iput-object v1, v0, Lcom/example/rederdemo/DialogCusActivity;->cus_epc:Landroid/widget/EditText;

    .line 52
    iput-object v1, v0, Lcom/example/rederdemo/DialogCusActivity;->cus_tid:Landroid/widget/EditText;

    .line 53
    iput-object v1, v0, Lcom/example/rederdemo/DialogCusActivity;->cus_user:Landroid/widget/EditText;

    .line 54
    iput-object v1, v0, Lcom/example/rederdemo/DialogCusActivity;->tab:Landroid/support/design/widget/TabLayout;

    .line 55
    iput-object v1, v0, Lcom/example/rederdemo/DialogCusActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 56
    iput-object v1, v0, Lcom/example/rederdemo/DialogCusActivity;->cus_title:Landroid/widget/TextView;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
