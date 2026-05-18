.class Lcom/example/rederdemo/ReadOrWriteActivity$31;
.super Ljava/lang/Object;
.source "ReadOrWriteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/ReadOrWriteActivity;->initCusRead(Landroid/view/View;)V
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

    .line 1585
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$31;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

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

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 1589
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$31;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p1, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_start:Landroid/widget/EditText;

    const-string p2, "32"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1591
    :cond_0
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$31;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object p1, p1, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_start:Landroid/widget/EditText;

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
