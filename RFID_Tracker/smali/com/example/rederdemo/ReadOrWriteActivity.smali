.class public Lcom/example/rederdemo/ReadOrWriteActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ReadOrWriteActivity.java"


# instance fields
.field private adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

.field b:Landroid/widget/RadioButton;

.field c:Landroid/widget/RadioButton;

.field clean:Landroid/widget/Button;

.field private client:Lcom/gg/reader/api/dal/GClient;

.field countTime:I

.field cus_epc:Landroid/widget/EditText;

.field cus_gb_read_check:Landroid/widget/CheckBox;

.field cus_gb_read_check_tid:Landroid/widget/CheckBox;

.field cus_gb_read_check_user:Landroid/widget/CheckBox;

.field cus_gb_read_mode:Landroid/widget/Spinner;

.field cus_gjb_read_check:Landroid/widget/CheckBox;

.field cus_gjb_read_check_tid:Landroid/widget/CheckBox;

.field cus_gjb_read_check_user:Landroid/widget/CheckBox;

.field cus_gjb_read_mode:Landroid/widget/Spinner;

.field cus_mode:Landroid/widget/Spinner;

.field cus_pas:Landroid/widget/EditText;

.field cus_readTid_gb_content:Landroid/widget/Spinner;

.field cus_readTid_gjb_content:Landroid/widget/Spinner;

.field cus_read_6b_content:Landroid/widget/Spinner;

.field cus_read_6b_len:Landroid/widget/EditText;

.field cus_read_6b_start:Landroid/widget/EditText;

.field cus_read_epc:Landroid/widget/EditText;

.field cus_read_filter_6b_tid:Landroid/widget/EditText;

.field cus_read_gb_content:Landroid/widget/EditText;

.field cus_read_gb_len:Landroid/widget/EditText;

.field cus_read_gb_start:Landroid/widget/EditText;

.field cus_read_gjb_content:Landroid/widget/EditText;

.field cus_read_gjb_start:Landroid/widget/EditText;

.field cus_read_gjb_user_len:Landroid/widget/EditText;

.field cus_read_match_content:Landroid/widget/EditText;

.field cus_read_mode:Landroid/widget/Spinner;

.field cus_read_pas:Landroid/widget/EditText;

.field cus_read_reserve_len:Landroid/widget/EditText;

.field cus_read_reserve_start:Landroid/widget/EditText;

.field cus_read_start:Landroid/widget/EditText;

.field cus_read_tid:Landroid/widget/EditText;

.field cus_read_tid_len:Landroid/widget/EditText;

.field cus_read_tid_mode:Landroid/widget/Spinner;

.field cus_read_user:Landroid/widget/EditText;

.field cus_read_user_len:Landroid/widget/EditText;

.field cus_read_user_start:Landroid/widget/EditText;

.field cus_start:Landroid/widget/EditText;

.field cus_tid:Landroid/widget/EditText;

.field cus_user:Landroid/widget/EditText;

.field dateFormat:Ljava/text/SimpleDateFormat;

.field filter_read_gb_len:Landroid/widget/EditText;

.field filter_read_gb_userChild:Landroid/widget/Spinner;

.field filter_read_gb_userChild_pas:Landroid/widget/EditText;

.field filter_read_gb_userChild_start:Landroid/widget/EditText;

.field filter_read_gjb_len:Landroid/widget/EditText;

.field filter_read_gjb_pas:Landroid/widget/EditText;

.field filter_read_gjb_user_start:Landroid/widget/EditText;

.field private formatter:Ljava/text/SimpleDateFormat;

.field gMenuItem:Landroid/view/MenuItem;

.field final handlerStop:Landroid/os/Handler;

.field private index:Ljava/lang/Long;

.field info_Reserved:Landroid/widget/TextView;

.field info_epc:Landroid/widget/TextView;

.field info_index:Landroid/widget/TextView;

.field info_tid:Landroid/widget/TextView;

.field info_type:Landroid/widget/TextView;

.field info_userData:Landroid/widget/TextView;

