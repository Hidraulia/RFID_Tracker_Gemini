.class Lcom/example/rederdemo/ReadOrWriteActivity$12;
.super Ljava/lang/Object;
.source "ReadOrWriteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/rederdemo/ReadOrWriteActivity;->computedSpeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

.field final synthetic val$rateMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/example/rederdemo/ReadOrWriteActivity;Ljava/util/Map;)V
    .locals 0

    .line 880
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iput-object p2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->val$rateMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 883
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v0}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$104(Lcom/example/rederdemo/ReadOrWriteActivity;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/example/rederdemo/ReadOrWriteActivity;->secToTime(J)Ljava/lang/String;

    move-result-object v0

    .line 885
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget v2, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->countTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->countTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 886
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ljh"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v3, v3, Lcom/example/rederdemo/ReadOrWriteActivity;->realTime:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 890
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run getTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run realTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v2, v2, Lcom/example/rederdemo/ReadOrWriteActivity;->realTime:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->countTime:I

    .line 893
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-virtual {v1}, Lcom/example/rederdemo/ReadOrWriteActivity;->stopRead()V

    .line 897
    :cond_0
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v1, v1, Lcom/example/rederdemo/ReadOrWriteActivity;->timeCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (s)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    .line 900
    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->val$rateMap:Ljava/util/Map;

    const-string v3, "after"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 902
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 904
    :cond_1
    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$000(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 905
    :try_start_0
    iget-object v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v3}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$000(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 906
    iget-object v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v3}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$000(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v4}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$200(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 907
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$300(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->notifyDataSetChanged()V

    .line 909
    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v2}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$000(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$400(Lcom/example/rederdemo/ReadOrWriteActivity;Ljava/util/List;)J

    move-result-wide v2

    .line 910
    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v4, v4, Lcom/example/rederdemo/ReadOrWriteActivity;->readCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v4, v4, Lcom/example/rederdemo/ReadOrWriteActivity;->tagCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v6}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$000(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->val$rateMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "after"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 915
    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    sub-long/2addr v2, v0

    iput-wide v2, v4, Lcom/example/rederdemo/ReadOrWriteActivity;->rateValue:J

    .line 916
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-object v0, v0, Lcom/example/rederdemo/ReadOrWriteActivity;->speed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    iget-wide v2, v2, Lcom/example/rederdemo/ReadOrWriteActivity;->rateValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (t/s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    :cond_2
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity$12;->this$0:Lcom/example/rederdemo/ReadOrWriteActivity;

    invoke-static {v0}, Lcom/example/rederdemo/ReadOrWriteActivity;->access$500(Lcom/example/rederdemo/ReadOrWriteActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    .line 907
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
