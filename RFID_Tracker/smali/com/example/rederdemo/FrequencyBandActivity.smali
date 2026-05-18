.class public Lcom/example/rederdemo/FrequencyBandActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FrequencyBandActivity.java"


# instance fields
.field private adapter:Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

.field fre_band_selects:Landroid/widget/EditText;

.field fre_band_switch:Landroid/widget/Spinner;

.field private frequencyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/example/rederdemo/entity/FrequencyBandInfo;",
            ">;"
        }
    .end annotation
.end field

.field frequency_band:Landroid/widget/Spinner;

.field private listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity;->frequencyList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/example/rederdemo/FrequencyBandActivity;->frequencyList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/example/rederdemo/FrequencyBandActivity;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/example/rederdemo/FrequencyBandActivity;->adapter:Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/example/rederdemo/FrequencyBandActivity;Lcom/example/rederdemo/adapter/FrequencyBandAdapter;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/example/rederdemo/FrequencyBandActivity;->adapter:Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/example/rederdemo/FrequencyBandActivity;)Landroid/widget/ListView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/example/rederdemo/FrequencyBandActivity;->listView:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public compareToFre(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/rederdemo/entity/FrequencyBandInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 408
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 410
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 411
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    .line 412
    invoke-virtual {v1}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 413
    invoke-virtual {v1, v2}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->setCheck(Z)V

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 p1, 0x0

    const-string p2, ","

    .line 421
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatterFre(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/rederdemo/entity/FrequencyBandInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 383
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    .line 384
    invoke-virtual {v1}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->isCheck()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 388
    invoke-virtual {p0}, Lcom/example/rederdemo/FrequencyBandActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100122

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 p1, 0x0

    const-string v1, ","

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatterFreState(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/rederdemo/entity/FrequencyBandInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 396
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/4 v2, 0x1

    .line 397
    invoke-virtual {v1, v2}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->setCheck(Z)V

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/example/rederdemo/FrequencyBandActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100122

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    const-string v1, ","

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fre_band_config()V
    .locals 5

    .line 362
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;-><init>()V

    .line 363
    iget-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity;->fre_band_switch:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 364
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->setAutomatically(Ljava/lang/Boolean;)V

    .line 365
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 366
    iget-object v2, p0, Lcom/example/rederdemo/FrequencyBandActivity;->frequencyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    .line 367
    invoke-virtual {v3}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->isCheck()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 368
    invoke-virtual {v3}, Lcom/example/rederdemo/entity/FrequencyBandInfo;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 370
    :cond_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->setListFreqCursor(Ljava/util/List;)V

    .line 371
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 372
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->getRtCode()B

    move-result v1

    if-nez v1, :cond_3

    .line 373
    invoke-virtual {p0}, Lcom/example/rederdemo/FrequencyBandActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10017e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_2

    .line 375
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public fre_band_query()V
    .locals 3

    .line 341
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;-><init>()V

    .line 343
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 344
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->getRtCode()B

    move-result v1

    if-nez v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity;->frequency_band:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->getFreqRangeIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 346
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;-><init>()V

    .line 347
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 348
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity;->fre_band_switch:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->getAutomatically()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 350
    iget-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity;->fre_band_selects:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/example/rederdemo/FrequencyBandActivity;->frequencyList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->getListFreqCursor()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/example/rederdemo/FrequencyBandActivity;->compareToFre(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity;->adapter:Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    invoke-virtual {v0}, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public frequency_range_config()V
    .locals 2

    .line 311
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;-><init>()V

    .line 312
    iget-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity;->frequency_band:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;->setFreqRangeIndex(I)V

    .line 313
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 314
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/example/rederdemo/FrequencyBandActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10017e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public initListener()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity;->frequency_band:Landroid/widget/Spinner;

    new-instance v1, Lcom/example/rederdemo/FrequencyBandActivity$1;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/FrequencyBandActivity$1;-><init>(Lcom/example/rederdemo/FrequencyBandActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public left_left_move()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity;->fre_band_selects:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0038

    .line 48
    invoke-virtual {p0, p1}, Lcom/example/rederdemo/FrequencyBandActivity;->setContentView(I)V

    const p1, 0x7f090103

    .line 49
    invoke-virtual {p0, p1}, Lcom/example/rederdemo/FrequencyBandActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/example/rederdemo/FrequencyBandActivity;->listView:Landroid/widget/ListView;

    .line 50
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 51
    invoke-virtual {p0}, Lcom/example/rederdemo/FrequencyBandActivity;->initListener()V

    .line 55
    invoke-static {}, Lcom/example/rederdemo/util/CheckCommunication;->check()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/example/rederdemo/FrequencyBandActivity;->queryFrequencyRange()V

    :cond_0
    return-void
.end method

.method public queryFrequencyRange()V
    .locals 3

    .line 296
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;-><init>()V

    .line 298
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 299
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity;->frequency_band:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->getFreqRangeIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity;->frequency_band:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 303
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public right_move()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity;->fre_band_selects:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity;->frequencyList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/example/rederdemo/FrequencyBandActivity;->formatterFre(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public right_right_move()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity;->fre_band_selects:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/example/rederdemo/FrequencyBandActivity;->frequencyList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/example/rederdemo/FrequencyBandActivity;->formatterFreState(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/example/rederdemo/FrequencyBandActivity;->adapter:Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    invoke-virtual {v0}, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;->notifyDataSetChanged()V

    return-void
.end method
