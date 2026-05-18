.class Lme/weyye/hipermission/PermissionActivity$1;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/weyye/hipermission/PermissionActivity;->showPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/weyye/hipermission/PermissionActivity;


# direct methods
.method constructor <init>(Lme/weyye/hipermission/PermissionActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lme/weyye/hipermission/PermissionActivity$1;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 109
    iget-object p1, p0, Lme/weyye/hipermission/PermissionActivity$1;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-static {p1}, Lme/weyye/hipermission/PermissionActivity;->access$000(Lme/weyye/hipermission/PermissionActivity;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lme/weyye/hipermission/PermissionActivity$1;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-static {p1}, Lme/weyye/hipermission/PermissionActivity;->access$000(Lme/weyye/hipermission/PermissionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lme/weyye/hipermission/PermissionActivity$1;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-static {p1}, Lme/weyye/hipermission/PermissionActivity;->access$000(Lme/weyye/hipermission/PermissionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 111
    :cond_0
    iget-object p1, p0, Lme/weyye/hipermission/PermissionActivity$1;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-static {p1}, Lme/weyye/hipermission/PermissionActivity;->access$100(Lme/weyye/hipermission/PermissionActivity;)[Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity$1;->this$0:Lme/weyye/hipermission/PermissionActivity;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
