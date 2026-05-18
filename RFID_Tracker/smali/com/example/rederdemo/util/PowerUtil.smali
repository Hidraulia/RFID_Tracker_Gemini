.class public Lcom/example/rederdemo/util/PowerUtil;
.super Ljava/lang/Object;
.source "PowerUtil.java"


# static fields
.field private static s2:Ljava/lang/String; = "/proc/gpiocontrol/set_uhf"

.field private static s3:Ljava/lang/String; = "/proc/gpiocontrol/set_bd"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static power(Ljava/lang/String;)V
    .locals 5

    const-string v0, " Path="

    const-string v1, "power="

    const-string v2, "PowerUtil"

    .line 27
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    sget-object v4, Lcom/example/rederdemo/util/PowerUtil;->s2:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/example/rederdemo/util/PowerUtil;->s2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v3, Ljava/io/FileWriter;

    sget-object v4, Lcom/example/rederdemo/util/PowerUtil;->s3:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/example/rederdemo/util/PowerUtil;->s3:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x5dc

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
