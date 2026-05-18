.class public Ljxl/write/biff/NumberFormatRecord;
.super Ljxl/biff/FormatRecord;
.source "NumberFormatRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;
    }
.end annotation


# static fields
.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Ljxl/write/biff/NumberFormatRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/NumberFormatRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljxl/biff/FormatRecord;-><init>()V

    const-string v0, "E0"

    const-string v1, "E+0"

    .line 53
    invoke-virtual {p0, p1, v0, v1}, Ljxl/write/biff/NumberFormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Ljxl/write/biff/NumberFormatRecord;->trimInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Ljxl/write/biff/NumberFormatRecord;->setFormatString(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljxl/biff/FormatRecord;-><init>()V

    const-string p2, "E0"

    const-string v0, "E+0"

    .line 73
    invoke-virtual {p0, p1, p2, v0}, Ljxl/write/biff/NumberFormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Ljxl/write/biff/NumberFormatRecord;->setFormatString(Ljava/lang/String;)V

    return-void
.end method

.method private trimInvalidChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x23

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x30

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    if-ne v3, v4, :cond_0

    const-string p1, "#.###"

    return-object p1

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v3, v6, :cond_3

    const v7, 0x7fffffff

    if-ne v1, v4, :cond_1

    const v1, 0x7fffffff

    :cond_1
    if-ne v3, v4, :cond_2

    const v3, 0x7fffffff

    .line 103
    :cond_2
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 105
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 113
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 122
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 125
    :cond_5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v6

    if-le v1, v0, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_6

    goto :goto_0

    .line 132
    :cond_6
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_7
    :goto_1
    return-object p1
.end method
