.class Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$6;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RfidConfigActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;-><init>(Lcom/example/rederdemo/entity/RfidConfigActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;

.field final synthetic val$target:Lcom/example/rederdemo/entity/RfidConfigActivity;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;Lcom/example/rederdemo/entity/RfidConfigActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$6;->this$0:Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding;

    iput-object p2, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$6;->val$target:Lcom/example/rederdemo/entity/RfidConfigActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity_ViewBinding$6;->val$target:Lcom/example/rederdemo/entity/RfidConfigActivity;

    invoke-virtual {p1}, Lcom/example/rederdemo/entity/RfidConfigActivity;->frequencyConfig()V

    return-void
.end method
