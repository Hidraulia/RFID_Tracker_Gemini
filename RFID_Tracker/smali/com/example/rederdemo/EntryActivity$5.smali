.class Lcom/example/rederdemo/EntryActivity$5;
.super Ljava/lang/Object;
.source "EntryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/EntryActivity;->setConnect_param(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/EntryActivity;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/EntryActivity;Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/example/rederdemo/EntryActivity$5;->this$0:Lcom/example/rederdemo/EntryActivity;

    iput-object p2, p0, Lcom/example/rederdemo/EntryActivity$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity$5;->this$0:Lcom/example/rederdemo/EntryActivity;

    invoke-static {v0}, Lcom/example/rederdemo/EntryActivity;->access$000(Lcom/example/rederdemo/EntryActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity$5;->this$0:Lcom/example/rederdemo/EntryActivity;

    iget-object v0, v0, Lcom/example/rederdemo/EntryActivity;->connect_param:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/example/rederdemo/EntryActivity$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity$5;->this$0:Lcom/example/rederdemo/EntryActivity;

    iget-object v0, v0, Lcom/example/rederdemo/EntryActivity;->connect_param:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/EntryActivity$5;->this$0:Lcom/example/rederdemo/EntryActivity;

    invoke-virtual {v1}, Lcom/example/rederdemo/EntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f060000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity$5;->this$0:Lcom/example/rederdemo/EntryActivity;

    iget-object v0, v0, Lcom/example/rederdemo/EntryActivity;->connect_param:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/example/rederdemo/EntryActivity$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity$5;->this$0:Lcom/example/rederdemo/EntryActivity;

    iget-object v0, v0, Lcom/example/rederdemo/EntryActivity;->connect_param:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/EntryActivity$5;->this$0:Lcom/example/rederdemo/EntryActivity;

    invoke-virtual {v1}, Lcom/example/rederdemo/EntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
