.class public Lcom/example/rederdemo/EntryActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EntryActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/example/rederdemo/EntryActivity;

.field private view2131296418:Landroid/view/View;

.field private view2131296467:Landroid/view/View;

.field private view2131296552:Landroid/view/View;

.field private view2131296561:Landroid/view/View;

.field private view2131296678:Landroid/view/View;

.field private view2131296682:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/example/rederdemo/EntryActivity;)V
    .locals 1

    .line 32
    invoke-virtual {p1}, Lcom/example/rederdemo/EntryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/example/rederdemo/EntryActivity_ViewBinding;-><init>(Lcom/example/rederdemo/EntryActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/rederdemo/EntryActivity;Landroid/view/View;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->target:Lcom/example/rederdemo/EntryActivity;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09004c

    const-string v2, "field \'connect_param\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/example/rederdemo/EntryActivity;->connect_param:Landroid/widget/TextView;

    const v0, 0x7f090128

    const-string v1, "method \'readOrWrite\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296552:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/example/rederdemo/EntryActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/EntryActivity_ViewBinding$1;-><init>(Lcom/example/rederdemo/EntryActivity_ViewBinding;Lcom/example/rederdemo/EntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090131

    const-string v1, "method \'rfidConfig\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296561:Landroid/view/View;

    .line 51
    new-instance v1, Lcom/example/rederdemo/EntryActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/EntryActivity_ViewBinding$2;-><init>(Lcom/example/rederdemo/EntryActivity_ViewBinding;Lcom/example/rederdemo/EntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900d3

    const-string v1, "method \'frequencyHopping\'"

    .line 57
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296467:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/example/rederdemo/EntryActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/EntryActivity_ViewBinding$3;-><init>(Lcom/example/rederdemo/EntryActivity_ViewBinding;Lcom/example/rederdemo/EntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901a6

    const-string v1, "method \'upgradeEvent\'"

    .line 65
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296678:Landroid/view/View;

    .line 67
    new-instance v1, Lcom/example/rederdemo/EntryActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/EntryActivity_ViewBinding$4;-><init>(Lcom/example/rederdemo/EntryActivity_ViewBinding;Lcom/example/rederdemo/EntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901aa

    const-string v1, "method \'test\'"

    .line 73
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296682:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/example/rederdemo/EntryActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/EntryActivity_ViewBinding$5;-><init>(Lcom/example/rederdemo/EntryActivity_ViewBinding;Lcom/example/rederdemo/EntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a2

    const-string v1, "method \'searchDevice\'"

    .line 81
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 82
    iput-object p2, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296418:Landroid/view/View;

    .line 83
    new-instance v0, Lcom/example/rederdemo/EntryActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/example/rederdemo/EntryActivity_ViewBinding$6;-><init>(Lcom/example/rederdemo/EntryActivity_ViewBinding;Lcom/example/rederdemo/EntryActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->target:Lcom/example/rederdemo/EntryActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->target:Lcom/example/rederdemo/EntryActivity;

    .line 98
    iput-object v1, v0, Lcom/example/rederdemo/EntryActivity;->connect_param:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296552:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iput-object v1, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296552:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296561:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iput-object v1, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296561:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296467:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iput-object v1, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296467:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296678:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iput-object v1, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296678:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296682:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iput-object v1, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296682:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296418:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iput-object v1, p0, Lcom/example/rederdemo/EntryActivity_ViewBinding;->view2131296418:Landroid/view/View;

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
