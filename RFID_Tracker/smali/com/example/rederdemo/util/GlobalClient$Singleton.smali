.class final enum Lcom/example/rederdemo/util/GlobalClient$Singleton;
.super Ljava/lang/Enum;
.source "GlobalClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/rederdemo/util/GlobalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/example/rederdemo/util/GlobalClient$Singleton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/example/rederdemo/util/GlobalClient$Singleton;

.field public static final enum INSTANCE:Lcom/example/rederdemo/util/GlobalClient$Singleton;


# instance fields
.field private final client:Lcom/gg/reader/api/dal/GClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/example/rederdemo/util/GlobalClient$Singleton;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/example/rederdemo/util/GlobalClient$Singleton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/rederdemo/util/GlobalClient$Singleton;->INSTANCE:Lcom/example/rederdemo/util/GlobalClient$Singleton;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/example/rederdemo/util/GlobalClient$Singleton;

    aput-object v0, v2, v1

    .line 12
    sput-object v2, Lcom/example/rederdemo/util/GlobalClient$Singleton;->$VALUES:[Lcom/example/rederdemo/util/GlobalClient$Singleton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    new-instance p1, Lcom/gg/reader/api/dal/GClient;

    invoke-direct {p1}, Lcom/gg/reader/api/dal/GClient;-><init>()V

    iput-object p1, p0, Lcom/example/rederdemo/util/GlobalClient$Singleton;->client:Lcom/gg/reader/api/dal/GClient;

    return-void
.end method

.method static synthetic access$000(Lcom/example/rederdemo/util/GlobalClient$Singleton;)Lcom/gg/reader/api/dal/GClient;
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/example/rederdemo/util/GlobalClient$Singleton;->getInstance()Lcom/gg/reader/api/dal/GClient;

    move-result-object p0

    return-object p0
.end method

.method private getInstance()Lcom/gg/reader/api/dal/GClient;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/example/rederdemo/util/GlobalClient$Singleton;->client:Lcom/gg/reader/api/dal/GClient;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/rederdemo/util/GlobalClient$Singleton;
    .locals 1

    .line 12
    const-class v0, Lcom/example/rederdemo/util/GlobalClient$Singleton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/example/rederdemo/util/GlobalClient$Singleton;

    return-object p0
.end method

.method public static values()[Lcom/example/rederdemo/util/GlobalClient$Singleton;
    .locals 1

    .line 12
    sget-object v0, Lcom/example/rederdemo/util/GlobalClient$Singleton;->$VALUES:[Lcom/example/rederdemo/util/GlobalClient$Singleton;

    invoke-virtual {v0}, [Lcom/example/rederdemo/util/GlobalClient$Singleton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/example/rederdemo/util/GlobalClient$Singleton;

    return-object v0
.end method