.field private isChecked:[Z

.field private isClient:Z

.field private isReader:Z

.field private isSound:Z

.field loop:Landroid/widget/RadioButton;

.field loopTime:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private r:Ljava/lang/Runnable;

.field rateValue:J

.field read:Landroid/widget/Button;

.field readCount:Landroid/widget/TextView;

.field read_other_pas:Landroid/widget/CheckBox;

.field read_reserve_true:Landroid/widget/CheckBox;

.field read_tid_true:Landroid/widget/CheckBox;

.field read_user_true:Landroid/widget/CheckBox;

.field realTime:Ljava/lang/Integer;

.field private reserveParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

.field single:Landroid/widget/RadioButton;

.field private soundHandler:Landroid/os/Handler;

.field speed:Landroid/widget/TextView;

.field stop:Landroid/widget/Button;

.field tabHead:Landroid/widget/LinearLayout;

.field tagCount:Landroid/widget/TextView;

.field private tagInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/example/rederdemo/entity/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tagInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/example/rederdemo/entity/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tidParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

.field private time:I

.field timeCount:Landroid/widget/TextView;

.field private timeTask:Ljava/lang/Runnable;

.field type:Landroid/widget/RadioGroup;

.field private user6bParam:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

.field private userParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

.field w_6b_user_start:Landroid/widget/EditText;

.field w_6b_user_tid:Landroid/widget/EditText;

.field w_6b_user_value:Landroid/widget/EditText;

.field w_epc:Landroid/widget/EditText;

.field w_gb_epc:Landroid/widget/EditText;

.field w_gb_len:Landroid/widget/EditText;

.field w_gb_pas:Landroid/widget/EditText;

.field w_gb_tid:Landroid/widget/EditText;

.field w_gb_user_epc:Landroid/widget/EditText;

.field w_gb_user_pas:Landroid/widget/EditText;

.field w_gb_user_start:Landroid/widget/EditText;

.field w_gb_user_tid:Landroid/widget/EditText;

.field w_gb_user_value:Landroid/widget/EditText;

.field w_gb_value:Landroid/widget/EditText;

.field w_gjb_epc:Landroid/widget/EditText;

.field w_gjb_len:Landroid/widget/EditText;

.field w_gjb_pas:Landroid/widget/EditText;

.field w_gjb_tid:Landroid/widget/EditText;

.field w_gjb_user_epc:Landroid/widget/EditText;

.field w_gjb_user_pas:Landroid/widget/EditText;

.field w_gjb_user_start:Landroid/widget/EditText;

.field w_gjb_user_tid:Landroid/widget/EditText;

.field w_gjb_user_value:Landroid/widget/EditText;

.field w_gjb_value:Landroid/widget/EditText;

.field w_len:Landroid/widget/EditText;

.field w_pas:Landroid/widget/EditText;

.field w_tid:Landroid/widget/EditText;

.field w_user_epc:Landroid/widget/EditText;

.field w_user_len:Landroid/widget/EditText;

.field w_user_pas:Landroid/widget/EditText;

.field w_user_tid:Landroid/widget/EditText;

.field w_user_value:Landroid/widget/EditText;

.field w_value:Landroid/widget/EditText;

.field way:Landroid/widget/RadioGroup;

.field write_gb_user_child:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 108
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 256
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->client:Lcom/gg/reader/api/dal/GClient;

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isClient:Z

    .line 258
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    const-wide/16 v1, 0x1

    .line 260
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->index:Ljava/lang/Long;

    const/4 v1, 0x0

    .line 262
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tidParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    .line 263
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->userParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    .line 264
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->reserveParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    .line 265
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->user6bParam:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    const/4 v2, 0x3

    new-array v2, v2, [Z

    .line 266
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isChecked:[Z

    .line 267
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->mHandler:Landroid/os/Handler;

    .line 268
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->soundHandler:Landroid/os/Handler;

    .line 269
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->r:Ljava/lang/Runnable;

    .line 270
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->timeTask:Ljava/lang/Runnable;

    .line 271
    iput v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->time:I

    const/4 v2, 0x1

    .line 272
    iput-boolean v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isSound:Z

    .line 273
    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->gMenuItem:Landroid/view/MenuItem;

    .line 274
    iput-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    .line 275
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->formatter:Ljava/text/SimpleDateFormat;

    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->realTime:Ljava/lang/Integer;

    .line 278
    iput v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->countTime:I

    const-wide/16 v0, 0x0

    .line 872
    iput-wide v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->rateValue:J

    .line 1957
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 2179
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$40;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$40;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->handlerStop:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/util/List;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->userParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/example/rederdemo/ReadOrWriteActivity;Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->userParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    return-object p1
.end method

.method static synthetic access$104(Lcom/example/rederdemo/ReadOrWriteActivity;)I
    .locals 1

    .line 108
    iget v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->time:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->time:I

    return v0
.end method

.method static synthetic access$1100(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->reserveParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/example/rederdemo/ReadOrWriteActivity;Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->reserveParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/example/rederdemo/ReadOrWriteActivity;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->computedSpeed()V

    return-void
.end method

.method static synthetic access$1302(Lcom/example/rederdemo/ReadOrWriteActivity;Z)Z
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/example/rederdemo/ReadOrWriteActivity;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->soundTask()V

    return-void
.end method

.method static synthetic access$1500(Lcom/example/rederdemo/ReadOrWriteActivity;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity;->getRecordData(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->r:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->timeTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/example/rederdemo/ReadOrWriteActivity;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->upDataPane()V

    return-void
.end method

.method static synthetic access$200(Lcom/example/rederdemo/ReadOrWriteActivity;)Ljava/util/Map;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/example/rederdemo/adapter/RecycleViewAdapter;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/example/rederdemo/ReadOrWriteActivity;Ljava/util/List;)J
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity;->getReadCount(Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500(Lcom/example/rederdemo/ReadOrWriteActivity;)Landroid/os/Handler;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/example/rederdemo/ReadOrWriteActivity;)Landroid/os/Handler;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->soundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/dal/GClient;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->client:Lcom/gg/reader/api/dal/GClient;

    return-object p0
.end method

.method static synthetic access$800(Lcom/example/rederdemo/ReadOrWriteActivity;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->initPane()V

    return-void
.end method

.method static synthetic access$900(Lcom/example/rederdemo/ReadOrWriteActivity;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tidParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    return-object p0
.end method

.method static synthetic access$902(Lcom/example/rederdemo/ReadOrWriteActivity;Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tidParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    return-object p1
.end method

.method private computedSpeed()V
    .locals 4

    .line 874
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 875
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->loopTime:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x989298

    .line 876
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->realTime:Ljava/lang/Integer;

    goto :goto_0

    .line 878
    :cond_0
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->loopTime:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->realTime:Ljava/lang/Integer;

    .line 880
    :goto_0
    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity$12;

    invoke-direct {v1, p0, v0}, Lcom/example/rederdemo/ReadOrWriteActivity$12;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->r:Ljava/lang/Runnable;

    .line 923
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getReadCount(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/rederdemo/entity/TagInfo;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 967
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 968
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getCount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private getRecordData(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/rederdemo/entity/TagInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2162
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2164
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/example/rederdemo/entity/TagInfo;

    .line 2165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getIndex()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2166
    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2167
    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2168
    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    move-object v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2169
    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2
    move-object v4, v5

    :goto_3
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2170
    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getReservedData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getReservedData()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_3
    move-object v4, v5

    :goto_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getCount()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Lcom/example/rederdemo/entity/TagInfo;->getReadTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2173
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method

.method private initPane()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 941
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->index:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 942
    iput v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->time:I

    const-wide/16 v0, 0x0

    .line 943
    iput-wide v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->rateValue:J

    .line 944
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 945
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 946
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v0}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->notifyDataSetChanged()V

    .line 947
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagCount:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->readCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->timeCount:Landroid/widget/TextView;

    const-string v1, "00:00:00 (s)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->speed:Landroid/widget/TextView;

    const-string v1, "0 (t/s)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->setThisPosition(Ljava/lang/Integer;)V

    return-void
.end method

.method private soundTask()V
    .locals 4

    .line 927
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$13;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$13;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->timeTask:Ljava/lang/Runnable;

    .line 936
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->soundHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private upDataPane()V
    .locals 4

    .line 957
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 958
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 959
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v0}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->notifyDataSetChanged()V

    .line 960
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->readCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/example/rederdemo/ReadOrWriteActivity;->getReadCount(Ljava/util/List;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public cleanData()V
    .locals 2

    .line 628
    iget-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isClient:Z

    if-eqz v0, :cond_0

    .line 629
    invoke-direct {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->initPane()V

    goto :goto_0

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public cusRead()V
    .locals 6

    .line 1605
    iget-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isClient:Z

    if-eqz v0, :cond_4

    .line 1606
    iget-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    if-nez v0, :cond_3

    .line 1607
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f090041

    const-string v2, "OK"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    .line 1608
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1609
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/ReadOrWriteActivity;->initCusRead(Landroid/view/View;)V

    .line 1610
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1611
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1612
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$32;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$32;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1689
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1690
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1692
    :cond_0
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f090031

    if-ne v0, v1, :cond_1

    .line 1693
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001f

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090083

    .line 1694
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_filter_6b_tid:Landroid/widget/EditText;

    const v1, 0x7f090080

    .line 1695
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_6b_content:Landroid/widget/Spinner;

    const v1, 0x7f090082

    .line 1696
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_6b_start:Landroid/widget/EditText;

    const v1, 0x7f090081

    .line 1697
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_6b_len:Landroid/widget/EditText;

    .line 1698
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1699
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1700
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$33;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$33;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1744
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1745
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1746
    :cond_1
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0900da

    const/4 v5, 0x1

    if-ne v0, v1, :cond_2

    .line 1747
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0020

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090066

    .line 1748
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gb_read_check:Landroid/widget/CheckBox;

    const v1, 0x7f090069

    .line 1749
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gb_read_mode:Landroid/widget/Spinner;

    const v1, 0x7f090086

    .line 1750
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_gb_start:Landroid/widget/EditText;

    const v1, 0x7f090084

    .line 1751
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_gb_content:Landroid/widget/EditText;

    const v1, 0x7f090067

    .line 1752
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gb_read_check_tid:Landroid/widget/CheckBox;

    const v1, 0x7f09007e

    .line 1753
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_readTid_gb_content:Landroid/widget/Spinner;

    const v1, 0x7f0900bf

    .line 1754
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->filter_read_gb_len:Landroid/widget/EditText;

    const v1, 0x7f090068

    .line 1755
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gb_read_check_user:Landroid/widget/CheckBox;

    const v1, 0x7f0900c0

    .line 1756
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->filter_read_gb_userChild:Landroid/widget/Spinner;

    const v1, 0x7f0900c2

    .line 1757
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->filter_read_gb_userChild_start:Landroid/widget/EditText;

    const v1, 0x7f090085

    .line 1758
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_gb_len:Landroid/widget/EditText;

    const v1, 0x7f0900c1

    .line 1759
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->filter_read_gb_userChild_pas:Landroid/widget/EditText;

    .line 1761
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1762
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1763
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$34;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$34;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1837
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1838
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1839
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gb_read_check_tid:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1840
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gb_read_check_user:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 1841
    :cond_2
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0900dd

    if-ne v0, v1, :cond_5

    .line 1842
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090073

    .line 1843
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gjb_read_check:Landroid/widget/CheckBox;

    const v1, 0x7f090076

    .line 1844
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gjb_read_mode:Landroid/widget/Spinner;

    const v1, 0x7f090088

    .line 1845
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_gjb_start:Landroid/widget/EditText;

    const v1, 0x7f090087

    .line 1846
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_gjb_content:Landroid/widget/EditText;

    const v1, 0x7f090074

    .line 1847
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gjb_read_check_tid:Landroid/widget/CheckBox;

    const v1, 0x7f09007f

    .line 1848
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_readTid_gjb_content:Landroid/widget/Spinner;

    const v1, 0x7f0900c3

    .line 1849
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->filter_read_gjb_len:Landroid/widget/EditText;

    const v1, 0x7f090075

    .line 1850
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gjb_read_check_user:Landroid/widget/CheckBox;

    const v1, 0x7f0900c5

    .line 1851
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->filter_read_gjb_user_start:Landroid/widget/EditText;

    const v1, 0x7f090089

    .line 1852
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_gjb_user_len:Landroid/widget/EditText;

    const v1, 0x7f0900c4

    .line 1853
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->filter_read_gjb_pas:Landroid/widget/EditText;

    .line 1855
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1856
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1857
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$35;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$35;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1929
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1930
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1931
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gjb_read_check_tid:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1932
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gjb_read_check_user:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1933
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_gjb_read_mode:Landroid/widget/Spinner;

    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity$36;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$36;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 1950
    :cond_3
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 1953
    :cond_4
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public exportCsv()V
    .locals 5

    .line 2083
    iget-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    if-nez v0, :cond_0

    .line 2084
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2085
    new-instance v1, Lme/weyye/hipermission/PermissionItem;

    const v2, 0x7f080088

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "\u5b58\u50a8"

    invoke-direct {v1, v3, v4, v2}, Lme/weyye/hipermission/PermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2086
    invoke-static {p0}, Lme/weyye/hipermission/HiPermission;->create(Landroid/content/Context;)Lme/weyye/hipermission/HiPermission;

    move-result-object v1

    const-string v2, "\u5bfc\u51facsv\u6240\u9700\u6743\u9650"

    .line 2087
    invoke-virtual {v1, v2}, Lme/weyye/hipermission/HiPermission;->title(Ljava/lang/String;)Lme/weyye/hipermission/HiPermission;

    move-result-object v1

    .line 2088
    invoke-virtual {v1, v0}, Lme/weyye/hipermission/HiPermission;->permissions(Ljava/util/List;)Lme/weyye/hipermission/HiPermission;

    move-result-object v0

    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity$39;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$39;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    .line 2089
    invoke-virtual {v0, v1}, Lme/weyye/hipermission/HiPermission;->checkMutiPermission(Lme/weyye/hipermission/PermissionCallback;)V

    goto :goto_0

    .line 2140
    :cond_0
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public exportTxt()V
    .locals 5

    .line 2018
    iget-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    if-nez v0, :cond_0

    .line 2019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2020
    new-instance v1, Lme/weyye/hipermission/PermissionItem;

    const v2, 0x7f080088

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "\u5b58\u50a8"

    invoke-direct {v1, v3, v4, v2}, Lme/weyye/hipermission/PermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2021
    invoke-static {p0}, Lme/weyye/hipermission/HiPermission;->create(Landroid/content/Context;)Lme/weyye/hipermission/HiPermission;

    move-result-object v1

    const-string v2, "\u5bfc\u51fatxt\u6240\u9700\u6743\u9650"

    .line 2022
    invoke-virtual {v1, v2}, Lme/weyye/hipermission/HiPermission;->title(Ljava/lang/String;)Lme/weyye/hipermission/HiPermission;

    move-result-object v1

    .line 2023
    invoke-virtual {v1, v0}, Lme/weyye/hipermission/HiPermission;->permissions(Ljava/util/List;)Lme/weyye/hipermission/HiPermission;

    move-result-object v0

    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity$38;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$38;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    .line 2024
    invoke-virtual {v0, v1}, Lme/weyye/hipermission/HiPermission;->checkMutiPermission(Lme/weyye/hipermission/PermissionCallback;)V

    goto :goto_0

    .line 2077
    :cond_0
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public fab_excel()V
    .locals 5

    .line 1961
    iget-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    if-nez v0, :cond_0

    .line 1962
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1963
    new-instance v1, Lme/weyye/hipermission/PermissionItem;

    const v2, 0x7f080088

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "\u5b58\u50a8"

    invoke-direct {v1, v3, v4, v2}, Lme/weyye/hipermission/PermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1964
    invoke-static {p0}, Lme/weyye/hipermission/HiPermission;->create(Landroid/content/Context;)Lme/weyye/hipermission/HiPermission;

    move-result-object v1

    const-string v2, "\u5bfc\u51faexcel\u6240\u9700\u6743\u9650"

    .line 1965
    invoke-virtual {v1, v2}, Lme/weyye/hipermission/HiPermission;->title(Ljava/lang/String;)Lme/weyye/hipermission/HiPermission;

    move-result-object v1

    .line 1966
    invoke-virtual {v1, v0}, Lme/weyye/hipermission/HiPermission;->permissions(Ljava/util/List;)Lme/weyye/hipermission/HiPermission;

    move-result-object v0

    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity$37;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$37;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    .line 1967
    invoke-virtual {v0, v1}, Lme/weyye/hipermission/HiPermission;->checkMutiPermission(Lme/weyye/hipermission/PermissionCallback;)V

    goto :goto_0

    .line 2011
    :cond_0
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getTabHead()V
    .locals 9

    .line 827
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 828
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 829
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100176

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100172

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isChecked:[Z

    new-instance v5, Lcom/example/rederdemo/ReadOrWriteActivity$11;

    invoke-direct {v5, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$11;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v0, v1, v2, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 836
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity$10;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$10;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    const-string v2, "confirm"

    .line 837
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity$9;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$9;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    const-string v2, "cancel"

    .line 842
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 848
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    .line 850
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/high16 v5, 0x41b80000    # 23.0f

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextSize(F)V

    const/4 v2, -0x2

    .line 851
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 852
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/16 v6, 0x4b

    const/16 v7, 0x57

    invoke-static {v3, v7, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 853
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v3, v7, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 855
    :try_start_0
    const-class v1, Landroid/support/v7/app/AlertDialog;

    const-string v2, "mAlert"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 856
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 857
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 859
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mTitleView"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 860
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 861
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 862
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 863
    invoke-static {v3, v7, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 867
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 865
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserDataChild()Ljava/lang/Integer;
    .locals 1

    .line 1523
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->write_gb_user_child:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    .line 1525
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public initCusRead(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09008b

    .line 1568
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_mode:Landroid/widget/Spinner;

    const v0, 0x7f09008f

    .line 1569
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_start:Landroid/widget/EditText;

    const v0, 0x7f09008a

    .line 1570
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_match_content:Landroid/widget/EditText;

    const v0, 0x7f090091

    .line 1574
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_tid_mode:Landroid/widget/Spinner;

    const v0, 0x7f090090

    .line 1575
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_tid_len:Landroid/widget/EditText;

    const v0, 0x7f09012b

    .line 1576
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->read_tid_true:Landroid/widget/CheckBox;

    const v0, 0x7f090093

    .line 1577
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_user_start:Landroid/widget/EditText;

    const v0, 0x7f090092

    .line 1578
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_user_len:Landroid/widget/EditText;

    const v0, 0x7f09012c

    .line 1579
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->read_user_true:Landroid/widget/CheckBox;

    const v0, 0x7f09008e

    .line 1580
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_reserve_start:Landroid/widget/EditText;

    const v0, 0x7f09008d

    .line 1581
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_reserve_len:Landroid/widget/EditText;

    const v0, 0x7f09012a

    .line 1582
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->read_reserve_true:Landroid/widget/CheckBox;

    const v0, 0x7f090129

    .line 1583
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->read_other_pas:Landroid/widget/CheckBox;

    const v0, 0x7f09008c

    .line 1584
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_pas:Landroid/widget/EditText;

    .line 1585
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->cus_read_mode:Landroid/widget/Spinner;

    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$31;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$31;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public initRecycleView()V
    .locals 3

    .line 297
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 298
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    const v2, 0x7f09012d

    .line 299
    invoke-virtual {p0, v2}, Lcom/example/rederdemo/ReadOrWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 300
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 301
    new-instance v0, Landroid/support/v7/widget/DividerItemDecoration;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 302
    new-instance v0, Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    .line 303
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 283
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 284
    invoke-virtual {p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity;->setContentView(I)V

    .line 285
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 286
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 287
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isClient"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isClient:Z

    if-eqz p1, :cond_0

    .line 289
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/example/rederdemo/ReadOrWriteActivity;->subHandler(Lcom/gg/reader/api/dal/GClient;)V

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->initRecycleView()V

    .line 292
    invoke-static {p0}, Lcom/example/rederdemo/util/UtilSound;->initSoundPool(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 744
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 745
    iget-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isClient:Z

    if-eqz v0, :cond_1

    .line 746
    iget-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    if-eqz v0, :cond_1

    .line 747
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 748
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 749
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 752
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x131

    if-eq p1, v0, :cond_0

    const/16 v0, 0x26b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x26d

    if-ne p1, v0, :cond_1

    .line 2208
    :cond_0
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->readCard()V

    .line 2211
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 2239
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 786
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f09010b

    const v1, 0x7f10017e

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v0, :cond_4

    const v0, 0x7f090159

    const/4 v4, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x7f09015f

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 810
    :cond_0
    iget-boolean p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isSound:Z

    if-eqz p1, :cond_1

    .line 811
    iput-boolean v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isSound:Z

    .line 812
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->gMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 814
    :cond_1
    iput-boolean v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isSound:Z

    .line 815
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->gMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 788
    :cond_2
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;-><init>()V

    .line 789
    invoke-virtual {p1, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setqValue(I)V

    .line 790
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setInventoryFlag(I)V

    .line 791
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 792
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->getRtCode()B

    move-result v0

    if-nez v0, :cond_3

    .line 793
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 795
    :cond_3
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_4
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;-><init>()V

    const/4 v0, 0x4

    .line 800
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setqValue(I)V

    .line 801
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setInventoryFlag(I)V

    .line 802
    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 803
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->getRtCode()B

    move-result v0

    if-nez v0, :cond_5

    .line 804
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :cond_5
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return v3
.end method

.method protected onStop()V
    .locals 2

    .line 761
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 762
    iget-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isClient:Z

    if-eqz v0, :cond_1

    .line 763
    iget-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    if-eqz v0, :cond_1

    .line 764
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 765
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 766
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 767
    iput-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    .line 768
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 770
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public pooled6bData(Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/example/rederdemo/entity/TagInfo;",
            ">;"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    const-wide/16 v2, 0x1

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/rederdemo/entity/TagInfo;

    .line 668
    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->getTid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v4}, Lcom/example/rederdemo/entity/TagInfo;->getCount()Ljava/lang/Long;

    move-result-object v4

    .line 669
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->getRssi()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/rederdemo/entity/TagInfo;->setRssi(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0, v2}, Lcom/example/rederdemo/entity/TagInfo;->setCount(Ljava/lang/Long;)V

    .line 672
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->getTid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 674
    :cond_0
    new-instance v0, Lcom/example/rederdemo/entity/TagInfo;

    invoke-direct {v0}, Lcom/example/rederdemo/entity/TagInfo;-><init>()V

    .line 675
    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->index:Ljava/lang/Long;

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setIndex(Ljava/lang/Long;)V

    const-string v4, "6B"

    .line 676
    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setType(Ljava/lang/String;)V

    .line 677
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setCount(Ljava/lang/Long;)V

    .line 678
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->getUserdata()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setUserData(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->getTid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 680
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setTid(Ljava/lang/String;)V

    .line 682
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/rederdemo/entity/TagInfo;->setRssi(Ljava/lang/String;)V

    .line 683
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->getTid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->index:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->index:Ljava/lang/Long;

    .line 687
    :goto_0
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    return-object p1
.end method

.method public pooled6cData(Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/example/rederdemo/entity/TagInfo;",
            ">;"
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    const-wide/16 v2, 0x1

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/rederdemo/entity/TagInfo;

    .line 639
    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v4}, Lcom/example/rederdemo/entity/TagInfo;->getCount()Ljava/lang/Long;

    move-result-object v4

    .line 640
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getRssi()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/rederdemo/entity/TagInfo;->setRssi(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getReserved()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/rederdemo/entity/TagInfo;->setReservedData(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getUserdata()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/rederdemo/entity/TagInfo;->setUserData(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0, v2}, Lcom/example/rederdemo/entity/TagInfo;->setCount(Ljava/lang/Long;)V

    .line 645
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 647
    :cond_0
    new-instance v0, Lcom/example/rederdemo/entity/TagInfo;

    invoke-direct {v0}, Lcom/example/rederdemo/entity/TagInfo;-><init>()V

    .line 648
    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->index:Ljava/lang/Long;

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setIndex(Ljava/lang/Long;)V

    const-string v4, "6C"

    .line 649
    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setType(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setEpc(Ljava/lang/String;)V

    .line 651
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setCount(Ljava/lang/Long;)V

    .line 652
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getUserdata()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setUserData(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getReserved()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setReservedData(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setTid(Ljava/lang/String;)V

    .line 655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/rederdemo/entity/TagInfo;->setRssi(Ljava/lang/String;)V

    .line 656
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/example/rederdemo/entity/TagInfo;->setReadTime(Ljava/util/Date;)V

    .line 657
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->index:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->index:Ljava/lang/Long;

    .line 661
    :goto_0
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    return-object p1
.end method

.method public pooledGJbData(Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/example/rederdemo/entity/TagInfo;",
            ">;"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getEpc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    const-wide/16 v2, 0x1

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getTid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getEpc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/rederdemo/entity/TagInfo;

    .line 719
    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getTid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getEpc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v4}, Lcom/example/rederdemo/entity/TagInfo;->getCount()Ljava/lang/Long;

    move-result-object v4

    .line 720
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getRssi()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/rederdemo/entity/TagInfo;->setRssi(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0, v2}, Lcom/example/rederdemo/entity/TagInfo;->setCount(Ljava/lang/Long;)V

    .line 723
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getEpc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 725
    :cond_0
    new-instance v0, Lcom/example/rederdemo/entity/TagInfo;

    invoke-direct {v0}, Lcom/example/rederdemo/entity/TagInfo;-><init>()V

    .line 726
    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->index:Ljava/lang/Long;

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setIndex(Ljava/lang/Long;)V

    const-string v4, "GJB"

    .line 727
    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setType(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getEpc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setEpc(Ljava/lang/String;)V

    .line 729
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setCount(Ljava/lang/Long;)V

    .line 730
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getUserdata()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setUserData(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setTid(Ljava/lang/String;)V

    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/rederdemo/entity/TagInfo;->setRssi(Ljava/lang/String;)V

    .line 733
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/example/rederdemo/entity/TagInfo;->setReadTime(Ljava/util/Date;)V

    .line 734
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getTid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getEpc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->index:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->index:Ljava/lang/Long;

    .line 737
    :goto_0
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    return-object p1
.end method

.method public pooledGbData(Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/example/rederdemo/entity/TagInfo;",
            ">;"
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getEpc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    const-wide/16 v2, 0x1

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getTid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getEpc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/rederdemo/entity/TagInfo;

    .line 694
    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getTid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getEpc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v4}, Lcom/example/rederdemo/entity/TagInfo;->getCount()Ljava/lang/Long;

    move-result-object v4

    .line 695
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getRssi()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/rederdemo/entity/TagInfo;->setRssi(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0, v2}, Lcom/example/rederdemo/entity/TagInfo;->setCount(Ljava/lang/Long;)V

    .line 698
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getEpc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 700
    :cond_0
    new-instance v0, Lcom/example/rederdemo/entity/TagInfo;

    invoke-direct {v0}, Lcom/example/rederdemo/entity/TagInfo;-><init>()V

    .line 701
    iget-object v4, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->index:Ljava/lang/Long;

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setIndex(Ljava/lang/Long;)V

    const-string v4, "GB"

    .line 702
    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setType(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getEpc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setEpc(Ljava/lang/String;)V

    .line 704
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setCount(Ljava/lang/Long;)V

    .line 705
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getUserdata()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setUserData(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/example/rederdemo/entity/TagInfo;->setTid(Ljava/lang/String;)V

    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/rederdemo/entity/TagInfo;->setRssi(Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getTid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->getEpc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->index:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->index:Ljava/lang/Long;

    .line 712
    :goto_0
    iget-object p1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoMap:Ljava/util/Map;

    return-object p1
.end method

.method public readCard()V
    .locals 11

    .line 373
    iget-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isClient:Z

    if-eqz v0, :cond_16

    .line 374
    iget-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    if-nez v0, :cond_15

    .line 375
    invoke-direct {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->initPane()V

    .line 376
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f090041

    const/4 v2, 0x4

    const/4 v3, 0x2

    const-string v4, "Start ReadCard"

    const/4 v5, 0x6

    const v6, 0x7f090159

    const-wide/16 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v0, v1, :cond_7

    .line 377
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;-><init>()V

    .line 378
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 379
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->way:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 380
    invoke-virtual {v0, v9}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V

    goto :goto_0

    .line 382
    :cond_0
    iput v9, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->countTime:I

    .line 383
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->loopTime:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    invoke-virtual {v0, v10}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V

    goto :goto_0

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->loopTime:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u5faa\u73af\u65f6\u95f4\u4e0d\u80fd\u4e3a0"

    .line 386
    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 389
    :cond_2
    invoke-virtual {v0, v10}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V

    .line 425
    :goto_0
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isChecked:[Z

    aget-boolean v1, v1, v9

    if-eqz v1, :cond_3

    .line 426
    new-instance v1, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>()V

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tidParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    .line 427
    invoke-virtual {v1, v9}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setMode(I)V

    .line 428
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tidParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-virtual {v1, v5}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setLen(I)V

    .line 429
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tidParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V

    .line 431
    :cond_3
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isChecked:[Z

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_4

    .line 432
    new-instance v1, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;-><init>()V

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->userParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    .line 433
    invoke-virtual {v1, v9}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->setStart(I)V

    .line 434
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->userParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-virtual {v1, v5}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->setLen(I)V

    .line 435
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->userParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)V

    .line 437
    :cond_4
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isChecked:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_5

    .line 438
    new-instance v1, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;-><init>()V

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->reserveParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    .line 439
    invoke-virtual {v1, v9}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;->setStart(I)V

    .line 440
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->reserveParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;->setLen(I)V

    .line 441
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->reserveParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadReserved(Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;)V

    .line 443
    :cond_5
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 444
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtCode()B

    move-result v1

    if-nez v1, :cond_6

    .line 445
    invoke-static {v4}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    .line 446
    iput-boolean v10, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    .line 447
    invoke-direct {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->computedSpeed()V

    .line 448
    invoke-direct {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->soundTask()V

    goto/16 :goto_4

    .line 450
    :cond_6
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->handlerStop:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 451
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 453
    :cond_7
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f090031

    if-ne v0, v1, :cond_b

    .line 454
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;-><init>()V

    .line 455
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setAntennaEnable(Ljava/lang/Long;)V

    .line 456
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->way:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, v6, :cond_8

    .line 457
    invoke-virtual {v0, v9}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setInventoryMode(I)V

    goto :goto_1

    .line 459
    :cond_8
    invoke-virtual {v0, v10}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setInventoryMode(I)V

    .line 480
    :goto_1
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isChecked:[Z

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_9

    .line 481
    new-instance v1, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;-><init>()V

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->user6bParam:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    .line 482
    invoke-virtual {v1, v9}, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->setStart(I)V

    .line 483
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->user6bParam:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->setLen(I)V

    .line 484
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->user6bParam:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setReadUserdata(Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;)V

    .line 486
    :cond_9
    invoke-virtual {v0, v9}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setArea(I)V

    .line 487
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 488
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->getRtCode()B

    move-result v1

    if-nez v1, :cond_a

    .line 489
    invoke-static {v4}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    .line 490
    iput-boolean v10, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    .line 491
    invoke-direct {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->computedSpeed()V

    .line 492
    invoke-direct {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->soundTask()V

    goto/16 :goto_4

    .line 494
    :cond_a
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->handlerStop:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 495
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 497
    :cond_b
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0900da

    if-ne v0, v1, :cond_10

    .line 498
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;-><init>()V

    .line 499
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setAntennaEnable(Ljava/lang/Long;)V

    .line 500
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->way:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, v6, :cond_c

    .line 501
    invoke-virtual {v0, v9}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setInventoryMode(I)V

    goto :goto_2

    .line 503
    :cond_c
    invoke-virtual {v0, v10}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setInventoryMode(I)V

    .line 524
    :goto_2
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isChecked:[Z

    aget-boolean v1, v1, v9

    if-eqz v1, :cond_d

    .line 525
    new-instance v1, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>()V

    .line 526
    invoke-virtual {v1, v9}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setMode(I)V

    .line 527
    invoke-virtual {v1, v5}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setLen(I)V

    .line 528
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V

    .line 530
    :cond_d
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isChecked:[Z

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_e

    .line 531
    new-instance v1, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;-><init>()V

    .line 532
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->setStart(I)V

    .line 533
    invoke-virtual {v1, v10}, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->setLen(I)V

    const/16 v2, 0x30

    .line 534
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->setChildArea(I)V

    .line 535
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;)V

    .line 537
    :cond_e
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 538
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->getRtCode()B

    move-result v1

    if-nez v1, :cond_f

    .line 539
    invoke-static {v4}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    .line 540
    iput-boolean v10, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    .line 541
    invoke-direct {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->computedSpeed()V

    .line 542
    invoke-direct {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->soundTask()V

    goto/16 :goto_4

    .line 544
    :cond_f
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->handlerStop:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 545
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 547
    :cond_10
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0900dd

    if-ne v0, v1, :cond_17

    .line 548
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;-><init>()V

    .line 549
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setAntennaEnable(Ljava/lang/Long;)V

    .line 550
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->way:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, v6, :cond_11

    .line 551
    invoke-virtual {v0, v9}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setInventoryMode(I)V

    goto :goto_3

    .line 553
    :cond_11
    invoke-virtual {v0, v10}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setInventoryMode(I)V

    .line 574
    :goto_3
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isChecked:[Z

    aget-boolean v1, v1, v9

    if-eqz v1, :cond_12

    .line 575
    new-instance v1, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>()V

    .line 576
    invoke-virtual {v1, v9}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setMode(I)V

    .line 577
    invoke-virtual {v1, v5}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setLen(I)V

    .line 578
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V

    .line 580
    :cond_12
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isChecked:[Z

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_13

    .line 581
    new-instance v1, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;-><init>()V

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->userParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    .line 582
    invoke-virtual {v1, v9}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->setStart(I)V

    .line 583
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->userParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->setLen(I)V

    .line 584
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->userParam:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)V

    .line 587
    :cond_13
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 588
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->getRtCode()B

    move-result v1

    if-nez v1, :cond_14

    .line 589
    invoke-static {v4}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    .line 590
    iput-boolean v10, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    .line 591
    invoke-direct {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->computedSpeed()V

    .line 592
    invoke-direct {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->soundTask()V

    goto :goto_4

    .line 594
    :cond_14
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->handlerStop:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 595
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_4

    .line 599
    :cond_15
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->stopRead()V

    goto :goto_4

    .line 603
    :cond_16
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :cond_17
    :goto_4
    return-void
.end method

.method public secToTime(J)Ljava/lang/String;
    .locals 2

    .line 975
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->formatter:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT+00:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 977
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->formatter:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public stopRead()V
    .locals 2

    .line 610
    iget-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isClient:Z

    if-eqz v0, :cond_1

    .line 611
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 613
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 614
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 615
    iput-boolean v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->isReader:Z

    const-string v0, "Stop Success"

    .line 616
    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Stop Fail"

    .line 618
    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_1
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public subHandler(Lcom/gg/reader/api/dal/GClient;)V
    .locals 1

    .line 308
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$1;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$1;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    iput-object v0, p1, Lcom/gg/reader/api/dal/GClient;->onTagEpcLog:Lcom/gg/reader/api/dal/HandlerTagEpcLog;

    .line 317
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$2;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$2;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    iput-object v0, p1, Lcom/gg/reader/api/dal/GClient;->onTagEpcOver:Lcom/gg/reader/api/dal/HandlerTagEpcOver;

    .line 322
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$3;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$3;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    iput-object v0, p1, Lcom/gg/reader/api/dal/GClient;->onTag6bLog:Lcom/gg/reader/api/dal/HandlerTag6bLog;

    .line 331
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$4;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$4;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    iput-object v0, p1, Lcom/gg/reader/api/dal/GClient;->onTag6bOver:Lcom/gg/reader/api/dal/HandlerTag6bOver;

    .line 336
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$5;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$5;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    iput-object v0, p1, Lcom/gg/reader/api/dal/GClient;->onTagGbLog:Lcom/gg/reader/api/dal/HandlerTagGbLog;

    .line 345
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$6;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$6;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    iput-object v0, p1, Lcom/gg/reader/api/dal/GClient;->onTagGbOver:Lcom/gg/reader/api/dal/HandlerTagGbOver;

    .line 350
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$7;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$7;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    iput-object v0, p1, Lcom/gg/reader/api/dal/GClient;->onTagGJbLog:Lcom/gg/reader/api/dal/HandlerTagGJbLog;

    .line 360
    new-instance v0, Lcom/example/rederdemo/ReadOrWriteActivity$8;

    invoke-direct {v0, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$8;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    iput-object v0, p1, Lcom/gg/reader/api/dal/GClient;->onTagGJbOver:Lcom/gg/reader/api/dal/HandlerTagGJbOver;

    return-void
.end method

.method public tagInfo()V
    .locals 4

    .line 1544
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v0}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1545
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0051

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900ed

    .line 1546
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->info_index:Landroid/widget/TextView;

    const v1, 0x7f0900ef

    .line 1547
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->info_type:Landroid/widget/TextView;

    const v1, 0x7f0900ec

    .line 1548
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->info_epc:Landroid/widget/TextView;

    const v1, 0x7f0900ee

    .line 1549
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->info_tid:Landroid/widget/TextView;

    const v1, 0x7f0900f0

    .line 1550
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->info_userData:Landroid/widget/TextView;

    const v1, 0x7f0900eb

    .line 1551
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->info_Reserved:Landroid/widget/TextView;

    .line 1552
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1553
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1554
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1555
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1556
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->info_index:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v3}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v2}, Lcom/example/rederdemo/entity/TagInfo;->getIndex()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1557
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->info_type:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1558
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->info_epc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->info_tid:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1560
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->info_userData:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1561
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->info_Reserved:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getReservedData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1563
    :cond_0
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeCus()V
    .locals 4

    .line 1531
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v0}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1532
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/rederdemo/DialogCusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1533
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "Tag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-wide/16 v1, 0x1

    const-string v3, "Ant"

    .line 1534
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1535
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const-string v2, "Type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1536
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/ReadOrWriteActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1538
    :cond_0
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeEPC()V
    .locals 9

    .line 984
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v0}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 985
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f090041

    const/4 v2, -0x2

    const/4 v3, -0x1

    const-string v4, "Cancel"

    const-string v5, "OK"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ne v0, v1, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005a

    invoke-virtual {v0, v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901b0

    .line 987
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_epc:Landroid/widget/EditText;

    const v1, 0x7f0901cd

    .line 988
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_tid:Landroid/widget/EditText;

    const v1, 0x7f0901cc

    .line 989
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_pas:Landroid/widget/EditText;

    const v1, 0x7f0901cb

    .line 990
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_len:Landroid/widget/EditText;

    const v1, 0x7f0901d3

    .line 991
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_value:Landroid/widget/EditText;

    .line 992
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 993
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 994
    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 995
    invoke-virtual {v1, v5, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 996
    invoke-virtual {v1, v4, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 997
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 998
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 999
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v3, Lcom/example/rederdemo/ReadOrWriteActivity$14;

    invoke-direct {v3, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$14;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1040
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/ReadOrWriteActivity$15;

    invoke-direct {v2, p0, v0}, Lcom/example/rederdemo/ReadOrWriteActivity$15;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_epc:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_tid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_value:Landroid/widget/EditText;

    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity$16;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$16;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f090031

    if-ne v0, v1, :cond_1

    .line 1071
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0900da

    if-ne v0, v1, :cond_2

    .line 1073
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901b7

    .line 1074
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_epc:Landroid/widget/EditText;

    const v1, 0x7f0901b9

    .line 1075
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_pas:Landroid/widget/EditText;

    const v1, 0x7f0901ba

    .line 1076
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_tid:Landroid/widget/EditText;

    const v1, 0x7f0901b8

    .line 1077
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_len:Landroid/widget/EditText;

    const v1, 0x7f0901c0

    .line 1078
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_value:Landroid/widget/EditText;

    .line 1079
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v8, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v8}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/TagInfo;

    .line 1080
    new-instance v8, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1081
    invoke-virtual {v8, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1082
    invoke-virtual {v8, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1083
    invoke-virtual {v8, v5, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1084
    invoke-virtual {v8, v4, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1085
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1086
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1087
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/example/rederdemo/ReadOrWriteActivity$17;

    invoke-direct {v4, p0, v1}, Lcom/example/rederdemo/ReadOrWriteActivity$17;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;Lcom/example/rederdemo/entity/TagInfo;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1134
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/example/rederdemo/ReadOrWriteActivity$18;

    invoke-direct {v3, p0, v0}, Lcom/example/rederdemo/ReadOrWriteActivity$18;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1140
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_epc:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_tid:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1142
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_value:Landroid/widget/EditText;

    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity$19;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$19;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 1163
    :cond_2
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0900dd

    if-ne v0, v1, :cond_4

    .line 1164
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0060

    invoke-virtual {v0, v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901c1

    .line 1165
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_epc:Landroid/widget/EditText;

    const v1, 0x7f0901c3

    .line 1166
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_pas:Landroid/widget/EditText;

    const v1, 0x7f0901c4

    .line 1167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_tid:Landroid/widget/EditText;

    const v1, 0x7f0901c2

    .line 1168
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_len:Landroid/widget/EditText;

    const v1, 0x7f0901ca

    .line 1169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_value:Landroid/widget/EditText;

    .line 1170
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v8, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v8}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/TagInfo;

    .line 1171
    new-instance v8, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1172
    invoke-virtual {v8, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1173
    invoke-virtual {v8, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1174
    invoke-virtual {v8, v5, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1175
    invoke-virtual {v8, v4, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1176
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1177
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1178
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/example/rederdemo/ReadOrWriteActivity$20;

    invoke-direct {v4, p0, v1}, Lcom/example/rederdemo/ReadOrWriteActivity$20;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;Lcom/example/rederdemo/entity/TagInfo;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1225
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/example/rederdemo/ReadOrWriteActivity$21;

    invoke-direct {v3, p0, v0}, Lcom/example/rederdemo/ReadOrWriteActivity$21;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1231
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_epc:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1232
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_tid:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_value:Landroid/widget/EditText;

    new-instance v1, Lcom/example/rederdemo/ReadOrWriteActivity$22;

    invoke-direct {v1, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$22;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 1256
    :cond_3
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public writeUser()V
    .locals 9

    .line 1263
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v0}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1264
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f090041

    const/4 v2, -0x2

    const/4 v3, -0x1

    const-string v4, "Cancel"

    const-string v5, "OK"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ne v0, v1, :cond_0

    .line 1265
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0056

    invoke-virtual {v0, v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901ce

    .line 1266
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_epc:Landroid/widget/EditText;

    const v1, 0x7f0901d1

    .line 1267
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_tid:Landroid/widget/EditText;

    const v1, 0x7f0901d0

    .line 1268
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_pas:Landroid/widget/EditText;

    const v1, 0x7f0901cf

    .line 1269
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_len:Landroid/widget/EditText;

    const v1, 0x7f0901d2

    .line 1270
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_value:Landroid/widget/EditText;

    .line 1271
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1272
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1273
    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1274
    invoke-virtual {v1, v5, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1275
    invoke-virtual {v1, v4, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1276
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1277
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1278
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v3, Lcom/example/rederdemo/ReadOrWriteActivity$23;

    invoke-direct {v3, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$23;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1325
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/ReadOrWriteActivity$24;

    invoke-direct {v2, p0, v0}, Lcom/example/rederdemo/ReadOrWriteActivity$24;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1331
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_epc:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1332
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_user_tid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f090031

    if-ne v0, v1, :cond_1

    .line 1334
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0055

    invoke-virtual {v0, v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901ae

    .line 1335
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_6b_user_tid:Landroid/widget/EditText;

    const v1, 0x7f0901ad

    .line 1336
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_6b_user_start:Landroid/widget/EditText;

    const v1, 0x7f0901af

    .line 1337
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_6b_user_value:Landroid/widget/EditText;

    .line 1338
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1339
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1340
    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1341
    invoke-virtual {v1, v5, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1342
    invoke-virtual {v1, v4, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1343
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1344
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1345
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v3, Lcom/example/rederdemo/ReadOrWriteActivity$25;

    invoke-direct {v3, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$25;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1374
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/example/rederdemo/ReadOrWriteActivity$26;

    invoke-direct {v2, p0, v0}, Lcom/example/rederdemo/ReadOrWriteActivity$26;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1380
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_6b_user_tid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v2}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/TagInfo;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1381
    :cond_1
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0900da

    if-ne v0, v1, :cond_2

    .line 1382
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005f

    invoke-virtual {v0, v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901bb

    .line 1383
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_user_epc:Landroid/widget/EditText;

    const v1, 0x7f0901bc

    .line 1384
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_user_pas:Landroid/widget/EditText;

    const v1, 0x7f0901be

    .line 1385
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_user_tid:Landroid/widget/EditText;

    const v1, 0x7f0901bd

    .line 1386
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_user_start:Landroid/widget/EditText;

    const v1, 0x7f0901d9

    .line 1387
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->write_gb_user_child:Landroid/widget/Spinner;

    const v1, 0x7f0901bf

    .line 1388
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_user_value:Landroid/widget/EditText;

    .line 1389
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v8, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v8}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/TagInfo;

    .line 1390
    new-instance v8, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1391
    invoke-virtual {v8, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1392
    invoke-virtual {v8, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1393
    invoke-virtual {v8, v5, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1394
    invoke-virtual {v8, v4, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1395
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1396
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1397
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/example/rederdemo/ReadOrWriteActivity$27;

    invoke-direct {v4, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$27;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1440
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/example/rederdemo/ReadOrWriteActivity$28;

    invoke-direct {v3, p0, v0}, Lcom/example/rederdemo/ReadOrWriteActivity$28;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1447
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_user_epc:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1448
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gb_user_tid:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1449
    :cond_2
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->type:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0900dd

    if-ne v0, v1, :cond_4

    .line 1450
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0061

    invoke-virtual {v0, v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901c5

    .line 1451
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_epc:Landroid/widget/EditText;

    const v1, 0x7f0901c6

    .line 1452
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_pas:Landroid/widget/EditText;

    const v1, 0x7f0901c8

    .line 1453
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_tid:Landroid/widget/EditText;

    const v1, 0x7f0901c7

    .line 1454
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_start:Landroid/widget/EditText;

    const v1, 0x7f0901c9

    .line 1455
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_value:Landroid/widget/EditText;

    .line 1456
    iget-object v1, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->tagInfoList:Ljava/util/List;

    iget-object v8, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->adapter:Lcom/example/rederdemo/adapter/RecycleViewAdapter;

    invoke-virtual {v8}, Lcom/example/rederdemo/adapter/RecycleViewAdapter;->getThisPosition()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/rederdemo/entity/TagInfo;

    .line 1457
    new-instance v8, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1458
    invoke-virtual {v8, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1459
    invoke-virtual {v8, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1460
    invoke-virtual {v8, v5, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1461
    invoke-virtual {v8, v4, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1462
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1463
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1464
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/example/rederdemo/ReadOrWriteActivity$29;

    invoke-direct {v4, p0}, Lcom/example/rederdemo/ReadOrWriteActivity$29;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1505
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/example/rederdemo/ReadOrWriteActivity$30;

    invoke-direct {v3, p0, v0}, Lcom/example/rederdemo/ReadOrWriteActivity$30;-><init>(Lcom/example/rederdemo/ReadOrWriteActivity;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1512
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_epc:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getEpc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1513
    iget-object v0, p0, Lcom/example/rederdemo/ReadOrWriteActivity;->w_gjb_user_tid:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/example/rederdemo/entity/TagInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1516
    :cond_3
    invoke-virtual {p0}, Lcom/example/rederdemo/ReadOrWriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/rederdemo/util/ToastUtils;->showText(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
