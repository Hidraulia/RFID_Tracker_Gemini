.class public Lcom/example/rederdemo/TestActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TestActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/example/rederdemo/TestActivity;

.field private view2131296314:Landroid/view/View;

.field private view2131296315:Landroid/view/View;

.field private view2131296417:Landroid/view/View;

.field private view2131296559:Landroid/view/View;

.field private view2131296619:Landroid/view/View;

.field private view2131296620:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/example/rederdemo/TestActivity;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/example/rederdemo/TestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/example/rederdemo/TestActivity_ViewBinding;-><init>(Lcom/example/rederdemo/TestActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/rederdemo/TestActivity;Landroid/view/View;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->target:Lcom/example/rederdemo/TestActivity;

    .line 41
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0900d0

    const-string v2, "field \'freq_point\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/example/rederdemo/TestActivity;->freq_point:Landroid/widget/Spinner;

    .line 42
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f09011f

    const-string v2, "field \'power_Value\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/example/rederdemo/TestActivity;->power_Value:Landroid/widget/Spinner;

    .line 43
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09016a

    const-string v2, "field \'standing_wave_pre\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/example/rederdemo/TestActivity;->standing_wave_pre:Landroid/widget/EditText;

    .line 44
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09016d

    const-string v2, "field \'standing_wave_suf\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/example/rederdemo/TestActivity;->standing_wave_suf:Landroid/widget/EditText;

    const v0, 0x7f09016b

    const-string v1, "method \'standing_wave_send\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296619:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/example/rederdemo/TestActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/TestActivity_ViewBinding$1;-><init>(Lcom/example/rederdemo/TestActivity_ViewBinding;Lcom/example/rederdemo/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09016c

    const-string v1, "method \'standing_wave_stop\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296620:Landroid/view/View;

    .line 55
    new-instance v1, Lcom/example/rederdemo/TestActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/TestActivity_ViewBinding$2;-><init>(Lcom/example/rederdemo/TestActivity_ViewBinding;Lcom/example/rederdemo/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a1

    const-string v1, "method \'detection\'"

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296417:Landroid/view/View;

    .line 63
    new-instance v1, Lcom/example/rederdemo/TestActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/TestActivity_ViewBinding$3;-><init>(Lcom/example/rederdemo/TestActivity_ViewBinding;Lcom/example/rederdemo/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09012f

    const-string v1, "method \'reset_btn\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296559:Landroid/view/View;

    .line 71
    new-instance v1, Lcom/example/rederdemo/TestActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/TestActivity_ViewBinding$4;-><init>(Lcom/example/rederdemo/TestActivity_ViewBinding;Lcom/example/rederdemo/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09003a

    const-string v1, "method \'baudRateQueryEvent\'"

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296314:Landroid/view/View;

    .line 79
    new-instance v1, Lcom/example/rederdemo/TestActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/TestActivity_ViewBinding$5;-><init>(Lcom/example/rederdemo/TestActivity_ViewBinding;Lcom/example/rederdemo/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09003b

    const-string v1, "method \'baudRateSetEvent\'"

    .line 85
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 86
    iput-object p2, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296315:Landroid/view/View;

    .line 87
    new-instance v0, Lcom/example/rederdemo/TestActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/example/rederdemo/TestActivity_ViewBinding$6;-><init>(Lcom/example/rederdemo/TestActivity_ViewBinding;Lcom/example/rederdemo/TestActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->target:Lcom/example/rederdemo/TestActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->target:Lcom/example/rederdemo/TestActivity;

    .line 102
    iput-object v1, v0, Lcom/example/rederdemo/TestActivity;->freq_point:Landroid/widget/Spinner;

    .line 103
    iput-object v1, v0, Lcom/example/rederdemo/TestActivity;->power_Value:Landroid/widget/Spinner;

    .line 104
    iput-object v1, v0, Lcom/example/rederdemo/TestActivity;->standing_wave_pre:Landroid/widget/EditText;

    .line 105
    iput-object v1, v0, Lcom/example/rederdemo/TestActivity;->standing_wave_suf:Landroid/widget/EditText;

    .line 107
    iget-object v0, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296619:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iput-object v1, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296619:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296620:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iput-object v1, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296620:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296417:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iput-object v1, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296417:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296559:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iput-object v1, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296559:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296314:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iput-object v1, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296314:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296315:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iput-object v1, p0, Lcom/example/rederdemo/TestActivity_ViewBinding;->view2131296315:Landroid/view/View;

    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
