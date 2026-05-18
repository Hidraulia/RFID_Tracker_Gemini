.class public Ljxl/biff/XCTRecord;
.super Ljxl/biff/WritableRecordData;
.source "XCTRecord.java"


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 48
    invoke-virtual {p0}, Ljxl/biff/XCTRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0
.end method
