.class public Lcom/example/rederdemo/entity/RfidConfigActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "RfidConfigActivity.java"


# instance fields
.field ant_config:Landroid/widget/Button;

.field ant_query:Landroid/widget/Button;

.field auto_mode:Landroid/widget/Spinner;

.field auto_time:Landroid/widget/EditText;

.field base_Speed:Landroid/widget/Spinner;

.field filter_time:Landroid/widget/EditText;

.field frequency:Landroid/widget/Spinner;

.field inventory:Landroid/widget/Spinner;

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

.field q:Landroid/widget/Spinner;

.field rssi_value:Landroid/widget/EditText;

.field session:Landroid/widget/Spinner;

.field spinner1:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->mAntMap:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public antConfig()V
    .locals 4

    .line 236
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;-><init>()V

    .line 237
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->mAntMap:Ljava/util/Hashtable;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->spinner1:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->mAntMap:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->setDicPower(Ljava/util/Hashtable;)V

    .line 239
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 240
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public antQuery()V
    .locals 3

    .line 224
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetPower;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetPower;-><init>()V

    .line 225
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 226
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetPower;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "The query is successful"

    .line 227
    invoke-static {v1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->spinner1:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetPower;->getDicPower()Ljava/util/Hashtable;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetPower;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public autoConfig()V
    .locals 2

    .line 183
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->auto_mode:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->setOnOff(I)V

    .line 185
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->auto_time:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->setFreeTime(I)V

    .line 186
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 187
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public autoQuery()V
    .locals 3

    .line 170
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;-><init>()V

    .line 171
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 172
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "The query is successful"

    .line 173
    invoke-static {v1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->auto_mode:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->getOnOff()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 175
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->auto_time:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->getFreeTime()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAutoDormancy;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public baseConfig()V
    .locals 2

    .line 115
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->base_Speed:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 133
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->base_Speed:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setBaseSpeed(I)V

    goto :goto_0

    :pswitch_0
    const/16 v1, 0xff

    .line 118
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setBaseSpeed(I)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0xd

    .line 130
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setBaseSpeed(I)V

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xc

    .line 127
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setBaseSpeed(I)V

    goto :goto_0

    :pswitch_3
    const/16 v1, 0xb

    .line 124
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setBaseSpeed(I)V

    goto :goto_0

    :pswitch_4
    const/16 v1, 0xa

    .line 121
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setBaseSpeed(I)V

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->session:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setSession(I)V

    .line 137
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->q:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setqValue(I)V

    .line 138
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->inventory:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setInventoryFlag(I)V

    .line 139
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 140
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public baseQuery()V
    .locals 3

    .line 81
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;-><init>()V

    .line 82
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 83
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getRtCode()B

    move-result v1

    if-nez v1, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getBaseSpeed()I

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 102
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->base_Speed:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getBaseSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 99
    :pswitch_0
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->base_Speed:Landroid/widget/Spinner;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->base_Speed:Landroid/widget/Spinner;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->base_Speed:Landroid/widget/Spinner;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 90
    :pswitch_3
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->base_Speed:Landroid/widget/Spinner;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->base_Speed:Landroid/widget/Spinner;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->q:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getqValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 106
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->session:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getSession()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 107
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->inventory:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getInventoryFlag()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public frequencyConfig()V
    .locals 2

    .line 158
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;-><init>()V

    .line 159
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->frequency:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;->setFreqRangeIndex(I)V

    .line 160
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 161
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public frequencyQuery()V
    .locals 3

    .line 145
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;-><init>()V

    .line 146
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 147
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "The query is successful"

    .line 148
    invoke-static {v1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    .line 149
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->getFreqRangeIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    .line 150
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->frequency:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->getFreqRangeIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c004a

    .line 68
    invoke-virtual {p0, p1}, Lcom/example/rederdemo/entity/RfidConfigActivity;->setContentView(I)V

    .line 69
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 70
    invoke-static {}, Lcom/example/rederdemo/util/CheckCommunication;->check()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/example/rederdemo/entity/RfidConfigActivity;->baseQuery()V

    .line 72
    invoke-virtual {p0}, Lcom/example/rederdemo/entity/RfidConfigActivity;->frequencyQuery()V

    .line 73
    invoke-virtual {p0}, Lcom/example/rederdemo/entity/RfidConfigActivity;->upQuery()V

    .line 74
    invoke-virtual {p0}, Lcom/example/rederdemo/entity/RfidConfigActivity;->autoQuery()V

    .line 75
    invoke-virtual {p0}, Lcom/example/rederdemo/entity/RfidConfigActivity;->antQuery()V

    :cond_0
    return-void
.end method

.method public upConfig()V
    .locals 2

    .line 210
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->filter_time:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->setRepeatedTime(I)V

    .line 212
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->rssi_value:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->setRssiTV(I)V

    .line 213
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 214
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public upQuery()V
    .locals 4

    .line 196
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;-><init>()V

    .line 197
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 198
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "The query is successful"

    .line 199
    invoke-static {v1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    .line 200
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 201
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->filter_time:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->getRepeatedTime()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/example/rederdemo/entity/RfidConfigActivity;->rssi_value:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->getRssiTV()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
