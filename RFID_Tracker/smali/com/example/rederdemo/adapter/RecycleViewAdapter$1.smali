.class Lcom/example/rederdemo/adapter/RecycleViewAdapter$1;
.super Ljava/lang/Object;
.source "RecycleViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/adapter/RecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

.field final synthetic val$holder:Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/adapter/RecycleViewAdapter;Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$1;->this$0:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    iput-object p2, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$1;->val$holder:Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$1;->this$0:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-static {p1}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->access$000(Lcom/example/rederdemo/adapter/RecycleViewAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$1;->val$holder:Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/rederdemo/entity/TagInfo;

    .line 66
    iget-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$1;->this$0:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    iget-object v0, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$1;->val$holder:Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/example/rederdemo/adapter/RecycleViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->setThisPosition(Ljava/lang/Integer;)V

    .line 67
    iget-object p1, p0, Lcom/example/rederdemo/adapter/RecycleViewAdapter$1;->this$0:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {p1}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
