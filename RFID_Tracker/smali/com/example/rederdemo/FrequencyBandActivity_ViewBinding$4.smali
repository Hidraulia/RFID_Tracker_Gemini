.class Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FrequencyBandActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;-><init>(Lcom/example/rederdemo/FrequencyBandActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;

.field final synthetic val$target:Lcom/example/rederdemo/FrequencyBandActivity;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;Lcom/example/rederdemo/FrequencyBandActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$4;->this$0:Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding;

    iput-object p2, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$4;->val$target:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/example/rederdemo/FrequencyBandActivity_ViewBinding$4;->val$target:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-virtual {p1}, Lcom/example/rederdemo/FrequencyBandActivity;->left_left_move()V

    return-void
.end method
