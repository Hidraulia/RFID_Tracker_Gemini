.class public Lcom/example/rederdemo/fragment/WriteFragment;
.super Landroid/support/v4/app/Fragment;
.source "WriteFragment.java"


# instance fields
.field private ant:J

.field cus_6b_area:Landroid/widget/Spinner;

.field cus_6b_content:Landroid/widget/EditText;

.field cus_6b_start:Landroid/widget/EditText;

.field cus_6b_write_event:Landroid/widget/Button;

.field cus_gb_area:Landroid/widget/Spinner;

.field cus_gb_content:Landroid/widget/EditText;

.field cus_gb_start:Landroid/widget/EditText;

.field cus_gb_write_event:Landroid/widget/Button;

.field cus_gjb_area:Landroid/widget/Spinner;

.field cus_gjb_content:Landroid/widget/EditText;

.field cus_gjb_start:Landroid/widget/EditText;

.field cus_gjb_write_event:Landroid/widget/Button;

.field gbWave:Landroid/widget/CheckBox;

.field private info:Lcom/example/rederdemo/entity/TagInfo;

.field listener:[Ljava/lang/String;

.field tagType:I

.field view:Landroid/view/View;

.field w_f_area:Landroid/widget/Spinner;

.field w_f_block:Landroid/widget/EditText;

.field w_f_btn:Landroid/widget/Button;

.field w_f_check:Landroid/widget/CheckBox;

.field w_f_content:Landroid/widget/EditText;

.field w_f_start:Landroid/widget/EditText;

.field wave:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->listener:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->tagType:I

    return-void
.end method


# virtual methods
.method public getFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 5

    .line 368
    new-instance v0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 370
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->listener:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 372
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    if-eqz p1, :cond_4

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    .line 376
    invoke-virtual {v0, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 378
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne v1, p2, :cond_4

    .line 392
    invoke-virtual {v0, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    if-eqz p3, :cond_2

    .line 394
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    .line 396
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 398
    invoke-virtual {v0, p3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object p1

    .line 381
    :cond_3
    :goto_0
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    if-eqz p2, :cond_6

    .line 383
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    .line 385
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 387
    invoke-virtual {v0, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 404
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->listener:[Ljava/lang/String;

    aget-object p1, p1, v3

    if-eqz p1, :cond_5

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    goto :goto_2

    .line 408
    :cond_5
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    :goto_2
    return-object v0

    :cond_6
    return-object p1
.end method

.method public init6b(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090053

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_6b_area:Landroid/widget/Spinner;

    const v0, 0x7f090059

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_6b_start:Landroid/widget/EditText;

    const v0, 0x7f090054

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_6b_content:Landroid/widget/EditText;

    const v0, 0x7f09005a

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_6b_write_event:Landroid/widget/Button;

    return-void
.end method

.method public initEpc(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0901b3

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_btn:Landroid/widget/Button;

    const v0, 0x7f0901b1

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_area:Landroid/widget/Spinner;

    const v0, 0x7f0901b5

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_content:Landroid/widget/EditText;

    const v0, 0x7f0901b6

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_start:Landroid/widget/EditText;

    const v0, 0x7f0901b2

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_block:Landroid/widget/EditText;

    const v0, 0x7f0901b4

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_check:Landroid/widget/CheckBox;

    const v0, 0x7f0901d4

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->wave:Landroid/widget/CheckBox;

    return-void
.end method

.method public initGJb(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09006c

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gjb_area:Landroid/widget/Spinner;

    const v0, 0x7f090077

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gjb_start:Landroid/widget/EditText;

    const v0, 0x7f09006d

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gjb_content:Landroid/widget/EditText;

    const v0, 0x7f090078

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gjb_write_event:Landroid/widget/Button;

    return-void
.end method

.method public initGb(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090060

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gb_area:Landroid/widget/Spinner;

    const v0, 0x7f09006a

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gb_start:Landroid/widget/EditText;

    const v0, 0x7f090061

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gb_content:Landroid/widget/EditText;

    const v0, 0x7f09006b

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gb_write_event:Landroid/widget/Button;

    const v0, 0x7f0900db

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->gbWave:Landroid/widget/CheckBox;

    return-void
.end method

.method public initGbListener()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gb_area:Landroid/widget/Spinner;

    new-instance v1, Lcom/example/rederdemo/fragment/WriteFragment$6;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/fragment/WriteFragment$6;-><init>(Lcom/example/rederdemo/fragment/WriteFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public initListener()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_area:Landroid/widget/Spinner;

    new-instance v1, Lcom/example/rederdemo/fragment/WriteFragment$5;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/fragment/WriteFragment$5;-><init>(Lcom/example/rederdemo/fragment/WriteFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 63
    iget p3, p0, Lcom/example/rederdemo/fragment/WriteFragment;->tagType:I

    const/4 v0, 0x0

    const v1, 0x7f090041

    if-ne p3, v1, :cond_0

    const p3, 0x7f0c0058

    .line 64
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->view:Landroid/view/View;

    .line 65
    invoke-virtual {p0, p1}, Lcom/example/rederdemo/fragment/WriteFragment;->initEpc(Landroid/view/View;)V

    .line 66
    invoke-virtual {p0}, Lcom/example/rederdemo/fragment/WriteFragment;->initListener()V

    .line 67
    iget-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_btn:Landroid/widget/Button;

    new-instance p2, Lcom/example/rederdemo/fragment/WriteFragment$1;

    invoke-direct {p2, p0}, Lcom/example/rederdemo/fragment/WriteFragment$1;-><init>(Lcom/example/rederdemo/fragment/WriteFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f090031

    if-ne p3, v1, :cond_1

    const p3, 0x7f0c0057

    .line 74
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->view:Landroid/view/View;

    .line 75
    invoke-virtual {p0, p1}, Lcom/example/rederdemo/fragment/WriteFragment;->init6b(Landroid/view/View;)V

    .line 76
    iget-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_6b_write_event:Landroid/widget/Button;

    new-instance p2, Lcom/example/rederdemo/fragment/WriteFragment$2;

    invoke-direct {p2, p0}, Lcom/example/rederdemo/fragment/WriteFragment$2;-><init>(Lcom/example/rederdemo/fragment/WriteFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0900da

    if-ne p3, v1, :cond_2

    const p3, 0x7f0c005c

    .line 83
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->view:Landroid/view/View;

    .line 84
    invoke-virtual {p0, p1}, Lcom/example/rederdemo/fragment/WriteFragment;->initGb(Landroid/view/View;)V

    .line 85
    iget-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gb_write_event:Landroid/widget/Button;

    new-instance p2, Lcom/example/rederdemo/fragment/WriteFragment$3;

    invoke-direct {p2, p0}, Lcom/example/rederdemo/fragment/WriteFragment$3;-><init>(Lcom/example/rederdemo/fragment/WriteFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0900dd

    if-ne p3, v1, :cond_3

    const p3, 0x7f0c005d

    .line 92
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->view:Landroid/view/View;

    .line 93
    invoke-virtual {p0, p1}, Lcom/example/rederdemo/fragment/WriteFragment;->initGJb(Landroid/view/View;)V

    .line 94
    iget-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gjb_write_event:Landroid/widget/Button;

    new-instance p2, Lcom/example/rederdemo/fragment/WriteFragment$4;

    invoke-direct {p2, p0}, Lcom/example/rederdemo/fragment/WriteFragment$4;-><init>(Lcom/example/rederdemo/fragment/WriteFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 102
    iget-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public receiveListener([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 426
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 427
    iput-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->listener:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public receiveTag(Lcom/example/rederdemo/entity/TagInfo;JI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 417
    iput-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    .line 418
    iput-wide p2, p0, Lcom/example/rederdemo/fragment/WriteFragment;->ant:J

    .line 419
    iput p4, p0, Lcom/example/rederdemo/fragment/WriteFragment;->tagType:I

    :cond_0
    return-void
.end method

.method public write6b()V
    .locals 4

    .line 212
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;-><init>()V

    .line 213
    iget-wide v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->ant:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->setAntennaEnable(Ljava/lang/Long;)V

    .line 214
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->setHexMatchTid(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_6b_start:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 217
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->setStart(I)V

    .line 219
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_6b_content:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "The write cannot be empty"

    .line 221
    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_6b_content:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/example/rederdemo/util/ComputedPc;->getEPCLength(Landroid/widget/EditText;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    const/16 v3, 0x30

    .line 225
    invoke-static {v1, v2, v3}, Lcom/example/rederdemo/util/DataUtils;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->setHexWriteData(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 229
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void
.end method

.method public writeEpc()V
    .locals 9

    .line 140
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;-><init>()V

    .line 141
    iget-wide v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->ant:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 142
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_area:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x30

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v5, v1, :cond_2

    .line 145
    invoke-virtual {v0, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setArea(I)V

    .line 147
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_start:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setStart(I)V

    .line 149
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_content:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "The write cannot be empty"

    .line 151
    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_0
    iget-object v6, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_content:Landroid/widget/EditText;

    invoke-static {v6}, Lcom/example/rederdemo/util/ComputedPc;->getEPCLength(Landroid/widget/EditText;)I

    move-result v6

    .line 155
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getStart()I

    move-result v7

    if-ne v7, v5, :cond_1

    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/example/rederdemo/util/ComputedPc;->getPc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v1, v6, v3}, Lcom/example/rederdemo/util/DataUtils;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v1, v6, v3}, Lcom/example/rederdemo/util/DataUtils;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    .line 160
    :goto_0
    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 161
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexWriteData(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v6, 0x3

    if-nez v1, :cond_3

    .line 165
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setArea(I)V

    goto :goto_1

    :cond_3
    if-ne v4, v1, :cond_4

    .line 167
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setArea(I)V

    goto :goto_1

    :cond_4
    if-ne v6, v1, :cond_5

    .line 169
    invoke-virtual {v0, v6}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setArea(I)V

    .line 172
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_start:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 173
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setStart(I)V

    .line 175
    iget-object v7, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_content:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    if-ne v6, v1, :cond_6

    .line 178
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_content:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/example/rederdemo/util/ComputedPc;->getEPCLength(Landroid/widget/EditText;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 179
    invoke-static {v7, v1, v3}, Lcom/example/rederdemo/util/DataUtils;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexWriteData(Ljava/lang/String;)V

    goto :goto_2

    .line 182
    :cond_6
    invoke-virtual {v0, v7}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexWriteData(Ljava/lang/String;)V

    .line 188
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v6}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v3, v6}, Lcom/example/rederdemo/fragment/WriteFragment;->getFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 190
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 193
    :cond_8
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->listener:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexPassword(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->wave:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 197
    invoke-virtual {v0, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setStayCarrierWave(I)V

    .line 201
    :cond_9
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_check:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 202
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_block:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_a

    const/4 v2, 0x1

    :cond_a
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setBlock(I)V

    .line 206
    :cond_b
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 207
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void
.end method

.method public writeGJb()V
    .locals 8

    .line 297
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;-><init>()V

    .line 298
    iget-wide v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->ant:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setAntennaEnable(Ljava/lang/Long;)V

    .line 299
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gjb_area:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 301
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setArea(I)V

    goto :goto_0

    :cond_0
    if-ne v1, v4, :cond_1

    .line 303
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setArea(I)V

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setArea(I)V

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gjb_start:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setStart(I)V

    .line 308
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->listener:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    .line 310
    new-instance v6, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v6}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    const-string v7, ""

    if-ne v1, v4, :cond_3

    .line 312
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u5339\u914dtid\u4e3a\u7a7a"

    .line 313
    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void

    .line 316
    :cond_2
    invoke-virtual {v6, v5}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 317
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto/16 :goto_1

    :cond_3
    const-string v5, "\u5339\u914depc\u4e3a\u7a7a"

    if-ne v1, v3, :cond_5

    .line 320
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 321
    invoke-static {v5}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void

    .line 324
    :cond_4
    invoke-virtual {v6, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 325
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_1

    :cond_5
    if-ne v1, v2, :cond_6

    .line 328
    invoke-virtual {v6, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 329
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_1

    .line 332
    :cond_6
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 333
    invoke-static {v5}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void

    .line 336
    :cond_7
    invoke-virtual {v6, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 337
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 340
    :goto_1
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->listener:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 341
    invoke-virtual {v0, v6}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 344
    :cond_8
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->listener:[Ljava/lang/String;

    aget-object v1, v1, v3

    .line 345
    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 346
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setHexPassword(Ljava/lang/String;)V

    .line 349
    :cond_9
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gjb_content:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    iget-object v2, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gjb_content:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/example/rederdemo/util/ComputedPc;->getEPCLength(Landroid/widget/EditText;)I

    move-result v2

    .line 351
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->getArea()I

    move-result v3

    const/16 v5, 0x30

    if-ne v3, v4, :cond_a

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->getStart()I

    move-result v3

    if-nez v3, :cond_a

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/example/rederdemo/util/ComputedPc;->getGbPc(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2, v5}, Lcom/example/rederdemo/util/DataUtils;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 354
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2, v5}, Lcom/example/rederdemo/util/DataUtils;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    .line 356
    :goto_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setHexWriteData(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 360
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void
.end method

.method public writeGb()V
    .locals 9

    .line 234
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;-><init>()V

    .line 235
    iget-wide v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->ant:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setAntennaEnable(Ljava/lang/Long;)V

    .line 236
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gb_area:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/16 v2, 0x20

    const/4 v3, 0x2

    const/16 v4, 0x10

    const/16 v5, 0x30

    const/4 v6, 0x1

    if-nez v1, :cond_0

    .line 238
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setArea(I)V

    goto :goto_0

    :cond_0
    if-ne v1, v6, :cond_1

    .line 240
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setArea(I)V

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v3

    add-int/2addr v1, v5

    .line 242
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setArea(I)V

    .line 244
    :goto_0
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gb_start:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setStart(I)V

    .line 245
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->listener:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 247
    new-instance v8, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v8}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    if-ne v1, v6, :cond_2

    .line 249
    invoke-virtual {v8, v7}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 250
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    .line 253
    invoke-virtual {v8, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 254
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_1

    :cond_3
    const/4 v7, 0x3

    if-ne v1, v7, :cond_4

    .line 257
    invoke-virtual {v8, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 258
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x4

    add-int/2addr v1, v5

    .line 261
    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 262
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 265
    :goto_1
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->listener:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 266
    invoke-virtual {v0, v8}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 269
    :cond_5
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->listener:[Ljava/lang/String;

    aget-object v1, v1, v3

    .line 270
    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 271
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setHexPassword(Ljava/lang/String;)V

    .line 275
    :cond_6
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->gbWave:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 276
    invoke-virtual {v0, v6}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setStayCarrierWave(I)V

    .line 281
    :cond_7
    iget-object v1, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gb_content:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    iget-object v2, p0, Lcom/example/rederdemo/fragment/WriteFragment;->cus_gb_content:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/example/rederdemo/util/ComputedPc;->getEPCLength(Landroid/widget/EditText;)I

    move-result v2

    .line 283
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->getArea()I

    move-result v3

    if-ne v3, v4, :cond_8

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->getStart()I

    move-result v3

    if-nez v3, :cond_8

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/example/rederdemo/util/ComputedPc;->getGbPc(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2, v5}, Lcom/example/rederdemo/util/DataUtils;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 286
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2, v5}, Lcom/example/rederdemo/util/DataUtils;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    .line 288
    :goto_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->setHexWriteData(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 292
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGb;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void
.end method
