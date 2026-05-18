.class Lcc/trity/floatingactionbutton/FloatingActionsMenu$2;
.super Ljava/lang/Object;
.source "FloatingActionsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/trity/floatingactionbutton/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;


# direct methods
.method constructor <init>(Lcc/trity/floatingactionbutton/FloatingActionsMenu;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$2;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 192
    iget-object p1, p0, Lcc/trity/floatingactionbutton/FloatingActionsMenu$2;->this$0:Lcc/trity/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {p1}, Lcc/trity/floatingactionbutton/FloatingActionsMenu;->toggle()V

    return-void
.end method
