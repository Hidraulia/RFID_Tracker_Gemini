.class public Lcom/example/rederdemo/adapter/PageCusAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "PageCusAdapter.java"


# instance fields
.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->mTitle:Ljava/util/List;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->fragments:Ljava/util/List;

    .line 22
    iget-object p1, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->mTitle:Ljava/util/List;

    const-string v0, "Write"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->mTitle:Ljava/util/List;

    const-string v0, "Lock"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p1, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->mTitle:Ljava/util/List;

    const-string v0, "Destroy"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object p1, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->fragments:Ljava/util/List;

    new-instance v0, Lcom/example/rederdemo/fragment/WriteFragment;

    invoke-direct {v0}, Lcom/example/rederdemo/fragment/WriteFragment;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p1, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->fragments:Ljava/util/List;

    new-instance v0, Lcom/example/rederdemo/fragment/LockFragment;

    invoke-direct {v0}, Lcom/example/rederdemo/fragment/LockFragment;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->fragments:Ljava/util/List;

    new-instance v0, Lcom/example/rederdemo/fragment/DestroyFragment;

    invoke-direct {v0}, Lcom/example/rederdemo/fragment/DestroyFragment;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p0}, Lcom/example/rederdemo/adapter/PageCusAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->fragments:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->mTitle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public getmTitle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->mTitle:Ljava/util/List;

    return-object v0
.end method

.method public setFragments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->fragments:Ljava/util/List;

    return-void
.end method

.method public setmTitle(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/example/rederdemo/adapter/PageCusAdapter;->mTitle:Ljava/util/List;

    return-void
.end method
