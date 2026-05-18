.class Lcom/example/rederdemo/AppStateTracker$1;
.super Lcom/example/rederdemo/AppStateTracker$SimpleActivityLifecycleCallbacks;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/AppStateTracker;->track(Landroid/app/Application;Lcom/example/rederdemo/AppStateTracker$AppStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private resumeActivityCount:I

.field final synthetic val$appStateChangeListener:Lcom/example/rederdemo/AppStateTracker$AppStateChangeListener;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/AppStateTracker$AppStateChangeListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/example/rederdemo/AppStateTracker$1;->val$appStateChangeListener:Lcom/example/rederdemo/AppStateTracker$AppStateChangeListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/example/rederdemo/AppStateTracker$SimpleActivityLifecycleCallbacks;-><init>(Lcom/example/rederdemo/AppStateTracker$1;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/example/rederdemo/AppStateTracker$1;->resumeActivityCount:I

    return-void
.end method


# virtual methods
.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 33
    iget p1, p0, Lcom/example/rederdemo/AppStateTracker$1;->resumeActivityCount:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 34
    invoke-static {p1}, Lcom/example/rederdemo/AppStateTracker;->access$102(I)I

    .line 35
    iget-object p1, p0, Lcom/example/rederdemo/AppStateTracker$1;->val$appStateChangeListener:Lcom/example/rederdemo/AppStateTracker$AppStateChangeListener;

    invoke-interface {p1}, Lcom/example/rederdemo/AppStateTracker$AppStateChangeListener;->appTurnIntoForeground()V

    .line 38
    :cond_0
    iget p1, p0, Lcom/example/rederdemo/AppStateTracker$1;->resumeActivityCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/example/rederdemo/AppStateTracker$1;->resumeActivityCount:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 44
    iget p1, p0, Lcom/example/rederdemo/AppStateTracker$1;->resumeActivityCount:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/example/rederdemo/AppStateTracker$1;->resumeActivityCount:I

    if-nez p1, :cond_0

    .line 47
    invoke-static {v0}, Lcom/example/rederdemo/AppStateTracker;->access$102(I)I

    .line 48
    iget-object p1, p0, Lcom/example/rederdemo/AppStateTracker$1;->val$appStateChangeListener:Lcom/example/rederdemo/AppStateTracker$AppStateChangeListener;

    invoke-interface {p1}, Lcom/example/rederdemo/AppStateTracker$AppStateChangeListener;->appTurnIntoBackGround()V

    :cond_0
    return-void
.end method
