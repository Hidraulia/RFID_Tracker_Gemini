.class public Lcom/example/rederdemo/adapter/FrequencyBandAdapter;
.super Landroid/widget/BaseAdapter;
.source "FrequencyBandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/example/rederdemo/entity/FrequencyBandInfo;",
            ">;"
        }
    .end annotation
.end field

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/rederdemo/entity/FrequencyBandInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;->map:Ljava/util/HashMap;

    .line 23
    iput-object p1, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;->list:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 54
    iget-object p2, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;->context:Landroid/content/Context;

    const p3, 0x7f0c0037

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    new-instance p3, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;-><init>(Lcom/example/rederdemo/adapter/FrequencyBandAdapter;)V

    const v0, 0x7f09017d

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f090046

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p3, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 58
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;

    .line 62
    :goto_0
    iget-object v0, p3, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p3, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->isCheck()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 64
    new-instance v0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$1;-><init>(Lcom/example/rederdemo/adapter/FrequencyBandAdapter;Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;->map:Ljava/util/HashMap;

    return-void
.end method
