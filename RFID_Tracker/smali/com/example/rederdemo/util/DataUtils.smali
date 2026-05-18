.class public Lcom/example/rederdemo/util/DataUtils;
.super Ljava/lang/Object;
.source "DataUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static padLeft(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 4

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    if-gtz v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    new-array v0, p1, [C

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    if-ge p0, p1, :cond_1

    .line 14
    aput-char p2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static padRight(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    if-gtz v0, :cond_0

    return-object p0

    .line 25
    :cond_0
    new-array p1, p1, [C

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v2, v0, :cond_1

    .line 28
    aput-char p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
