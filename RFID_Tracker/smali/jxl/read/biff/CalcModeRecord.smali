.class Ljxl/read/biff/CalcModeRecord;
.super Ljxl/biff/RecordData;
.source "CalcModeRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private automatic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ljxl/read/biff/CalcModeRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/CalcModeRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 3

    .line 49
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 50
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 51
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte p1, p1, v2

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    .line 52
    :cond_0
    iput-boolean v0, p0, Ljxl/read/biff/CalcModeRecord;->automatic:Z

    return-void
.end method


# virtual methods
.method public isAutomatic()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Ljxl/read/biff/CalcModeRecord;->automatic:Z

    return v0
.end method
