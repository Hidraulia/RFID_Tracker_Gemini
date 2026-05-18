.class public Lcom/example/rederdemo/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static handler:Landroid/os/Handler;

.field private static looperToast:Landroid/widget/Toast;

.field private static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/example/rederdemo/util/ToastUtils;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .line 10
    sget-object v0, Lcom/example/rederdemo/util/ToastUtils;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static handlerText(Ljava/lang/String;)V
    .locals 2

    .line 62
    invoke-static {p0}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lcom/example/rederdemo/util/ToastUtils;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/example/rederdemo/util/ToastUtils$1;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/util/ToastUtils$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 71
    :cond_0
    sget-object p0, Lcom/example/rederdemo/util/ToastUtils;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/example/rederdemo/util/ToastUtils$2;

    invoke-direct {v0}, Lcom/example/rederdemo/util/ToastUtils$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/example/rederdemo/util/ToastUtils;->toast:Landroid/widget/Toast;

    return-void
.end method

.method public static showLooperText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 36
    :try_start_0
    sget-object v1, Lcom/example/rederdemo/util/ToastUtils;->looperToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 37
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/example/rederdemo/util/ToastUtils;->looperToast:Landroid/widget/Toast;

    .line 39
    :cond_0
    sget-object v1, Lcom/example/rederdemo/util/ToastUtils;->looperToast:Landroid/widget/Toast;

    invoke-virtual {v1, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 40
    sget-object v1, Lcom/example/rederdemo/util/ToastUtils;->looperToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 43
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 44
    invoke-static {}, Landroid/os/Looper;->loop()V

    :goto_0
    return-void
.end method

.method public static showText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 50
    sget-object v0, Lcom/example/rederdemo/util/ToastUtils;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, ""

    .line 51
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/example/rederdemo/util/ToastUtils;->toast:Landroid/widget/Toast;

    .line 53
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 54
    sget-object p0, Lcom/example/rederdemo/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 56
    :cond_1
    sget-object p0, Lcom/example/rederdemo/util/ToastUtils;->toast:Landroid/widget/Toast;

    const-string p1, "\u672a\u77e5\u9519\u8bef"

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_0
    sget-object p0, Lcom/example/rederdemo/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showText(Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-static {p0}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    sget-object v0, Lcom/example/rederdemo/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 29
    :cond_0
    sget-object p0, Lcom/example/rederdemo/util/ToastUtils;->toast:Landroid/widget/Toast;

    const-string v0, "Time out"

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :goto_0
    sget-object p0, Lcom/example/rederdemo/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
