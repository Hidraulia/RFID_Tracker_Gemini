.class Ljxl/read/biff/WriteAccessRecord;
.super Ljxl/biff/RecordData;
.source "WriteAccessRecord.java"


# instance fields
.field private wauser:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;ZLjxl/WorkbookSettings;)V
    .locals 1

    .line 45
    sget-object v0, Ljxl/biff/Type;->WRITEACCESS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/RecordData;-><init>(Ljxl/biff/Type;)V

    .line 47
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    if-eqz p2, :cond_0

    const/16 p2, 0x38

    const/4 p3, 0x0

    .line 50
    invoke-static {p1, p2, p3}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/WriteAccessRecord;->wauser:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 55
    aget-byte v0, p1, p2

    .line 56
    invoke-static {p1, v0, p2, p3}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/WriteAccessRecord;->wauser:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getWriteAccess()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Ljxl/read/biff/WriteAccessRecord;->wauser:Ljava/lang/String;

    return-object v0
.end method
