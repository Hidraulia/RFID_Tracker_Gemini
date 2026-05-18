.class public Lcom/example/rederdemo/DialogCusActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DialogCusActivity.java"


# instance fields
.field adapter:Lcom/example/rederdemo/adapter/PageCusAdapter;

.field ant:J

.field cus_6c_mode:Landroid/widget/Spinner;

.field cus_epc:Landroid/widget/EditText;

.field cus_pas:Landroid/widget/EditText;

.field cus_start:Landroid/widget/EditText;

.field cus_tid:Landroid/widget/EditText;

.field cus_title:Landroid/widget/TextView;

.field cus_user:Landroid/widget/EditText;

.field listener:[Ljava/lang/String;

.field pager:Landroid/support/v4/view/ViewPager;

.field tab:Landroid/support/design/widget/TabLayout;

.field tag:Lcom/example/rederdemo/entity/TagInfo;

.field tagType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/example/rederdemo/DialogCusActivity;->tag:Lcom/example/rederdemo/entity/TagInfo;

    .line 59
    iput-object v0, p0, Lcom/example/rederdemo/DialogCusActivity;->adapter:Lcom/example/rederdemo/adapter/PageCusAdapter;

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/example/rederdemo/DialogCusActivity;->ant:J

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/example/rederdemo/DialogCusActivity;->listener:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/example/rederdemo/DialogCusActivity;->tagType:I

    return-void
.end method


# virtual methods
.method public addListener()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/example/rederdemo/DialogCusActivity;->cus_6c_mode:Landroid/widget/Spinner;

    new-instance v1, Lcom/example/rederdemo/DialogCusActivity$1;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/DialogCusActivity$1;-><init>(Lcom/example/rederdemo/DialogCusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 155
    iget-object v0, p0, Lcom/example/rederdemo/DialogCusActivity;->cus_start:Landroid/widget/EditText;

    new-instance v1, Lcom/example/rederdemo/DialogCusActivity$2;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/DialogCusActivity$2;-><init>(Lcom/example/rederdemo/DialogCusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    iget-object v0, p0, Lcom/example/rederdemo/DialogCusActivity;->cus_pas:Landroid/widget/EditText;

    new-instance v1, Lcom/example/rederdemo/DialogCusActivity$3;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/DialogCusActivity$3;-><init>(Lcom/example/rederdemo/DialogCusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 66
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0059

    .line 67
    invoke-virtual {p0, p1}, Lcom/example/rederdemo/DialogCusActivity;->setContentView(I)V

    .line 68
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 69
    new-instance p1, Lcom/example/rederdemo/adapter/PageCusAdapter;

    invoke-virtual {p0}, Lcom/example/rederdemo/DialogCusActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/example/rederdemo/adapter/PageCusAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p1, p0, Lcom/example/rederdemo/DialogCusActivity;->adapter:Lcom/example/rederdemo/adapter/PageCusAdapter;

    .line 70
    iget-object v0, p0, Lcom/example/rederdemo/DialogCusActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 71
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity;->tab:Landroid/support/design/widget/TabLayout;

    iget-object v0, p0, Lcom/example/rederdemo/DialogCusActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 72
    invoke-virtual {p0}, Lcom/example/rederdemo/DialogCusActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/example/rederdemo/entity/TagInfo;

    iput-object p1, p0, Lcom/example/rederdemo/DialogCusActivity;->tag:Lcom/example/rederdemo/entity/TagInfo;

    .line 73
    invoke-virtual {p0}, Lcom/example/rederdemo/DialogCusActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Ant"

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/example/rederdemo/DialogCusActivity;->ant:J

    .line 74
    invoke-virtual {p0}, Lcom/example/rederdemo/DialogCusActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f090041

    const-string v1, "Type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/example/rederdemo/DialogCusActivity;->tagType:I

    const v1, 0x1090003

    if-ne p1, v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/example/rederdemo/DialogCusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030013

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 77
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity;->cus_6c_mode:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f090031

    if-ne p1, v0, :cond_1

    .line 80
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity;->cus_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/example/rederdemo/DialogCusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0900da

    if-ne p1, v0, :cond_2

    .line 82
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity;->cus_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/example/rederdemo/DialogCusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1000ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcom/example/rederdemo/DialogCusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03000c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 84
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity;->cus_6c_mode:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0900dd

    if-ne p1, v0, :cond_3

    .line 87
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity;->cus_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/example/rederdemo/DialogCusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1000f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Lcom/example/rederdemo/DialogCusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030011

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 90
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity;->cus_6c_mode:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 92
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity;->cus_epc:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/example/rederdemo/DialogCusActivity;->tag:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity;->cus_tid:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/example/rederdemo/DialogCusActivity;->tag:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity;->cus_user:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/example/rederdemo/DialogCusActivity;->tag:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity;->adapter:Lcom/example/rederdemo/adapter/PageCusAdapter;

    invoke-virtual {p1}, Lcom/example/rederdemo/adapter/PageCusAdapter;->getFragments()Ljava/util/List;

    move-result-object p1

    iget-wide v0, p0, Lcom/example/rederdemo/DialogCusActivity;->ant:J

    iget v2, p0, Lcom/example/rederdemo/DialogCusActivity;->tagType:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/example/rederdemo/DialogCusActivity;->sendTag(Ljava/util/List;JI)V

    .line 96
    invoke-virtual {p0}, Lcom/example/rederdemo/DialogCusActivity;->addListener()V

    return-void
.end method

.method public sendMessage(Ljava/util/List;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 115
    instance-of v1, v0, Lcom/example/rederdemo/fragment/WriteFragment;

    if-eqz v1, :cond_1

    .line 116
    check-cast v0, Lcom/example/rederdemo/fragment/WriteFragment;

    invoke-virtual {v0, p2}, Lcom/example/rederdemo/fragment/WriteFragment;->receiveListener([Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    instance-of v1, v0, Lcom/example/rederdemo/fragment/LockFragment;

    if-eqz v1, :cond_2

    .line 118
    check-cast v0, Lcom/example/rederdemo/fragment/LockFragment;

    invoke-virtual {v0, p2}, Lcom/example/rederdemo/fragment/LockFragment;->receiveListener([Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    instance-of v1, v0, Lcom/example/rederdemo/fragment/DestroyFragment;

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, Lcom/example/rederdemo/fragment/DestroyFragment;

    invoke-virtual {v0, p2}, Lcom/example/rederdemo/fragment/DestroyFragment;->receiveListener([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public sendTag(Ljava/util/List;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;JI)V"
        }
    .end annotation

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 102
    instance-of v1, v0, Lcom/example/rederdemo/fragment/WriteFragment;

    if-eqz v1, :cond_1

    .line 103
    check-cast v0, Lcom/example/rederdemo/fragment/WriteFragment;

    iget-object v1, p0, Lcom/example/rederdemo/DialogCusActivity;->tag:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/example/rederdemo/fragment/WriteFragment;->receiveTag(Lcom/example/rederdemo/entity/TagInfo;JI)V

    goto :goto_0

    .line 104
    :cond_1
    instance-of v1, v0, Lcom/example/rederdemo/fragment/LockFragment;

    if-eqz v1, :cond_2

    .line 105
    check-cast v0, Lcom/example/rederdemo/fragment/LockFragment;

    iget-object v1, p0, Lcom/example/rederdemo/DialogCusActivity;->tag:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/example/rederdemo/fragment/LockFragment;->receiveTag(Lcom/example/rederdemo/entity/TagInfo;JI)V

    goto :goto_0

    .line 106
    :cond_2
    instance-of v1, v0, Lcom/example/rederdemo/fragment/DestroyFragment;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcom/example/rederdemo/fragment/DestroyFragment;

    iget-object v1, p0, Lcom/example/rederdemo/DialogCusActivity;->tag:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/example/rederdemo/fragment/DestroyFragment;->receiveTag(Lcom/example/rederdemo/entity/TagInfo;JI)V

    goto :goto_0

    :cond_3
    return-void
.end method
