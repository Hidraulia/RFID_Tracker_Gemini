.class public Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RfidConfigActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/example/rederdemo/entity/RfidConfigActivity;

.field private view2131296293:Landroid/view/View;

.field private view2131296294:Landroid/view/View;

.field private view2131296299:Landroid/view/View;

.field private view2131296302:Landroid/view/View;

.field private view2131296310:Landroid/view/View;

.field private view2131296313:Landroid/view/View;

.field private view2131296470:Landroid/view/View;

.field private view2131296472:Landroid/view/View;

.field private view2131296674:Landroid/view/View;

.field private view2131296675:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/example/rederdemo/entity/RfidConfigActivity;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Lcom/example/rederdemo/entity/RfidConfigActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;-><init>(Lcom/example/rederdemo/entity/RfidConfigActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/rederdemo/entity/RfidConfigActivity;Landroid/view/View;)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->target:Lcom/example/rederdemo/entity/RfidConfigActivity;

    .line 50
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f090035

    const-string v2, "field \'base_Speed\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/example/rederdemo/entity/RfidConfigActivity;->base_Speed:Landroid/widget/Spinner;

    .line 51
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f090154

    const-string v2, "field \'session\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/example/rederdemo/entity/RfidConfigActivity;->session:Landroid/widget/Spinner;

    .line 52
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f090124

    const-string v2, "field \'q\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/example/rederdemo/entity/RfidConfigActivity;->q:Landroid/widget/Spinner;

    .line 53
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0900f1

    const-string v2, "field \'inventory\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/example/rederdemo/entity/RfidConfigActivity;->inventory:Landroid/widget/Spinner;

    .line 54
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0900d2

    const-string v2, "field \'frequency\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/example/rederdemo/entity/RfidConfigActivity;->frequency:Landroid/widget/Spinner;

    .line 55
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f090162

    const-string v2, "field \'spinner1\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/example/rederdemo/entity/RfidConfigActivity;->spinner1:Landroid/widget/Spinner;

    .line 56
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f09002d

    const-string v2, "field \'auto_mode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/example/rederdemo/entity/RfidConfigActivity;->auto_mode:Landroid/widget/Spinner;

    .line 57
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09002f

    const-string v2, "field \'auto_time\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/example/rederdemo/entity/RfidConfigActivity;->auto_time:Landroid/widget/EditText;

    .line 58
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0900c6

    const-string v2, "field \'filter_time\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/example/rederdemo/entity/RfidConfigActivity;->filter_time:Landroid/widget/EditText;

    .line 59
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09013b

    const-string v2, "field \'rssi_value\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/example/rederdemo/entity/RfidConfigActivity;->rssi_value:Landroid/widget/EditText;

    const v0, 0x7f090026

    const-string v1, "field \'ant_query\' and method \'antQuery\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 61
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'ant_query\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/example/rederdemo/entity/RfidConfigActivity;->ant_query:Landroid/widget/Button;

    .line 62
    iput-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296294:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$1;-><init>(Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;Lcom/example/rederdemo/entity/RfidConfigActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090025

    const-string v1, "field \'ant_config\' and method \'antConfig\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 70
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'ant_config\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/example/rederdemo/entity/RfidConfigActivity;->ant_config:Landroid/widget/Button;

    .line 71
    iput-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296293:Landroid/view/View;

    .line 72
    new-instance v0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$2;-><init>(Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;Lcom/example/rederdemo/entity/RfidConfigActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090039

    const-string v1, "method \'baseQuery\'"

    .line 78
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296313:Landroid/view/View;

    .line 80
    new-instance v1, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$3;-><init>(Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;Lcom/example/rederdemo/entity/RfidConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090036

    const-string v1, "method \'baseConfig\'"

    .line 86
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296310:Landroid/view/View;

    .line 88
    new-instance v1, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$4;-><init>(Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;Lcom/example/rederdemo/entity/RfidConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900d8

    const-string v1, "method \'frequencyQuery\'"

    .line 94
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296472:Landroid/view/View;

    .line 96
    new-instance v1, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$5;-><init>(Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;Lcom/example/rederdemo/entity/RfidConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900d6

    const-string v1, "method \'frequencyConfig\'"

    .line 102
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296470:Landroid/view/View;

    .line 104
    new-instance v1, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$6;-><init>(Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;Lcom/example/rederdemo/entity/RfidConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09002e

    const-string v1, "method \'autoQuery\'"

    .line 110
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296302:Landroid/view/View;

    .line 112
    new-instance v1, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$7;-><init>(Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;Lcom/example/rederdemo/entity/RfidConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09002b

    const-string v1, "method \'autoConfig\'"

    .line 118
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296299:Landroid/view/View;

    .line 120
    new-instance v1, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$8;-><init>(Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;Lcom/example/rederdemo/entity/RfidConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901a3

    const-string v1, "method \'upQuery\'"

    .line 126
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296675:Landroid/view/View;

    .line 128
    new-instance v1, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$9;-><init>(Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;Lcom/example/rederdemo/entity/RfidConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901a2

    const-string v1, "method \'upConfig\'"

    .line 134
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 135
    iput-object p2, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296674:Landroid/view/View;

    .line 136
    new-instance v0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$10;

    invoke-direct {v0, p0, p1}, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$10;-><init>(Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;Lcom/example/rederdemo/entity/RfidConfigActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->target:Lcom/example/rederdemo/entity/RfidConfigActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 149
    iput-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->target:Lcom/example/rederdemo/entity/RfidConfigActivity;

    .line 151
    iput-object v1, v0, Lcom/example/rederdemo/entity/RfidConfigActivity;->base_Speed:Landroid/widget/Spinner;

    .line 152
    iput-object v1, v0, Lcom/example/rederdemo/entity/RfidConfigActivity;->session:Landroid/widget/Spinner;

    .line 153
    iput-object v1, v0, Lcom/example/rederdemo/entity/RfidConfigActivity;->q:Landroid/widget/Spinner;

    .line 154
    iput-object v1, v0, Lcom/example/rederdemo/entity/RfidConfigActivity;->inventory:Landroid/widget/Spinner;

    .line 155
    iput-object v1, v0, Lcom/example/rederdemo/entity/RfidConfigActivity;->frequency:Landroid/widget/Spinner;

    .line 156
    iput-object v1, v0, Lcom/example/rederdemo/entity/RfidConfigActivity;->spinner1:Landroid/widget/Spinner;

    .line 157
    iput-object v1, v0, Lcom/example/rederdemo/entity/RfidConfigActivity;->auto_mode:Landroid/widget/Spinner;

    .line 158
    iput-object v1, v0, Lcom/example/rederdemo/entity/RfidConfigActivity;->auto_time:Landroid/widget/EditText;

    .line 159
    iput-object v1, v0, Lcom/example/rederdemo/entity/RfidConfigActivity;->filter_time:Landroid/widget/EditText;

    .line 160
    iput-object v1, v0, Lcom/example/rederdemo/entity/RfidConfigActivity;->rssi_value:Landroid/widget/EditText;

    .line 161
    iput-object v1, v0, Lcom/example/rederdemo/entity/RfidConfigActivity;->ant_query:Landroid/widget/Button;

    .line 162
    iput-object v1, v0, Lcom/example/rederdemo/entity/RfidConfigActivity;->ant_config:Landroid/widget/Button;

    .line 164
    iget-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296294:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iput-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296294:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296293:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iput-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296293:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296313:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iput-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296313:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296310:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iput-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296310:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296472:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iput-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296472:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296470:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iput-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296470:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296302:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iput-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296302:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296299:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iput-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296299:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296675:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iput-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296675:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296674:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iput-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;->view2131296674:Landroid/view/View;

    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
