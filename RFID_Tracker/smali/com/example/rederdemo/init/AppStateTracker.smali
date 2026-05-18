.class public Lcom/example/rederdemo/init/AppStateTracker;
.super Ljava/lang/Object;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/rederdemo/init/AppStateTracker$SimpleActivityLifecycleCallbacks;,
        Lcom/example/rederdemo/init/AppStateTracker$AppStateChangeListener;
    }
.end annotation


# static fields
.field public static final STATE_BACKGROUND:I = 0x1

.field public static final STATE_FOREGROUND:I

.field private static currentState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(I)I
    .locals 0

    .line 8
    sput p0, Lcom/example/rederdemo/init/AppStateTracker;->currentState:I

    return p0
.end method

.method public static getCurrentState()I
    .locals 1

    .line 17
    sget v0, Lcom/example/rederdemo/init/AppStateTracker;->currentState:I

    return v0
.end method

.method public static track(Landroid/app/Application;Lcom/example/rederdemo/init/AppStateTracker$AppStateChangeListener;)V
    .locals 1

    .line 27
    new-instance v0, Lcom/example/rederdemo/init/AppStateTracker$1;

    invoke-direct {v0, p1}, Lcom/example/rederdemo/init/AppStateTracker$1;-><init>(Lcom/example/rederdemo/init/AppStateTracker$AppStateChangeListener;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
