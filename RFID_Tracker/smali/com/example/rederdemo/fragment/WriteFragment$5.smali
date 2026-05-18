.class Lcom/example/rederdemo/fragment/WriteFragment$5;
.super Ljava/lang/Object;
.source "WriteFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/fragment/WriteFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/fragment/WriteFragment;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/fragment/WriteFragment;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment$5;->this$0:Lcom/example/rederdemo/fragment/WriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 437
    iget-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment$5;->this$0:Lcom/example/rederdemo/fragment/WriteFragment;

    iget p1, p1, Lcom/example/rederdemo/fragment/WriteFragment;->tagType:I

    const p2, 0x7f090041

    if-ne p1, p2, :cond_2

    if-nez p3, :cond_0

    .line 439
    iget-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment$5;->this$0:Lcom/example/rederdemo/fragment/WriteFragment;

    iget-object p1, p1, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_start:Landroid/widget/EditText;

    const-string p2, "2"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    .line 441
    iget-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment$5;->this$0:Lcom/example/rederdemo/fragment/WriteFragment;

    iget-object p1, p1, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_start:Landroid/widget/EditText;

    const-string p2, "1"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 443
    :cond_1
    iget-object p1, p0, Lcom/example/rederdemo/fragment/WriteFragment$5;->this$0:Lcom/example/rederdemo/fragment/WriteFragment;

    iget-object p1, p1, Lcom/example/rederdemo/fragment/WriteFragment;->w_f_start:Landroid/widget/EditText;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
