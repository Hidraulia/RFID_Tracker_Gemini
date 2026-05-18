.class Lme/weyye/hipermission/PermissionActivity$3;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/weyye/hipermission/PermissionActivity;->reRequestPermission(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/weyye/hipermission/PermissionActivity;

.field final synthetic val$permission:Ljava/lang/String;


# direct methods
.method constructor <init>(Lme/weyye/hipermission/PermissionActivity;Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lme/weyye/hipermission/PermissionActivity$3;->this$0:Lme/weyye/hipermission/PermissionActivity;

    iput-object p2, p0, Lme/weyye/hipermission/PermissionActivity$3;->val$permission:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 143
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 144
    iget-object p1, p0, Lme/weyye/hipermission/PermissionActivity$3;->this$0:Lme/weyye/hipermission/PermissionActivity;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity$3;->val$permission:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Lme/weyye/hipermission/PermissionActivity;->access$300(Lme/weyye/hipermission/PermissionActivity;[Ljava/lang/String;I)V

    return-void
.end method
