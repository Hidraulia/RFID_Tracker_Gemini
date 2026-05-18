.class Ljxl/read/biff/RefreshAllRecord;
.super Ljxl/biff/RecordData;
.source "RefreshAllRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private refreshAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Ljxl/read/biff/RefreshAllRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/RefreshAllRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 3

    .line 48
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 49
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 50
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte p1, p1, v2

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    .line 51
    :cond_0
    iput-boolean v0, p0, Ljxl/read/biff/RefreshAllRecord;->refreshAll:Z

    return-void
.end method


# virtual methods
.method public getRefreshAll()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Ljxl/read/biff/RefreshAllRecord;->refreshAll:Z

    return v0
.end method
