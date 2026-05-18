.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetReadiotLock;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetReadiotLock.java"


# instance fields
.field private lockState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReadiotLock;->lockState:Ljava/util/ArrayList;

    .line 14
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReadiotLock;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 15
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReadiotLock;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReadiotLock;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, -0x7f

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReadiotLock;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReadiotLock;->cData:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReadiotLock;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReadiotLock;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/4 v2, 0x0

    .line 40
    :goto_0
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReadiotLock;->cData:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 41
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReadiotLock;->lockState:Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReadiotLock;->setRtCode(B)V

    :cond_1
    return-void
.end method

.method public getLockState()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReadiotLock;->lockState:Ljava/util/ArrayList;

    return-object v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setLockState(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReadiotLock;->lockState:Ljava/util/ArrayList;

    return-void
.end method
