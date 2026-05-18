.class public Lcom/example/rederdemo/fragment/LockFragment;
.super Landroid/support/v4/app/Fragment;
.source "LockFragment.java"


# instance fields
.field private ant:J

.field cus_6b_lock_area:Landroid/widget/Spinner;

.field cus_6b_lock_event:Landroid/widget/Button;

.field cus_6b_lock_event_query:Landroid/widget/Button;

.field cus_6b_lock_type:Landroid/widget/Spinner;

.field cus_6c_lock_event:Landroid/widget/Button;

.field cus_gb_lock_area:Landroid/widget/Spinner;

.field cus_gb_lock_event:Landroid/widget/Button;

.field cus_gb_lock_type:Landroid/widget/Spinner;

.field cus_gjb_lock_area:Landroid/widget/Spinner;

.field cus_gjb_lock_event:Landroid/widget/Button;

.field cus_gjb_lock_type:Landroid/widget/Spinner;

.field cus_lock_6b_address:Landroid/widget/EditText;

.field cus_lock_6b_address_query:Landroid/widget/EditText;

.field private info:Lcom/example/rederdemo/entity/TagInfo;

.field listener:[Ljava/lang/String;

.field tagType:I

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/example/rederdemo/fragment/LockFragment;->listener:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/example/rederdemo/fragment/LockFragment;->tagType:I

    return-void
.end method


# virtual methods
.method public getFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 5

    .line 321
    new-instance v0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 323
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->listener:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 325
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    if-eqz p1, :cond_4

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    .line 329
    invoke-virtual {v0, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 331
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

    .line 345
    invoke-virtual {v0, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    if-eqz p3, :cond_2

    .line 347
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    .line 349
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 351
    invoke-virtual {v0, p3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object p1

    .line 334
    :cond_3
    :goto_0
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    if-eqz p2, :cond_6

    .line 336
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    .line 338
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 340
    invoke-virtual {v0, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 357
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->listener:[Ljava/lang/String;

    aget-object p1, p1, v3

    if-eqz p1, :cond_5

    .line 359
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    goto :goto_2

    .line 361
    :cond_5
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    :goto_2
    return-object v0

    :cond_6
    return-object p1
.end method

.method public lock6b()V
    .locals 3

    .line 146
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6b;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6b;-><init>()V

    .line 148
    iget-wide v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->ant:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6b;->setAntennaEnable(Ljava/lang/Long;)V

    .line 150
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6b;->setHexMatchTid(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_lock_6b_address:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "The address cannot be empty"

    .line 154
    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6b;->setLockIndex(I)V

    .line 160
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 161
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6b;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void
.end method

.method public lock6bQuery()V
    .locals 3

    .line 166
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;-><init>()V

    .line 167
    iget-wide v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->ant:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->setAntennaEnable(Ljava/lang/Long;)V

    .line 168
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->setHexMatchTid(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_lock_6b_address_query:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "The address cannot be empty"

    .line 171
    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void

    .line 174
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->setLockIndex(I)V

    .line 177
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 178
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->getRtCode()B

    move-result v1

    if-nez v1, :cond_2

    .line 179
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->getLockState()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "unlocked"

    goto :goto_0

    :cond_1
    const-string v0, "Has been locked"

    :goto_0
    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public lock6c()V
    .locals 5

    .line 114
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;-><init>()V

    .line 115
    iget-wide v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->ant:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 117
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_6b_lock_area:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setArea(I)V

    .line 121
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_6b_lock_type:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 123
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setMode(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v3, v1, :cond_1

    .line 125
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setMode(I)V

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_2

    .line 127
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setMode(I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v3, v1, :cond_3

    .line 129
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setMode(I)V

    .line 132
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v4}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/example/rederdemo/fragment/LockFragment;->getFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 134
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 137
    :cond_4
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->listener:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setHexPassword(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 141
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void
.end method

.method public lockGJb()V
    .locals 7

    .line 264
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;-><init>()V

    .line 265
    iget-wide v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->ant:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setAntennaEnable(Ljava/lang/Long;)V

    .line 266
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_gjb_lock_area:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 267
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setArea(I)V

    .line 268
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_gjb_lock_type:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setLockParam(I)V

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setLockParam(I)V

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {v0, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setLockParam(I)V

    goto :goto_0

    .line 271
    :cond_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setLockParam(I)V

    .line 284
    :goto_0
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->listener:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 286
    new-instance v6, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v6}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    if-ne v1, v5, :cond_4

    .line 288
    invoke-virtual {v6, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 289
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_1

    :cond_4
    if-ne v1, v4, :cond_5

    .line 292
    invoke-virtual {v6, v5}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 293
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_1

    :cond_5
    if-ne v1, v3, :cond_6

    .line 296
    invoke-virtual {v6, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 297
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_1

    .line 300
    :cond_6
    invoke-virtual {v6, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 301
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 304
    :goto_1
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->listener:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 305
    invoke-virtual {v0, v6}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 308
    :cond_7
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->listener:[Ljava/lang/String;

    aget-object v1, v1, v4

    .line 309
    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 310
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setHexPassword(Ljava/lang/String;)V

    .line 314
    :cond_8
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 315
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void
.end method

.method public lockGb()V
    .locals 9

    .line 187
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;-><init>()V

    .line 188
    iget-wide v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->ant:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->setAntennaEnable(Ljava/lang/Long;)V

    .line 189
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_gb_lock_area:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/16 v2, 0x20

    const/16 v3, 0x10

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {v0, v6}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->setArea(I)V

    goto :goto_0

    :cond_0
    if-ne v1, v7, :cond_1

    .line 193
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->setArea(I)V

    goto :goto_0

    :cond_1
    if-ne v1, v5, :cond_2

    .line 195
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->setArea(I)V

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x30

    .line 197
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->setArea(I)V

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_gb_lock_type:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v1, 0x13

    .line 220
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->setLockParam(I)V

    goto :goto_1

    :pswitch_1
    const/16 v1, 0x12

    .line 217
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->setLockParam(I)V

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x11

    .line 214
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->setLockParam(I)V

    goto :goto_1

    .line 211
    :pswitch_3
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->setLockParam(I)V

    goto :goto_1

    .line 208
    :pswitch_4
    invoke-virtual {v0, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->setLockParam(I)V

    goto :goto_1

    .line 205
    :pswitch_5
    invoke-virtual {v0, v7}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->setLockParam(I)V

    goto :goto_1

    .line 202
    :pswitch_6
    invoke-virtual {v0, v6}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->setLockParam(I)V

    .line 225
    :goto_1
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->listener:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 227
    new-instance v8, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v8}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    if-ne v1, v7, :cond_4

    .line 229
    invoke-virtual {v8, v6}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 230
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "tid\u4e3a\u7a7a\uff0c\u8bf7\u8bfb\u53d6tid\u518d\u64cd\u4f5c"

    .line 231
    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void

    .line 234
    :cond_3
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_2

    :cond_4
    if-ne v1, v5, :cond_5

    .line 237
    invoke-virtual {v8, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 238
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_2

    :cond_5
    if-ne v1, v4, :cond_6

    .line 241
    invoke-virtual {v8, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 242
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v1, v1, 0x30

    .line 245
    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 246
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setHexData(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 249
    :goto_2
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->listener:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 250
    invoke-virtual {v0, v8}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 253
    :cond_7
    iget-object v1, p0, Lcom/example/rederdemo/fragment/LockFragment;->listener:[Ljava/lang/String;

    aget-object v1, v1, v5

    .line 254
    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 255
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->setHexPassword(Ljava/lang/String;)V

    .line 259
    :cond_8
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 260
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGb;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 54
    iget p3, p0, Lcom/example/rederdemo/fragment/LockFragment;->tagType:I

    const/4 v0, 0x0

    const v1, 0x7f090041

    if-ne p3, v1, :cond_0

    const p3, 0x7f0c003b

    .line 55
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    const p2, 0x7f090055

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_6b_lock_area:Landroid/widget/Spinner;

    .line 57
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    const p2, 0x7f090058

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_6b_lock_type:Landroid/widget/Spinner;

    .line 58
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    const p2, 0x7f09005d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_6c_lock_event:Landroid/widget/Button;

    .line 59
    new-instance p2, Lcom/example/rederdemo/fragment/LockFragment$1;

    invoke-direct {p2, p0}, Lcom/example/rederdemo/fragment/LockFragment$1;-><init>(Lcom/example/rederdemo/fragment/LockFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_0
    const v1, 0x7f090031

    if-ne p3, v1, :cond_1

    const p3, 0x7f0c003a

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    const p2, 0x7f09007a

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_lock_6b_address:Landroid/widget/EditText;

    .line 69
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    const p2, 0x7f090056

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_6b_lock_event:Landroid/widget/Button;

    .line 70
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    const p2, 0x7f09007b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_lock_6b_address_query:Landroid/widget/EditText;

    .line 71
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    const p2, 0x7f090057

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_6b_lock_event_query:Landroid/widget/Button;

    .line 72
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_6b_lock_event:Landroid/widget/Button;

    new-instance p2, Lcom/example/rederdemo/fragment/LockFragment$2;

    invoke-direct {p2, p0}, Lcom/example/rederdemo/fragment/LockFragment$2;-><init>(Lcom/example/rederdemo/fragment/LockFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_6b_lock_event_query:Landroid/widget/Button;

    new-instance p2, Lcom/example/rederdemo/fragment/LockFragment$3;

    invoke-direct {p2, p0}, Lcom/example/rederdemo/fragment/LockFragment$3;-><init>(Lcom/example/rederdemo/fragment/LockFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0900da

    if-ne p3, v1, :cond_2

    const p3, 0x7f0c003d

    .line 87
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    const p2, 0x7f090063

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_gb_lock_area:Landroid/widget/Spinner;

    .line 89
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    const p2, 0x7f090065

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_gb_lock_type:Landroid/widget/Spinner;

    .line 90
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    const p2, 0x7f090064

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_gb_lock_event:Landroid/widget/Button;

    .line 91
    new-instance p2, Lcom/example/rederdemo/fragment/LockFragment$4;

    invoke-direct {p2, p0}, Lcom/example/rederdemo/fragment/LockFragment$4;-><init>(Lcom/example/rederdemo/fragment/LockFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0900dd

    if-ne p3, v1, :cond_3

    const p3, 0x7f0c003e

    .line 98
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    const p2, 0x7f090070

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_gjb_lock_area:Landroid/widget/Spinner;

    .line 100
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    const p2, 0x7f090072

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_gjb_lock_type:Landroid/widget/Spinner;

    .line 101
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    const p2, 0x7f090071

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->cus_gjb_lock_event:Landroid/widget/Button;

    .line 102
    new-instance p2, Lcom/example/rederdemo/fragment/LockFragment$5;

    invoke-direct {p2, p0}, Lcom/example/rederdemo/fragment/LockFragment$5;-><init>(Lcom/example/rederdemo/fragment/LockFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 110
    iget-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public receiveListener([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 379
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 380
    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->listener:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public receiveTag(Lcom/example/rederdemo/entity/TagInfo;JI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 370
    iput-object p1, p0, Lcom/example/rederdemo/fragment/LockFragment;->info:Lcom/example/rederdemo/entity/TagInfo;

    .line 371
    iput-wide p2, p0, Lcom/example/rederdemo/fragment/LockFragment;->ant:J

    .line 372
    iput p4, p0, Lcom/example/rederdemo/fragment/LockFragment;->tagType:I

    :cond_0
    return-void
.end method
