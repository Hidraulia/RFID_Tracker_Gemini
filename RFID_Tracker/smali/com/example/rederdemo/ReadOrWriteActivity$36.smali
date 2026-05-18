.class Lcom/example/rederdemo/ReadOrWriteActivity$36;
.super Ljava/lang/Object;
.source "ReadOrWriteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/ReadOrWriteActivity;->cusRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/ReadOrWriteActivity;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V
    .locals 0

    .line 1933
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$36;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

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

    .line 1936
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$36;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p1, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gjb_read_mode:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 1937
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$36;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p1, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_gjb_start:Landroid/widget/EditText;

    const-string p2, "16"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1939
    :cond_0
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$36;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p1, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_gjb_start:Landroid/widget/EditText;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

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
