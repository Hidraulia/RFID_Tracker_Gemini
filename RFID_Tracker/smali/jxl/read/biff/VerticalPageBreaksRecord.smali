.class Ljxl/read/biff/VerticalPageBreaksRecord;
.super Ljxl/biff/RecordData;
.source "VerticalPageBreaksRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;
    }
.end annotation


# static fields
.field public static biff7:Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;


# instance fields
.field private columnBreaks:[I

.field private final logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;-><init>(Ljxl/read/biff/VerticalPageBreaksRecord$1;)V

    sput-object v0, Ljxl/read/biff/VerticalPageBreaksRecord;->biff7:Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 6

    .line 56
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 35
    const-class v0, Ljxl/read/biff/VerticalPageBreaksRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/VerticalPageBreaksRecord;->logger:Ljxl/common/Logger;

    .line 58
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 60
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    .line 62
    new-array v2, v1, [I

    iput-object v2, p0, Ljxl/read/biff/VerticalPageBreaksRecord;->columnBreaks:[I

    const/4 v2, 0x2

    :goto_0
    if-ge v0, v1, :cond_0

    .line 66
    iget-object v3, p0, Ljxl/read/biff/VerticalPageBreaksRecord;->columnBreaks:[I

    aget-byte v4, p1, v2

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    invoke-static {v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;)V
    .locals 6

    .line 79
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 35
    const-class p2, Ljxl/read/biff/VerticalPageBreaksRecord;

    invoke-static {p2}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object p2

    iput-object p2, p0, Ljxl/read/biff/VerticalPageBreaksRecord;->logger:Ljxl/common/Logger;

    .line 81
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 p2, 0x0

    .line 82
    aget-byte v0, p1, p2

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 84
    new-array v1, v0, [I

    iput-object v1, p0, Ljxl/read/biff/VerticalPageBreaksRecord;->columnBreaks:[I

    const/4 v1, 0x2

    const/4 v2, 0x2

    :goto_0
    if-ge p2, v0, :cond_0

    .line 87
    iget-object v3, p0, Ljxl/read/biff/VerticalPageBreaksRecord;->columnBreaks:[I

    aget-byte v4, p1, v2

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    invoke-static {v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    aput v4, v3, p2

    add-int/2addr v2, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getColumnBreaks()[I
    .locals 1

    .line 99
    iget-object v0, p0, Ljxl/read/biff/VerticalPageBreaksRecord;->columnBreaks:[I

    return-object v0
.end method
