.class public Lcom/example/rederdemo/util/SPUtil;
.super Ljava/lang/Object;
.source "SPUtil.java"


# static fields
.field private static volatile instance:Lcom/example/rederdemo/util/SPUtil;


# instance fields
.field private final SP_NAME:Ljava/lang/String;

.field private final TAG_LANGUAGE:Ljava/lang/String;

.field private final TAG_SYSTEM_LANGUAGE:Ljava/lang/String;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private systemCurrentLocal:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "language_setting"

    .line 10
    iput-object v0, p0, Lcom/example/rederdemo/util/SPUtil;->SP_NAME:Ljava/lang/String;

    const-string v1, "language_select"

    .line 11
    iput-object v1, p0, Lcom/example/rederdemo/util/SPUtil;->TAG_LANGUAGE:Ljava/lang/String;

    const-string v1, "system_language"

    .line 12
    iput-object v1, p0, Lcom/example/rederdemo/util/SPUtil;->TAG_SYSTEM_LANGUAGE:Ljava/lang/String;

    .line 17
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v1, p0, Lcom/example/rederdemo/util/SPUtil;->systemCurrentLocal:Ljava/util/Locale;

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/util/SPUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/example/rederdemo/util/SPUtil;
    .locals 2

    .line 45
    sget-object v0, Lcom/example/rederdemo/util/SPUtil;->instance:Lcom/example/rederdemo/util/SPUtil;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/example/rederdemo/util/SPUtil;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/example/rederdemo/util/SPUtil;->instance:Lcom/example/rederdemo/util/SPUtil;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/example/rederdemo/util/SPUtil;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/util/SPUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/example/rederdemo/util/SPUtil;->instance:Lcom/example/rederdemo/util/SPUtil;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 52
    :cond_1
    :goto_0
    sget-object p0, Lcom/example/rederdemo/util/SPUtil;->instance:Lcom/example/rederdemo/util/SPUtil;

    return-object p0
.end method


# virtual methods
.method public getSelectLanguage()I
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/example/rederdemo/util/SPUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "language_select"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSystemCurrentLocal()Ljava/util/Locale;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/example/rederdemo/util/SPUtil;->systemCurrentLocal:Ljava/util/Locale;

    return-object v0
.end method

.method public saveLanguage(I)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/example/rederdemo/util/SPUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "language_select"

    .line 27
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSystemCurrentLocal(Ljava/util/Locale;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/example/rederdemo/util/SPUtil;->systemCurrentLocal:Ljava/util/Locale;

    return-void
.end method
