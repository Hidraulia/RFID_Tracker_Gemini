.class Lcom/example/rederdemo/adapter/FrequencyBandAdapter$1;
.super Ljava/lang/Object;
.source "FrequencyBandAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/adapter/FrequencyBandAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

.field final synthetic val$position:I

.field final synthetic val$viewHolder:Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/adapter/FrequencyBandAdapter;Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;I)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$1;->this$0:Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    iput-object p2, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$1;->val$viewHolder:Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;

    iput p3, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$1;->val$viewHolder:Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;

    iget-object p1, p1, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    .line 77
    iget-object p1, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$1;->val$viewHolder:Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;

    iget-object p1, p1, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$1;->this$0:Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    iget-object p1, p1, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;->list:Ljava/util/List;

    iget v0, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->setCheck(Z)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$1;->this$0:Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    iget-object p1, p1, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;->list:Ljava/util/List;

    iget v0, p0, Lcom/example/rederdemo/adapter/FrequencyBandAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->setCheck(Z)V

    :goto_0
    return-void
.end method
