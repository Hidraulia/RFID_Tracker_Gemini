.class Lcom/example/rederdemo/DialogCusActivity$3;
.super Ljava/lang/Object;
.source "DialogCusActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 172
    iput-object p1, p0, Lcom/example/rederdemo/DialogCusActivity$3;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 179
    iget-object p2, p0, Lcom/example/rederdemo/DialogCusActivity$3;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget-object p2, p2, Lcom/example/rederdemo/DialogCusActivity;->listener:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, p2, p3

    .line 180
    iget-object p1, p0, Lcom/example/rederdemo/DialogCusActivity$3;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget-object p2, p1, Lcom/example/rederdemo/DialogCusActivity;->adapter:Lcom/example/rederdemo/adapter/PageCusAdapter;

    invoke-virtual {p2}, Lcom/example/rederdemo/adapter/PageCusAdapter;->getFragments()Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/example/rederdemo/DialogCusActivity$3;->this$0:Lcom/example/rederdemo/DialogCusActivity;

    iget-object p3, p3, Lcom/example/rederdemo/DialogCusActivity;->listener:[Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/example/rederdemo/DialogCusActivity;->sendMessage(Ljava/util/List;[Ljava/lang/String;)V

    return-void
.end method
