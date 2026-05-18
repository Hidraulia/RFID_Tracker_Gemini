.class Lme/weyye/hipermission/PermissionActivity$5;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/weyye/hipermission/PermissionActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
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

    .line 235
    iput-object p1, p0, Lme/weyye/hipermission/PermissionActivity$5;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 239
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "package:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lme/weyye/hipermission/PermissionActivity$5;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-virtual {p2}, Lme/weyye/hipermission/PermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 240
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 241
    iget-object p1, p0, Lme/weyye/hipermission/PermissionActivity$5;->this$0:Lme/weyye/hipermission/PermissionActivity;

    const/16 v0, 0x6e

    invoke-virtual {p1, p2, v0}, Lme/weyye/hipermission/PermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    iget-object p1, p0, Lme/weyye/hipermission/PermissionActivity$5;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-static {p1}, Lme/weyye/hipermission/PermissionActivity;->access$400(Lme/weyye/hipermission/PermissionActivity;)V

    :goto_0
    return-void
.end method
