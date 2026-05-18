.class public Lcom/example/rederdemo/util/UtilSound;
.super Ljava/lang/Object;
.source "UtilSound.java"


# static fields
.field public static context:Landroid/content/Context;

.field public static sp:Landroid/media/SoundPool;

.field public static suondMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initSoundPool(Landroid/content/Context;)V
    .locals 5

    .line 21
    sput-object p0, Lcom/example/rederdemo/util/UtilSound;->context:Landroid/content/Context;

    .line 22
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/example/rederdemo/util/UtilSound;->sp:Landroid/media/SoundPool;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/example/rederdemo/util/UtilSound;->suondMap:Ljava/util/Map;

    const/4 v1, 0x1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/example/rederdemo/util/UtilSound;->sp:Landroid/media/SoundPool;

    const/high16 v4, 0x7f0f0000

    invoke-virtual {v3, p0, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static play(II)V
    .locals 8

    .line 29
    sget-object p0, Lcom/example/rederdemo/util/UtilSound;->context:Landroid/content/Context;

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 p1, 0x3

    .line 30
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v0, v0

    .line 31
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    int-to-float p0, p0

    div-float v4, p0, v0

    .line 39
    sget-object v1, Lcom/example/rederdemo/util/UtilSound;->sp:Landroid/media/SoundPool;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v3, v4

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method
