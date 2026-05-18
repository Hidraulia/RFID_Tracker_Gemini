.class Lcom/example/rederdemo/ReadOrWriteActivity$37;
.super Ljava/lang/Object;
.source "ReadOrWriteActivity.java"

# interfaces
.implements Lme/weyye/hipermission/PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/ReadOrWriteActivity;->fab_excel()V
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

    .line 1967
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$37;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    const-string v0, "onClose"

    .line 1970
    invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeny(Ljava/lang/String;I)V
    .locals 0

    const-string p1, "onDeny"

    .line 2002
    invoke-static {p1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFinish()V
    .locals 10

    const-string v0, "onFinish"

    .line 1975
    invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/excel_Tags/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1979
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1980
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1982
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$37;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v2, v2, Lcom/example/rederdemo/ReadOrWriteActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xls"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Index"

    const-string v3, "Type"

    const-string v4, "EPC"

    const-string v5, "TID"

    const-string v6, "UserData"

    const-string v7, "ReservedData"

    const-string v8, "TotalCount"

    const-string v9, "ReadTime"

    .line 1983
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    .line 1984
    iget-object v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity$37;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v3}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$000(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 1986
    :try_start_0
    invoke-static {v1, v0, v2}, Lcom/example/rederdemo/util/ExcelUtil;->initExcel(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1987
    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$37;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity$37;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v3}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$000(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$1500(Lcom/example/rederdemo/ReadOrWriteActivity;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lcom/example/rederdemo/util/ExcelUtil;->writeObjListToExcel(Ljava/util/ArrayList;Ljava/lang/String;Lme/weyye/hipermission/PermissionCallback;)V

    .line 1989
    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$37;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Export success Path="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1992
    :catch_0
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$37;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    const-string v1, "Export Failed"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1996
    :cond_1
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$37;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    const-string v1, "No Data"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onGuarantee(Ljava/lang/String;I)V
    .locals 0

    const-string p1, "onGuarantee"

    .line 2007
    invoke-static {p1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
