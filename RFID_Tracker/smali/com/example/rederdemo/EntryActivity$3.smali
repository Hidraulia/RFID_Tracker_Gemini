.class Lcom/example/rederdemo/EntryActivity$3;
.super Ljava/lang/Object;
.source "EntryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/EntryActivity;->searchDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/EntryActivity;

.field final synthetic val$appCompile:Landroid/widget/TextView;

.field final synthetic val$appVersion:Landroid/widget/TextView;

.field final synthetic val$baseCompile:Landroid/widget/TextView;

.field final synthetic val$deviceSerial:Landroid/widget/TextView;

.field final synthetic val$msg:Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;

.field final synthetic val$powerOnTime:Landroid/widget/TextView;

.field final synthetic val$systemVersion:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/EntryActivity;Landroid/widget/TextView;Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/example/rederdemo/EntryActivity$3;->this$0:Lcom/example/rederdemo/EntryActivity;

    iput-object p2, p0, Lcom/example/rederdemo/EntryActivity$3;->val$deviceSerial:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/example/rederdemo/EntryActivity$3;->val$msg:Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;

    iput-object p4, p0, Lcom/example/rederdemo/EntryActivity$3;->val$appVersion:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/example/rederdemo/EntryActivity$3;->val$appCompile:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/example/rederdemo/EntryActivity$3;->val$baseCompile:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/example/rederdemo/EntryActivity$3;->val$systemVersion:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/example/rederdemo/EntryActivity$3;->val$powerOnTime:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity$3;->val$deviceSerial:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/EntryActivity$3;->val$msg:Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getReaderSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity$3;->val$appVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/EntryActivity$3;->val$msg:Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getAppVersions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity$3;->val$appCompile:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/EntryActivity$3;->val$msg:Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getAppCompileTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity$3;->val$baseCompile:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/EntryActivity$3;->val$msg:Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getBaseCompileTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity$3;->val$systemVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/EntryActivity$3;->val$msg:Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getSystemVersions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/example/rederdemo/EntryActivity$3;->val$powerOnTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/EntryActivity$3;->val$msg:Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getFormatPowerOnTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
