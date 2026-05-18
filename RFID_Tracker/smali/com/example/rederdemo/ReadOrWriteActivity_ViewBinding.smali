.class public Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ReadOrWriteActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/example/rederdemo/ReadOrWriteActivity;

.field private view2131296328:Landroid/view/View;

.field private view2131296381:Landroid/view/View;

.field private view2131296433:Landroid/view/View;

.field private view2131296434:Landroid/view/View;

.field private view2131296435:Landroid/view/View;

.field private view2131296436:Landroid/view/View;

.field private view2131296437:Landroid/view/View;

.field private view2131296441:Landroid/view/View;

.field private view2131296550:Landroid/view/View;

.field private view2131296623:Landroid/view/View;

.field private view2131296630:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Lcom/example/rederdemo/ReadOrWriteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/rederdemo/ReadOrWriteActivity;Landroid/view/View;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->target:Lcom/example/rederdemo/ReadOrWriteActivity;

    const v0, 0x7f090126

    const-string v1, "field \'read\' and method \'readCard\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 56
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'read\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->read:Landroid/widget/Button;

    .line 57
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296550:Landroid/view/View;

    .line 58
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$1;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09016f

    const-string v1, "field \'stop\' and method \'stopRead\'"

    .line 64
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 65
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'stop\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->stop:Landroid/widget/Button;

    .line 66
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296623:Landroid/view/View;

    .line 67
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$2;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090048

    const-string v1, "field \'clean\' and method \'cleanData\'"

    .line 73
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 74
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'clean\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->clean:Landroid/widget/Button;

    .line 75
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296328:Landroid/view/View;

    .line 76
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$3;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0901d5

    const-string v2, "field \'way\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->way:Landroid/widget/RadioGroup;

    .line 83
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f09019e

    const-string v2, "field \'type\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    .line 84
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f090159

    const-string v2, "field \'single\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->single:Landroid/widget/RadioButton;

    .line 85
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f090101

    const-string v2, "field \'loop\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->loop:Landroid/widget/RadioButton;

    .line 86
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090102

    const-string v2, "field \'loopTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->loopTime:Landroid/widget/EditText;

    .line 87
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f090041

    const-string v2, "field \'c\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->c:Landroid/widget/RadioButton;

    .line 88
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f090031

    const-string v2, "field \'b\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->b:Landroid/widget/RadioButton;

    .line 89
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090127

    const-string v2, "field \'readCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->readCount:Landroid/widget/TextView;

    .line 90
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090178

    const-string v2, "field \'tagCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->tagCount:Landroid/widget/TextView;

    .line 91
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090161

    const-string v2, "field \'speed\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->speed:Landroid/widget/TextView;

    .line 92
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090190

    const-string v2, "field \'timeCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->timeCount:Landroid/widget/TextView;

    const v0, 0x7f090176

    const-string v1, "field \'tabHead\' and method \'getTabHead\'"

    .line 93
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 94
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'tabHead\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->tabHead:Landroid/widget/LinearLayout;

    .line 95
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296630:Landroid/view/View;

    .line 96
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$4;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b5

    const-string v1, "method \'writeEPC\'"

    .line 102
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296437:Landroid/view/View;

    .line 104
    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$5;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b9

    const-string v1, "method \'writeUser\'"

    .line 110
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296441:Landroid/view/View;

    .line 112
    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$6;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b4

    const-string v1, "method \'writeCus\'"

    .line 118
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296436:Landroid/view/View;

    .line 120
    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$7;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09007d

    const-string v1, "method \'cusRead\'"

    .line 126
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296381:Landroid/view/View;

    .line 128
    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$8;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b2

    const-string v1, "method \'fab_excel\'"

    .line 134
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 135
    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296434:Landroid/view/View;

    .line 136
    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$9;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b3

    const-string v1, "method \'exportTxt\'"

    .line 142
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 143
    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296435:Landroid/view/View;

    .line 144
    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$10;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b1

    const-string v1, "method \'exportCsv\'"

    .line 150
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 151
    iput-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296433:Landroid/view/View;

    .line 152
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$11;

    invoke-direct {v0, p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding$11;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->target:Lcom/example/rederdemo/ReadOrWriteActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 165
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->target:Lcom/example/rederdemo/ReadOrWriteActivity;

    .line 167
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->read:Landroid/widget/Button;

    .line 168
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->stop:Landroid/widget/Button;

    .line 169
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->clean:Landroid/widget/Button;

    .line 170
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->way:Landroid/widget/RadioGroup;

    .line 171
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    .line 172
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->single:Landroid/widget/RadioButton;

    .line 173
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->loop:Landroid/widget/RadioButton;

    .line 174
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->loopTime:Landroid/widget/EditText;

    .line 175
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->c:Landroid/widget/RadioButton;

    .line 176
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->b:Landroid/widget/RadioButton;

    .line 177
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->readCount:Landroid/widget/TextView;

    .line 178
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagCount:Landroid/widget/TextView;

    .line 179
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->speed:Landroid/widget/TextView;

    .line 180
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->timeCount:Landroid/widget/TextView;

    .line 181
    iput-object v1, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->tabHead:Landroid/widget/LinearLayout;

    .line 183
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296550:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296550:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296623:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296623:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296328:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296328:Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296630:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296630:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296437:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296437:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296441:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296441:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296436:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296436:Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296381:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296381:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296434:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296434:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296435:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296435:Landroid/view/View;

    .line 203
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296433:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity_ViewBinding;->view2131296433:Landroid/view/View;

    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
