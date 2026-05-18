.class Lcom/example/rederdemo/DialogCusActivity$1;
.super Ljava/lang/Object;
.source "DialogCusActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/DialogCusActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/DialogCusActivity;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/DialogCusActivity;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/example/rederdemo/DialogCusActivity$1;->this$0:Lcom/example/rederdemo/DialogCusActivity;

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

    .line 132
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity$1;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget-object p1, p1, Lcom/example/rederdemo/DialogCusActivity;->listener:[Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 133
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity$1;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget p1, p1, Lcom/example/rederdemo/DialogCusActivity;->tagType:I

    const-string p2, "0"

    const p4, 0x7f090041

    if-ne p1, p4, :cond_1

    .line 134
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity$1;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget-object p1, p1, Lcom/example/rederdemo/DialogCusActivity;->listener:[Ljava/lang/String;

    aget-object p1, p1, p3

    const-string p3, "1"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity$1;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget-object p1, p1, Lcom/example/rederdemo/DialogCusActivity;->cus_start:Landroid/widget/EditText;

    const-string p2, "32"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity$1;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget-object p1, p1, Lcom/example/rederdemo/DialogCusActivity;->cus_start:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity$1;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget p1, p1, Lcom/example/rederdemo/DialogCusActivity;->tagType:I

    const p4, 0x7f0900dd

    if-eq p1, p4, :cond_2

    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity$1;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget p1, p1, Lcom/example/rederdemo/DialogCusActivity;->tagType:I

    const p4, 0x7f0900da

    if-ne p1, p4, :cond_4

    .line 140
    :cond_2
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity$1;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget-object p1, p1, Lcom/example/rederdemo/DialogCusActivity;->listener:[Ljava/lang/String;

    aget-object p1, p1, p3

    const-string p3, "2"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 141
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity$1;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget-object p1, p1, Lcom/example/rederdemo/DialogCusActivity;->cus_start:Landroid/widget/EditText;

    const-string p2, "16"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_3
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity$1;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget-object p1, p1, Lcom/example/rederdemo/DialogCusActivity;->cus_start:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity$1;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget-object p2, p1, Lcom/example/rederdemo/DialogCusActivity;->adapter:Lcom/example/rederdemo/adapter/PageCusAdapter;

    invoke-virtual {p2}, Lcom/example/rederdemo/adapter/PageCusAdapter;->getFragments()Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/example/rederdemo/DialogCusActivity$1;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget-object p3, p3, Lcom/example/rederdemo/DialogCusActivity;->listener:[Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/example/rederdemo/DialogCusActivity;->sendMessage(Ljava/util/List;[Ljava/lang/String;)V

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
