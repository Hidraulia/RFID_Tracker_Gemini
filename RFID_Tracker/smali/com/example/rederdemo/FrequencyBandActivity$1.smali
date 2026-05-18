.class Lcom/example/rederdemo/FrequencyBandActivity$1;
.super Ljava/lang/Object;
.source "FrequencyBandActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/FrequencyBandActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/FrequencyBandActivity;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/FrequencyBandActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "924.375"

    const-string v2, "924.125"

    const-string v3, "923.875"

    const-string v4, "923.625"

    const-string v5, "923.375"

    const-string v6, "923.125"

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    .line 278
    :pswitch_0
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xc4

    if-gt v1, v2, :cond_0

    .line 280
    iget-object v2, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, 0x4089160000000000L    # 802.75

    int-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    add-double/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_0
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    new-instance v2, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    iget-object v3, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v3}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-direct {v2, v3, v4}, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$102(Lcom/example/rederdemo/FrequencyBandActivity;Lcom/example/rederdemo/adapter/FrequencyBandAdapter;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    .line 283
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$200(Lcom/example/rederdemo/FrequencyBandActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$100(Lcom/example/rederdemo/FrequencyBandActivity;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 268
    :pswitch_1
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 269
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "866.600"

    invoke-direct {v2, v13, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "866.800"

    invoke-direct {v2, v12, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "867.000"

    invoke-direct {v2, v11, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "867.200"

    invoke-direct {v2, v10, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "867.400"

    invoke-direct {v2, v9, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    new-instance v2, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    iget-object v3, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v3}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-direct {v2, v3, v4}, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$102(Lcom/example/rederdemo/FrequencyBandActivity;Lcom/example/rederdemo/adapter/FrequencyBandAdapter;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    .line 275
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$200(Lcom/example/rederdemo/FrequencyBandActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$100(Lcom/example/rederdemo/FrequencyBandActivity;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 254
    :pswitch_2
    iget-object v14, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v14}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 255
    iget-object v14, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v14}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v14

    new-instance v15, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    invoke-direct {v15, v13, v6, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v6, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v6}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v6

    new-instance v14, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    invoke-direct {v14, v12, v5, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v5, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v5}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    invoke-direct {v6, v11, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v4, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v4}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    invoke-direct {v5, v10, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v3, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v3}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    invoke-direct {v4, v9, v2, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v2, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    invoke-direct {v3, v8, v1, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "924.625"

    invoke-direct {v2, v7, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "924.875"

    const/4 v4, 0x7

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "925.125"

    const/16 v4, 0x8

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    new-instance v2, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    iget-object v3, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v3}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-direct {v2, v3, v4}, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$102(Lcom/example/rederdemo/FrequencyBandActivity;Lcom/example/rederdemo/adapter/FrequencyBandAdapter;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    .line 265
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$200(Lcom/example/rederdemo/FrequencyBandActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$100(Lcom/example/rederdemo/FrequencyBandActivity;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 226
    :pswitch_3
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 227
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "922.250"

    invoke-direct {v2, v13, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "922.750"

    invoke-direct {v2, v12, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "923.250"

    invoke-direct {v2, v11, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "923.750"

    invoke-direct {v2, v10, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "924.250"

    invoke-direct {v2, v9, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "924.750"

    invoke-direct {v2, v8, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "925.250"

    invoke-direct {v2, v7, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "925.750"

    const/4 v4, 0x7

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "926.250"

    const/16 v4, 0x8

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "926.750"

    const/16 v4, 0x9

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "927.250"

    const/16 v4, 0xa

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "927.750"

    const/16 v4, 0xb

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    new-instance v2, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    iget-object v3, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v3}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-direct {v2, v3, v4}, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$102(Lcom/example/rederdemo/FrequencyBandActivity;Lcom/example/rederdemo/adapter/FrequencyBandAdapter;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    .line 251
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$200(Lcom/example/rederdemo/FrequencyBandActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$100(Lcom/example/rederdemo/FrequencyBandActivity;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 217
    :pswitch_4
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 218
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "916.800"

    invoke-direct {v2, v13, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "918.000"

    invoke-direct {v2, v12, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "919.200"

    invoke-direct {v2, v11, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "920.400"

    invoke-direct {v2, v10, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    new-instance v2, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    iget-object v3, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v3}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-direct {v2, v3, v4}, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$102(Lcom/example/rederdemo/FrequencyBandActivity;Lcom/example/rederdemo/adapter/FrequencyBandAdapter;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    .line 223
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$200(Lcom/example/rederdemo/FrequencyBandActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$100(Lcom/example/rederdemo/FrequencyBandActivity;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 207
    :pswitch_5
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 208
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "865.700"

    invoke-direct {v2, v13, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "866.300"

    invoke-direct {v2, v12, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "866.900"

    invoke-direct {v2, v11, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "867.500"

    invoke-direct {v2, v10, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "868.100"

    invoke-direct {v2, v9, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    new-instance v2, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    iget-object v3, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v3}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-direct {v2, v3, v4}, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$102(Lcom/example/rederdemo/FrequencyBandActivity;Lcom/example/rederdemo/adapter/FrequencyBandAdapter;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    .line 214
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$200(Lcom/example/rederdemo/FrequencyBandActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$100(Lcom/example/rederdemo/FrequencyBandActivity;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 151
    :pswitch_6
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 152
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "902.750"

    invoke-direct {v2, v13, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "903.250"

    invoke-direct {v2, v12, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "903.750"

    invoke-direct {v2, v11, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "904.250"

    invoke-direct {v2, v10, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "904.750"

    invoke-direct {v2, v9, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "905.250"

    invoke-direct {v2, v8, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "905.750"

    invoke-direct {v2, v7, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "906.250"

    const/4 v4, 0x7

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "906.750"

    const/16 v4, 0x8

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "907.250"

    const/16 v4, 0x9

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "907.750"

    const/16 v4, 0xa

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "908.250"

    const/16 v4, 0xb

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "908.750"

    const/16 v4, 0xc

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "909.250"

    const/16 v4, 0xd

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "909.750"

    const/16 v4, 0xe

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "910.250"

    const/16 v4, 0xf

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x10

    const-string v4, "910.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x11

    const-string v4, "911.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x12

    const-string v4, "911.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x13

    const-string v4, "912.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x14

    const-string v4, "912.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x15

    const-string v4, "913.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x16

    const-string v4, "913.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x17

    const-string v4, "914.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x18

    const-string v4, "914.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x19

    const-string v4, "915.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x1a

    const-string v4, "915.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x1b

    const-string v4, "916.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x1c

    const-string v4, "916.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x1d

    const-string v4, "917.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x1e

    const-string v4, "917.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x1f

    const-string v4, "918.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x20

    const-string v4, "918.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x21

    const-string v4, "919.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x22

    const-string v4, "919.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x23

    const-string v4, "920.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x24

    const-string v4, "920.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x25

    const-string v4, "921.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x26

    const-string v4, "921.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x27

    const-string v4, "922.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x28

    const-string v4, "922.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x29

    const-string v4, "923.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x2a

    const-string v4, "923.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x2b

    const-string v4, "924.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x2c

    const-string v4, "924.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x2d

    const-string v4, "925.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x2e

    const-string v4, "925.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x2f

    const-string v4, "926.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x30

    const-string v4, "926.750"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v3, 0x31

    const-string v4, "927.250"

    invoke-direct {v2, v3, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    new-instance v2, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    iget-object v3, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v3}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-direct {v2, v3, v4}, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$102(Lcom/example/rederdemo/FrequencyBandActivity;Lcom/example/rederdemo/adapter/FrequencyBandAdapter;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    .line 204
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$200(Lcom/example/rederdemo/FrequencyBandActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$100(Lcom/example/rederdemo/FrequencyBandActivity;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 114
    :pswitch_7
    iget-object v14, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v14}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 115
    iget-object v14, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v14}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v14

    new-instance v15, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v7, "840.625"

    invoke-direct {v15, v13, v7, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v14, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v15, "840.875"

    invoke-direct {v14, v12, v15, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v12, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v14, "841.125"

    invoke-direct {v12, v11, v14, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v11, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v12, "841.375"

    invoke-direct {v11, v10, v12, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v10, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v11, "841.625"

    invoke-direct {v10, v9, v11, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v9, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v10, "841.875"

    invoke-direct {v9, v8, v10, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v9, "842.125"

    const/4 v10, 0x6

    invoke-direct {v8, v10, v9, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v9, "842.375"

    const/4 v10, 0x7

    invoke-direct {v8, v10, v9, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v9, "842.625"

    const/16 v10, 0x8

    invoke-direct {v8, v10, v9, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v9, "842.875"

    const/16 v10, 0x9

    invoke-direct {v8, v10, v9, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v9, "843.125"

    const/16 v10, 0xa

    invoke-direct {v8, v10, v9, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v9, "843.375"

    const/16 v10, 0xb

    invoke-direct {v8, v10, v9, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v9, "843.625"

    const/16 v10, 0xc

    invoke-direct {v8, v10, v9, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v9, "843.875"

    const/16 v10, 0xd

    invoke-direct {v8, v10, v9, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v9, "844.125"

    const/16 v10, 0xe

    invoke-direct {v8, v10, v9, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v9, "844.375"

    const/16 v10, 0xf

    invoke-direct {v8, v10, v9, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v9, 0x10

    const-string v10, "920.625"

    invoke-direct {v8, v9, v10, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v9, 0x11

    const-string v10, "920.875"

    invoke-direct {v8, v9, v10, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v9, 0x12

    const-string v10, "921.125"

    invoke-direct {v8, v9, v10, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v9, 0x13

    const-string v10, "921.375"

    invoke-direct {v8, v9, v10, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v9, 0x14

    const-string v10, "921.625"

    invoke-direct {v8, v9, v10, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v9, 0x15

    const-string v10, "921.875"

    invoke-direct {v8, v9, v10, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v9, 0x16

    const-string v10, "922.125"

    invoke-direct {v8, v9, v10, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v9, 0x17

    const-string v10, "922.375"

    invoke-direct {v8, v9, v10, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v9, 0x18

    const-string v10, "922.625"

    invoke-direct {v8, v9, v10, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v9, 0x19

    const-string v10, "922.875"

    invoke-direct {v8, v9, v10, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v9, 0x1a

    invoke-direct {v8, v9, v6, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v6, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v6}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v8, 0x1b

    invoke-direct {v7, v8, v5, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v5, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v5}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v7, 0x1c

    invoke-direct {v6, v7, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v4, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v4}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v6, 0x1d

    invoke-direct {v5, v6, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v3, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v3}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v5, 0x1e

    invoke-direct {v4, v5, v2, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v4, 0x1f

    invoke-direct {v3, v4, v1, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    new-instance v2, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    iget-object v3, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v3}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-direct {v2, v3, v4}, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$102(Lcom/example/rederdemo/FrequencyBandActivity;Lcom/example/rederdemo/adapter/FrequencyBandAdapter;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    .line 148
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$200(Lcom/example/rederdemo/FrequencyBandActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$100(Lcom/example/rederdemo/FrequencyBandActivity;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 92
    :pswitch_8
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 93
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "840.625"

    invoke-direct {v2, v13, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "840.875"

    invoke-direct {v2, v12, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "841.125"

    invoke-direct {v2, v11, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "841.375"

    invoke-direct {v2, v10, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "841.625"

    invoke-direct {v2, v9, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "841.875"

    invoke-direct {v2, v8, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "842.125"

    const/4 v4, 0x6

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "842.375"

    const/4 v4, 0x7

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "842.625"

    const/16 v4, 0x8

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "842.875"

    const/16 v4, 0x9

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "843.125"

    const/16 v4, 0xa

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "843.375"

    const/16 v4, 0xb

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "843.625"

    const/16 v4, 0xc

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "843.875"

    const/16 v4, 0xd

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "844.125"

    const/16 v4, 0xe

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v3, "844.375"

    const/16 v4, 0xf

    invoke-direct {v2, v4, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    new-instance v2, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    iget-object v3, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v3}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-direct {v2, v3, v4}, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$102(Lcom/example/rederdemo/FrequencyBandActivity;Lcom/example/rederdemo/adapter/FrequencyBandAdapter;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    .line 111
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$200(Lcom/example/rederdemo/FrequencyBandActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$100(Lcom/example/rederdemo/FrequencyBandActivity;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 71
    :pswitch_9
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 72
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v14, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v15, "920.625"

    invoke-direct {v14, v13, v15, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v14, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v15, "920.875"

    invoke-direct {v14, v12, v15, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v12, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v14, "921.125"

    invoke-direct {v12, v11, v14, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v11, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v12, "921.375"

    invoke-direct {v11, v10, v12, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v10, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v11, "921.625"

    invoke-direct {v10, v9, v11, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v9, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v10, "921.875"

    invoke-direct {v9, v8, v10, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v9, "922.125"

    const/4 v10, 0x6

    invoke-direct {v8, v10, v9, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v9, "922.375"

    const/4 v10, 0x7

    invoke-direct {v8, v10, v9, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v9, "922.625"

    const/16 v10, 0x8

    invoke-direct {v8, v10, v9, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const-string v9, "922.875"

    const/16 v10, 0x9

    invoke-direct {v8, v10, v9, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v7, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v7}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v9, 0xa

    invoke-direct {v8, v9, v6, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v6, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v6}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v8, 0xb

    invoke-direct {v7, v8, v5, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v5, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v5}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v7, 0xc

    invoke-direct {v6, v7, v4, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v4, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v4}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v6, 0xd

    invoke-direct {v5, v6, v3, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v3, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v3}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v5, 0xe

    invoke-direct {v4, v5, v2, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v2, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/example/rederdemo/entity/FrequencyBandInfo;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v1, v13}, Lcom/example/rederdemo/entity/FrequencyBandInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    new-instance v2, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    iget-object v3, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v3}, Lcom/example/rederdemo/FrequencyBandActivity;->access$000(Lcom/example/rederdemo/FrequencyBandActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-direct {v2, v3, v4}, Lcom/example/rederdemo/adapter/FrequencyBandAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$102(Lcom/example/rederdemo/FrequencyBandActivity;Lcom/example/rederdemo/adapter/FrequencyBandAdapter;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    .line 89
    iget-object v1, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v1}, Lcom/example/rederdemo/FrequencyBandActivity;->access$200(Lcom/example/rederdemo/FrequencyBandActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, v0, Lcom/example/rederdemo/FrequencyBandActivity$1;->this$0:Lcom/example/rederdemo/FrequencyBandActivity;

    invoke-static {v2}, Lcom/example/rederdemo/FrequencyBandActivity;->access$100(Lcom/example/rederdemo/FrequencyBandActivity;)Lcom/example/rederdemo/adapter/FrequencyBandAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    return-void

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

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
