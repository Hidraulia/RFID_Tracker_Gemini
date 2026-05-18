.class public Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;
.super Ljava/lang/Object;
.source "FrequencyBandActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/example/rederdemo/FrequencyBandActivity;

.field private view2131296458:Landroid/view/View;

.field private view2131296459:Landroid/view/View;

.field private view2131296473:Landroid/view/View;

.field private view2131296504:Landroid/view/View;

.field private view2131296565:Landroid/view/View;

.field private view2131296566:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/example/rederdemo/FrequencyBandActivity;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/example/rederdemo/FrequencyBandActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;-><init>(Lcom/example/rederdemo/FrequencyBandActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/rederdemo/FrequencyBandActivity;Landroid/view/View;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->target:Lcom/example/rederdemo/FrequencyBandActivity;

    .line 41
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0900d4

    const-string v2, "field \'frequency_band\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/example/rederdemo/FrequencyBandActivity;->frequency_band:Landroid/widget/Spinner;

    .line 42
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0900cc

    const-string v2, "field \'fre_band_selects\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/example/rederdemo/FrequencyBandActivity;->fre_band_selects:Landroid/widget/EditText;

    .line 43
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0900cd

    const-string v2, "field \'fre_band_switch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/example/rederdemo/FrequencyBandActivity;->fre_band_switch:Landroid/widget/Spinner;

    const v0, 0x7f0900d9

    const-string v1, "method \'frequency_range_config\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296473:Landroid/view/View;

    .line 46
    new-instance v1, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$1;-><init>(Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;Lcom/example/rederdemo/FrequencyBandActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090135

    const-string v1, "method \'right_move\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296565:Landroid/view/View;

    .line 54
    new-instance v1, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$2;-><init>(Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;Lcom/example/rederdemo/FrequencyBandActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090136

    const-string v1, "method \'right_right_move\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296566:Landroid/view/View;

    .line 62
    new-instance v1, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$3;-><init>(Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;Lcom/example/rederdemo/FrequencyBandActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f8

    const-string v1, "method \'left_left_move\'"

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296504:Landroid/view/View;

    .line 70
    new-instance v1, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$4;-><init>(Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;Lcom/example/rederdemo/FrequencyBandActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900cb

    const-string v1, "method \'fre_band_query\'"

    .line 76
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296459:Landroid/view/View;

    .line 78
    new-instance v1, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$5;-><init>(Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;Lcom/example/rederdemo/FrequencyBandActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ca

    const-string v1, "method \'fre_band_config\'"

    .line 84
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 85
    iput-object p2, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296458:Landroid/view/View;

    .line 86
    new-instance v0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$6;-><init>(Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;Lcom/example/rederdemo/FrequencyBandActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->target:Lcom/example/rederdemo/FrequencyBandActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 99
    iput-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->target:Lcom/example/rederdemo/FrequencyBandActivity;

    .line 101
    iput-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity;->frequency_band:Landroid/widget/Spinner;

    .line 102
    iput-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity;->fre_band_selects:Landroid/widget/EditText;

    .line 103
    iput-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity;->fre_band_switch:Landroid/widget/Spinner;

    .line 105
    iget-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296473:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296473:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296565:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iput-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296565:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296566:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iput-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296566:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296504:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iput-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296504:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296459:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iput-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296459:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296458:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iput-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;->view2131296458:Landroid/view/View;

    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
