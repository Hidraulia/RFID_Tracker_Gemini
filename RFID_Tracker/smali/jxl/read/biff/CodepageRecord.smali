.class Ljxl/read/biff/CodepageRecord;
.super Ljxl/biff/RecordData;
.source "CodepageRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private characterSet:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ljxl/read/biff/CodepageRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/CodepageRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 50
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 51
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/CodepageRecord;->characterSet:I

    return-void
.end method


# virtual methods
.method public getCharacterSet()I
    .locals 1

    .line 61
    iget v0, p0, Ljxl/read/biff/CodepageRecord;->characterSet:I

    return v0
.end method
