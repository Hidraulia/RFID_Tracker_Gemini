.class public Lcom/example/rederdemo/util/InitApplication;
.super Landroid/app/Application;
.source "InitApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 9
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 10
    invoke-static {p0}, Lcom/example/rederdemo/util/ToastUtils;->init(Landroid/content/Context;)V

    return-void
.end method
