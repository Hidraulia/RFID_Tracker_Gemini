.class public Lcom/example/rederdemo/util/Frequency;
.super Ljava/lang/Object;
.source "Frequency.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFrequency(DDD)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-static {p0, p1}, Lcom/example/rederdemo/util/Frequency;->formatStr(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v1, p0

    :goto_0
    cmpg-double v3, p0, p2

    if-gez v3, :cond_0

    add-double/2addr v1, p4

    .line 112
    invoke-static {v1, v2}, Lcom/example/rederdemo/util/Frequency;->formatStr(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-double/2addr p0, p4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static formatStr(D)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 118
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    const-string p0, "%.3f"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static indexGetChildFre(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 80
    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "802.750-811.750"

    .line 81
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "812.750-821.750"

    .line 82
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "822.750-831.750"

    .line 83
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "832.750-841.750"

    .line 84
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "842.750-851.750"

    .line 85
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "852.750-861.750"

    .line 86
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "862.750-871.750"

    .line 87
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "872.750-881.750"

    .line 88
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "882.750-891.750"

    .line 89
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "892.750-901.750"

    .line 90
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "902.750-911.750"

    .line 91
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "912.750-921.750"

    .line 92
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "922.750-931.750"

    .line 93
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "932.750-941.750"

    .line 94
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "942.750-951.750"

    .line 95
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "952.750-961.750"

    .line 96
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "962.750-971.750"

    .line 97
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "972.750-981.750"

    .line 98
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "982.750-991.750"

    .line 99
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "992.750-998.750"

    .line 100
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 76
    :pswitch_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "866.600-867.400"

    .line 77
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 72
    :pswitch_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "923.125-925.125"

    .line 73
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 68
    :pswitch_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "922.250-927.750"

    .line 69
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 64
    :pswitch_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "916.800-920.400"

    .line 65
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 60
    :pswitch_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "866.300-868.000"

    .line 61
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 54
    :pswitch_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "902.750-910.250"

    .line 55
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "911.750-918.250"

    .line 56
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "919.750-927.250"

    .line 57
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 50
    :pswitch_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "840.625-924.375"

    .line 51
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 46
    :pswitch_8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "840.625-844.375"

    .line 47
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 41
    :pswitch_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "920.625-922.375"

    .line 42
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "922.625-924.375"

    .line 43
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static indexGetFre(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-wide v0, 0x4089160000000000L    # 802.75

    const-wide v2, 0x408f360000000000L    # 998.75

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/example/rederdemo/util/Frequency;->createFrequency(DDD)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-wide v0, 0x408b14cccccccccdL    # 866.6

    const-wide v2, 0x408b1b3333333333L    # 867.4

    const-wide v4, 0x3fc999999999999aL    # 0.2

    .line 30
    invoke-static/range {v0 .. v5}, Lcom/example/rederdemo/util/Frequency;->createFrequency(DDD)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_2
    const-wide v0, 0x408cd90000000000L    # 923.125

    const-wide v2, 0x408ce90000000000L    # 925.125

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    .line 28
    invoke-static/range {v0 .. v5}, Lcom/example/rederdemo/util/Frequency;->createFrequency(DDD)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_3
    const-wide v0, 0x408cd20000000000L    # 922.25

    const-wide v2, 0x408cfe0000000000L    # 927.75

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 26
    invoke-static/range {v0 .. v5}, Lcom/example/rederdemo/util/Frequency;->createFrequency(DDD)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_4
    const-wide v0, 0x408ca66666666666L    # 916.8

    const-wide v2, 0x408cc33333333333L    # 920.4

    const-wide v4, 0x3ff3333333333333L    # 1.2

    .line 24
    invoke-static/range {v0 .. v5}, Lcom/example/rederdemo/util/Frequency;->createFrequency(DDD)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_5
    const-wide v0, 0x408b0d999999999aL    # 865.7

    const-wide v2, 0x408b20cccccccccdL    # 868.1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/example/rederdemo/util/Frequency;->createFrequency(DDD)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_6
    const-wide v0, 0x408c360000000000L    # 902.75

    const-wide v2, 0x408cfa0000000000L    # 927.25

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/example/rederdemo/util/Frequency;->createFrequency(DDD)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide v0, 0x408a450000000000L    # 840.625

    const-wide v2, 0x408a630000000000L    # 844.375

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    .line 16
    invoke-static/range {v0 .. v5}, Lcom/example/rederdemo/util/Frequency;->createFrequency(DDD)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-wide v1, 0x408cc50000000000L    # 920.625

    const-wide v3, 0x408ce30000000000L    # 924.375

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    .line 17
    invoke-static/range {v1 .. v6}, Lcom/example/rederdemo/util/Frequency;->createFrequency(DDD)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :pswitch_8
    const-wide v1, 0x408a450000000000L    # 840.625

    const-wide v3, 0x408a630000000000L    # 844.375

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    .line 13
    invoke-static/range {v1 .. v6}, Lcom/example/rederdemo/util/Frequency;->createFrequency(DDD)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_9
    const-wide v0, 0x408cc50000000000L    # 920.625

    const-wide v2, 0x408ce30000000000L    # 924.375

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/example/rederdemo/util/Frequency;->createFrequency(DDD)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
