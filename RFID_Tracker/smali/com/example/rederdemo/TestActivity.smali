.class public Lcom/example/rederdemo/TestActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TestActivity.java"


# instance fields
.field client:Lcom/gg/reader/api/dal/GClient;

.field freq_point:Landroid/widget/Spinner;

.field private mAntMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mmkv:Lcom/tencent/mmkv/MMKV;

.field power_Value:Landroid/widget/Spinner;

.field standing_wave_pre:Landroid/widget/EditText;

.field standing_wave_suf:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 45
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    iput-object v0, p0, Lcom/example/rederdemo/TestActivity;->client:Lcom/gg/reader/api/dal/GClient;

    .line 46
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iput-object v0, p0, Lcom/example/rederdemo/TestActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/example/rederdemo/TestActivity;->mAntMap:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public baudRateQueryEvent()V
    .locals 2

    .line 120
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/example/rederdemo/TestActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 122
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/example/rederdemo/TestActivity;->power_Value:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->getSerialBaudrate()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public baudRateSetEvent()V
    .locals 4

    .line 135
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/example/rederdemo/TestActivity;->power_Value:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->setSerialBaudrate(I)V

    .line 137
    iget-object v1, p0, Lcom/example/rederdemo/TestActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 138
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->getRtCode()B

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/example/rederdemo/TestActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    iget-object v1, p0, Lcom/example/rederdemo/TestActivity;->power_Value:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "baudRate"

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ce2\u7279\u7387\u5df2\u66f4\u6539\u4e3a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/example/rederdemo/TestActivity;->power_Value:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\u8bf7\u9000\u51faapp\u91cd\u65b0\u542f\u52a8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public detection()V
    .locals 4

    .line 101
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;-><init>()V

    .line 102
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 103
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/example/rederdemo/TestActivity;->standing_wave_pre:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->getPreValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/example/rederdemo/TestActivity;->standing_wave_suf:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->getSufValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public initQuery()V
    .locals 3

    .line 67
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/example/rederdemo/TestActivity;->client:Lcom/gg/reader/api/dal/GClient;

    const/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;I)V

    .line 69
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/example/rederdemo/TestActivity;->baudRateQueryEvent()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0053

    .line 54
    invoke-virtual {p0, p1}, Lcom/example/rederdemo/TestActivity;->setContentView(I)V

    .line 55
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 56
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;-><init>()V

    .line 57
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 58
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->getRtCode()B

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0c004f

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->getFreqRangeIndex()I

    move-result p1

    invoke-static {p1}, Lcom/example/rederdemo/util/Frequency;->indexGetFre(I)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 61
    iget-object p1, p0, Lcom/example/rederdemo/TestActivity;->freq_point:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/example/rederdemo/TestActivity;->initQuery()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 151
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 153
    iget-object v0, p0, Lcom/example/rederdemo/TestActivity;->client:Lcom/gg/reader/api/dal/GClient;

    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/dal/GClient;->sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    return-void
.end method

.method public reset_btn()V
    .locals 2

    .line 113
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;-><init>()V

    .line 114
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 115
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void
.end method

.method public standing_wave_send()V
    .locals 3

    .line 77
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestCarrierWave;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgTestCarrierWave;-><init>()V

    const-wide/16 v1, 0x1

    .line 78
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestCarrierWave;->setAntennaNum(Ljava/lang/Long;)V

    .line 79
    iget-object v1, p0, Lcom/example/rederdemo/TestActivity;->freq_point:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestCarrierWave;->setFreqCursor(I)V

    .line 80
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 81
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgTestCarrierWave;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgTestCarrierWave;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgTestCarrierWave;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public standing_wave_stop()V
    .locals 2

    .line 90
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 91
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 92
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
