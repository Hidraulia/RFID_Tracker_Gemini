.class public Lcom/example/rederdemo/fragment/DestroyFragment;
.super Landroid/support/v4/app/Fragment;
.source "DestroyFragment.java"


# instance fields
.field private ant:J

.field cus_6c_destroy_event:Landroid/widget/Button;

.field cus_6c_destroy_pas:Landroid/widget/EditText;

.field cus_gb_destroy:Landroid/widget/Button;

.field cus_gjb_destroy:Landroid/widget/Button;

.field cus_gjb_destroy_password:Landroid/widget/EditText;

.field private info:Lcom/example/rederdemo/entity/TagInfo;

.field listener:[Ljava/lang/String;

.field tagType:I

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->listener:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->tagType:I

    return-void
.end method


# virtual methods
.method public destroy6c()V
    .locals 4

    .line 77
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;-><init>()V

    .line 78
    iget-wide v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->ant:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 80
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->cus_6c_destroy_pas:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Please fill in the destroy code"

    .line 81
    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->cus_6c_destroy_pas:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;->setHexPassword(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v2}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/example/rederdemo/fragment/DestroyFragment;->getFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 92
    :cond_1
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 93
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void
.end method

.method public destroyGJb()V
    .locals 6

    .line 131
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGJb;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGJb;-><init>()V

    .line 132
    iget-wide v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->ant:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGJb;->setAntennaEnable(Ljava/lang/Long;)V

    .line 133
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->cus_gjb_destroy_password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->cus_gjb_destroy_password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGJb;->setHexPassword(Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->listener:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 140
    invoke-virtual {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 141
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 144
    invoke-virtual {v3, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 145
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    if-ne v1, v5, :cond_3

    .line 148
    invoke-virtual {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 149
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_0

    .line 152
    :cond_3
    invoke-virtual {v3, v5}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 153
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->listener:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 157
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGJb;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 160
    :cond_4
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 161
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGJb;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void
.end method

.method public destroyGb()V
    .locals 5

    .line 98
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;-><init>()V

    .line 99
    iget-wide v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->ant:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->setAntennaEnable(Ljava/lang/Long;)V

    .line 101
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->listener:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 105
    invoke-virtual {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 106
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/16 v1, 0x10

    .line 109
    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 110
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/16 v1, 0x20

    .line 113
    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 114
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v1, v1, 0x30

    .line 117
    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 118
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->listener:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 122
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 125
    :cond_3
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 126
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void
.end method

.method public getFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 5

    .line 168
    new-instance v0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 170
    iget-object v1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->listener:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 172
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    if-eqz p1, :cond_4

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    .line 176
    invoke-virtual {v0, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 178
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne v1, p2, :cond_4

    .line 192
    invoke-virtual {v0, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    if-eqz p3, :cond_2

    .line 194
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    .line 196
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 198
    invoke-virtual {v0, p3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object p1

    .line 181
    :cond_3
    :goto_0
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    if-eqz p2, :cond_6

    .line 183
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    .line 185
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 187
    invoke-virtual {v0, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 204
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->listener:[Ljava/lang/String;

    aget-object p1, p1, v3

    if-eqz p1, :cond_5

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    goto :goto_2

    .line 208
    :cond_5
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    :goto_2
    return-object v0

    :cond_6
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 42
    iget p3, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->tagType:I

    const/4 v0, 0x0

    const v1, 0x7f090041

    if-ne p3, v1, :cond_0

    const p3, 0x7f0c0031

    .line 43
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->view:Landroid/view/View;

    const p2, 0x7f09005c

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->cus_6c_destroy_pas:Landroid/widget/EditText;

    .line 45
    iget-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->view:Landroid/view/View;

    const p2, 0x7f09005b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->cus_6c_destroy_event:Landroid/widget/Button;

    .line 46
    new-instance p2, Lcom/example/rederdemo/fragment/DestroyFragment$1;

    invoke-direct {p2, p0}, Lcom/example/rederdemo/fragment/DestroyFragment$1;-><init>(Lcom/example/rederdemo/fragment/DestroyFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0900da

    if-ne p3, v1, :cond_1

    const p3, 0x7f0c0032

    .line 53
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->view:Landroid/view/View;

    const p2, 0x7f090062

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->cus_gb_destroy:Landroid/widget/Button;

    .line 55
    new-instance p2, Lcom/example/rederdemo/fragment/DestroyFragment$2;

    invoke-direct {p2, p0}, Lcom/example/rederdemo/fragment/DestroyFragment$2;-><init>(Lcom/example/rederdemo/fragment/DestroyFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0900dd

    if-ne p3, v1, :cond_2

    const p3, 0x7f0c0033

    .line 62
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->view:Landroid/view/View;

    const p2, 0x7f09006e

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->cus_gjb_destroy:Landroid/widget/Button;

    .line 64
    iget-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->view:Landroid/view/View;

    const p2, 0x7f09006f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->cus_gjb_destroy_password:Landroid/widget/EditText;

    .line 65
    iget-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->cus_gjb_destroy:Landroid/widget/Button;

    new-instance p2, Lcom/example/rederdemo/fragment/DestroyFragment$3;

    invoke-direct {p2, p0}, Lcom/example/rederdemo/fragment/DestroyFragment$3;-><init>(Lcom/example/rederdemo/fragment/DestroyFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 73
    iget-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public receiveListener([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 226
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 227
    iput-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->listener:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public receiveTag(Lcom/example/rederdemo/entity/TagInfo;JI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 217
    iput-object p1, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    .line 218
    iput-wide p2, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->ant:J

    .line 219
    iput p4, p0, Lcom/example/rederdemo/fragment/DestroyFragment;->tagType:I

    :cond_0
    return-void
.end method
