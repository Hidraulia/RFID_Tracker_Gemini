.class Lcom/example/rederdemo/ReadOrWriteActivity$15;
.super Ljava/lang/Object;
.source "ReadOrWriteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/ReadOrWriteActivity;->writeEPC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

.field final synthetic val$dialog:Landroid/support/v7/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/ReadOrWriteActivity;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$15;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iput-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$15;->val$dialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1043
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$15;->val$dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->cancel()V

    return-void
.end method
