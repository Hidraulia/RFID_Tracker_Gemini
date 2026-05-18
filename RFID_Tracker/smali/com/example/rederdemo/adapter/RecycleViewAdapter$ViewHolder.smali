.class Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/rederdemo/adapter/RecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field count:Landroid/widget/TextView;

.field epc:Landroid/widget/TextView;

.field index:Landroid/widget/TextView;

.field reserveData:Landroid/widget/TextView;

.field rssi:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

.field tid:Landroid/widget/TextView;

.field type:Landroid/widget/TextView;

.field userData:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/example/rederdemo/adapter/RecycleViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->this$0:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    .line 42
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900e9

    .line 43
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->index:Landroid/widget/TextView;

    const p1, 0x7f09019e

    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->type:Landroid/widget/TextView;

    const p1, 0x7f0900ad

    .line 45
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->epc:Landroid/widget/TextView;

    const p1, 0x7f09018e

    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->tid:Landroid/widget/TextView;

    const p1, 0x7f09013a

    .line 47
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->rssi:Landroid/widget/TextView;

    const p1, 0x7f090052

    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->count:Landroid/widget/TextView;

    const p1, 0x7f0901a9

    .line 49
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->userData:Landroid/widget/TextView;

    const p1, 0x7f09012e

    .line 50
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->reserveData:Landroid/widget/TextView;

    return-void
.end method
