.class public Lcom/example/rederdemo/util/GlobalClient;
.super Ljava/lang/Object;
.source "GlobalClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/rederdemo/util/GlobalClient$Singleton;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient()Lcom/gg/reader/api/dal/GClient;
    .locals 1

    .line 28
    sget-object v0, Lcom/example/rederdemo/util/GlobalClient$Singleton;->INSTANCE:Lcom/example/rederdemo/util/GlobalClient$Singleton;

    invoke-static {v0}, Lcom/example/rederdemo/util/GlobalClient$Singleton;->access$000(Lcom/example/rederdemo/util/GlobalClient$Singleton;)Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    return-object v0
.end method
