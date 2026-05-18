.class public Lcom/example/rederdemo/adapter/RecycleViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/example/rederdemo/entity/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field private thisPosition:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/rederdemo/entity/TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->thisPosition:Ljava/lang/Integer;

    .line 55
    iput-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->mTagList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/example/rederdemo/adapter/RecycleViewAdapter;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->mTagList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->mTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getThisPosition()Ljava/lang/Integer;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->thisPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->onBindViewHolder(Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;I)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->mTagList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/rederdemo/entity/TagInfo;

    .line 77
    iget-object v1, p1, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->index:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getIndex()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p1, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->type:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p1, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->userData:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p1, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->reserveData:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getReservedData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p1, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->epc:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p1, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->tid:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p1, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->rssi:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getRssi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p1, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->count:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/rederdemo/entity/TagInfo;->getCount()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p0}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 87
    iget-object p1, p1, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/16 p2, 0x87

    const/16 v0, 0xce

    const/16 v1, 0xeb

    invoke-static {p2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p1, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;
    .locals 2

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0049

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;-><init>(Lcom/example/rederdemo/adapter/RecycleViewAdapter;Landroid/view/View;)V

    .line 62
    new-instance v0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter$1;-><init>(Lcom/example/rederdemo/adapter/RecycleViewAdapter;Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setThisPosition(Ljava/lang/Integer;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->thisPosition:Ljava/lang/Integer;

    return-void
.end method
