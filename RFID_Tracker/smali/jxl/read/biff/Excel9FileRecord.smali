.class Ljxl/read/biff/Excel9FileRecord;
.super Ljxl/biff/RecordData;
.source "Excel9FileRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private excel9file:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Ljxl/read/biff/Excel9FileRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/Excel9FileRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Ljxl/read/biff/Excel9FileRecord;->excel9file:Z

    return-void
.end method


# virtual methods
.method public getExcel9File()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Ljxl/read/biff/Excel9FileRecord;->excel9file:Z

    return v0
.end method
