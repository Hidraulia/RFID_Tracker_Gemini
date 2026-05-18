.class public Lcom/gg/reader/api/dal/GClient;
.super Ljava/lang/Object;
.source "GClient.java"


# static fields
.field private static final MSG_TIME_OUT:I = 0xbb8


# instance fields
.field public cacheDataOver:Lcom/gg/reader/api/dal/HandlerCacheDataOver;

.field private ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

.field public debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

.field private dicMre:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/gg/reader/api/dal/ClientManualResetEvent;",
            ">;"
        }
    .end annotation
.end field

.field private initParam:Ljava/lang/String;

.field private isPrint:Z

.field private name:Ljava/lang/String;

.field public onAccessLog:Lcom/gg/reader/api/dal/HandlerTagAccessLog;

.field public onAllGpiState:Lcom/gg/reader/api/dal/HandlerAllGpiState;

.field public onAntIdLog:Lcom/gg/reader/api/dal/communication/HandlerAntIdLog;

.field public onDisconnected:Lcom/gg/reader/api/dal/HandlerTcpDisconnected;

.field public onGpiOver:Lcom/gg/reader/api/dal/HandlerGpiOver;

.field public onGpiStart:Lcom/gg/reader/api/dal/HandlerGpiStart;

.field public onHeartbeatLog:Lcom/gg/reader/api/dal/HandlerHeartbeatLog;

.field public onKeyEvent:Lcom/gg/reader/api/dal/HandlerOnKeyEvent;

.field public onTag6DLog:Lcom/gg/reader/api/dal/HandlerTag6DLog;

.field public onTag6DOver:Lcom/gg/reader/api/dal/HandlerTag6DOver;

.field public onTag6bLog:Lcom/gg/reader/api/dal/HandlerTag6bLog;

.field public onTag6bOver:Lcom/gg/reader/api/dal/HandlerTag6bOver;

.field public onTagEpcLog:Lcom/gg/reader/api/dal/HandlerTagEpcLog;

.field public onTagEpcOver:Lcom/gg/reader/api/dal/HandlerTagEpcOver;

.field public onTagGJbLog:Lcom/gg/reader/api/dal/HandlerTagGJbLog;

.field public onTagGJbOver:Lcom/gg/reader/api/dal/HandlerTagGJbOver;

.field public onTagGJbRn11Log:Lcom/gg/reader/api/dal/HandlerTagGJbRn11Log;

.field public onTagGbLog:Lcom/gg/reader/api/dal/HandlerTagGbLog;

.field public onTagGbOver:Lcom/gg/reader/api/dal/HandlerTagGbOver;

.field public onTagGbSafeParam:Lcom/gg/reader/api/dal/HandlerTagGbSafeParam;

.field public onTagTLOver:Lcom/gg/reader/api/dal/HandlerTagTLOver;

.field public onTagTLog:Lcom/gg/reader/api/dal/HandlerTagTLLog;

.field private serialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/GClient;->isPrint:Z

    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/GClient;Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/gg/reader/api/dal/GClient;->processMessage(Lcom/gg/reader/api/protocol/gx/Message;)V

    return-void
.end method

.method private processMessage(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1399
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-object v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_12:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1401
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;->toInt()I

    move-result v0

    .line 1402
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1403
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    if-eqz v0, :cond_19

    .line 1411
    iput-object p1, v0, Lcom/gg/reader/api/dal/ClientManualResetEvent;->data:Lcom/gg/reader/api/protocol/gx/Message;

    .line 1412
    iget-object p1, v0, Lcom/gg/reader/api/dal/ClientManualResetEvent;->evt:Lcom/gg/reader/api/utils/ManualResetEvent;

    invoke-virtual {p1}, Lcom/gg/reader/api/utils/ManualResetEvent;->set()V

    goto/16 :goto_0

    .line 1418
    :cond_1
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-object v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    const-string v1, "0010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_11

    .line 1420
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-nez v0, :cond_2

    .line 1421
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;-><init>()V

    .line 1422
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->ackUnpack([B)V

    .line 1423
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagEpcLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;)V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x20

    .line 1424
    iget-object v4, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v4, v4, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v4, :cond_3

    .line 1425
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;-><init>()V

    .line 1426
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->ackUnpack([B)V

    .line 1427
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTag6bLogEvent(Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;)V

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x30

    .line 1428
    iget-object v4, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v4, v4, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v4, :cond_4

    .line 1429
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;-><init>()V

    .line 1430
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->ackUnpack([B)V

    .line 1431
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagGbLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;)V

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x40

    .line 1432
    iget-object v4, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v4, v4, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v4, :cond_5

    .line 1433
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;-><init>()V

    .line 1434
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->ackUnpack([B)V

    .line 1435
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagGJbLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;)V

    goto/16 :goto_0

    .line 1436
    :cond_5
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v2, v0, :cond_6

    .line 1437
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;-><init>()V

    .line 1438
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->ackUnpack([B)V

    .line 1439
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagEpcOverEvent(Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;)V

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x21

    .line 1440
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v2, v2, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v2, :cond_7

    .line 1441
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBase6bOver;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBase6bOver;-><init>()V

    .line 1442
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bOver;->ackUnpack([B)V

    .line 1443
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTag6bOverEvent(Lcom/gg/reader/api/protocol/gx/LogBase6bOver;)V

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x31

    .line 1444
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v2, v2, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v2, :cond_8

    .line 1445
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;-><init>()V

    .line 1446
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;->ackUnpack([B)V

    .line 1447
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagGbOverEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;)V

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x41

    .line 1448
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v2, v2, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v2, :cond_9

    .line 1449
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;-><init>()V

    .line 1450
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;->ackUnpack([B)V

    .line 1451
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagGJbOverEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;)V

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x32

    .line 1452
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v2, v2, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v2, :cond_a

    .line 1453
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;-><init>()V

    .line 1454
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->ackUnpack([B)V

    .line 1455
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagGbSafeParamEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;)V

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x43

    .line 1456
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v2, v2, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v2, :cond_b

    .line 1457
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/GClient;->triggerTagGJbRn11LogEvent([B)V

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x50

    .line 1458
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v2, v2, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v2, :cond_c

    .line 1459
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;-><init>()V

    .line 1460
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->ackUnpack([B)V

    .line 1461
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagTLLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;)V

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x51

    .line 1462
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v2, v2, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v2, :cond_d

    .line 1463
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseTLOver;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseTLOver;-><init>()V

    .line 1464
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseTLOver;->ackUnpack([B)V

    .line 1465
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagTLOverEvent(Lcom/gg/reader/api/protocol/gx/LogBaseTLOver;)V

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x55

    .line 1466
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v2, v2, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v2, :cond_e

    .line 1467
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;-><init>()V

    .line 1468
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->ackUnpack([B)V

    .line 1469
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTag6DLogEvent(Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;)V

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x56

    .line 1470
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v2, v2, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v2, :cond_f

    .line 1471
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBase6DOver;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBase6DOver;-><init>()V

    .line 1472
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBase6DOver;->ackUnpack([B)V

    .line 1473
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTag6DOverEvent(Lcom/gg/reader/api/protocol/gx/LogBase6DOver;)V

    goto/16 :goto_0

    .line 1474
    :cond_f
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v3, v0, :cond_10

    .line 1477
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    aget-byte p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/GClient;->triggerTagAntIdEvent(I)V

    goto/16 :goto_0

    :cond_10
    const/16 v0, -0x80

    .line 1478
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v1, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v1, :cond_19

    .line 1479
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;-><init>()V

    .line 1480
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;->ackUnpack([B)V

    .line 1481
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagAccessLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;)V

    goto/16 :goto_0

    .line 1483
    :cond_11
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-object v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    const-string v4, "0001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x12

    .line 1485
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v1, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v1, :cond_13

    .line 1486
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/GClient;->isPrint:Z

    if-eqz v0, :cond_12

    const-string v0, "[heartbeat]"

    .line 1487
    invoke-static {v0}, Lcom/gg/reader/api/utils/GLog;->d(Ljava/lang/String;)V

    .line 1489
    :cond_12
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppHeartbeat;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppHeartbeat;-><init>()V

    .line 1490
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgAppHeartbeat;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 1491
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppHeartbeat;->ackUnpack([B)V

    .line 1492
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1493
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onHeartbeatLog:Lcom/gg/reader/api/dal/HandlerHeartbeatLog;

    if-eqz v0, :cond_13

    .line 1494
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onHeartbeatLog:Lcom/gg/reader/api/dal/HandlerHeartbeatLog;

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/gg/reader/api/dal/HandlerHeartbeatLog;->log(Ljava/lang/String;)V

    .line 1497
    :cond_13
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-nez v0, :cond_14

    .line 1499
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;-><init>()V

    .line 1500
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->ackUnpack([B)V

    .line 1501
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerGpiStart(Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;)V

    goto/16 :goto_0

    .line 1502
    :cond_14
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v2, v0, :cond_15

    .line 1504
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;-><init>()V

    .line 1505
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->ackUnpack([B)V

    .line 1506
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerGpiOver(Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;)V

    goto :goto_0

    .line 1507
    :cond_15
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v3, v0, :cond_16

    .line 1509
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;-><init>()V

    .line 1510
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->ackUnpack([B)V

    .line 1511
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerAllGpiState(Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;)V

    goto :goto_0

    :cond_16
    const/16 v0, 0x1b

    .line 1512
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v1, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v1, :cond_19

    .line 1514
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;-><init>()V

    .line 1515
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;->ackUnpack([B)V

    .line 1516
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerCacheDataOver(Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;)V

    goto :goto_0

    .line 1518
    :cond_17
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-object v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    const-string v2, "0101"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1519
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte p1, p1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v3, p1, :cond_19

    .line 1520
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;

    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->initParam:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/GClient;->sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    goto :goto_0

    .line 1522
    :cond_18
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-object v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    const-string v1, "1111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1523
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-nez v0, :cond_19

    .line 1524
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/GClient;->triggerHDKeyEvent([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_19
    :goto_0
    return-void
.end method


# virtual methods
.method public autoOpenBleDevice(Lcom/peripheral/ble/BleDevice;)V
    .locals 1

    .line 895
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 896
    new-instance v0, Lcom/gg/reader/api/dal/GClient$18;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$18;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p1, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 909
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->autoBleOpen()V

    .line 910
    invoke-virtual {p1}, Lcom/peripheral/ble/BleDevice;->getmPeripheral()Lcom/peripheral/ble/BluetoothPeripheral;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {p1}, Lcom/peripheral/ble/BleDevice;->getmPeripheral()Lcom/peripheral/ble/BluetoothPeripheral;

    move-result-object p1

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public close()Z
    .locals 2

    .line 1249
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->close()V

    .line 1251
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 1252
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iput-object v1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    .line 1253
    iput-object v1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public createAndroidRs485(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const-string p3, ":"

    const/4 v0, 0x0

    .line 973
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 974
    array-length v2, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 978
    :cond_0
    new-instance v2, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    invoke-direct {v2}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;-><init>()V

    iput-object v2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 979
    new-instance v3, Lcom/gg/reader/api/dal/GClient$21;

    invoke-direct {v3, p0}, Lcom/gg/reader/api/dal/GClient$21;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v3, v2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 992
    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    aget-object v4, v1, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 994
    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 995
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, p3}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 996
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, p3}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485(Z)V

    .line 997
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485Address(I)V

    .line 998
    new-instance p2, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;

    invoke-direct {p2, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/gg/reader/api/dal/GClient;->sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 999
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->initParam:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public createAndroidSerial(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    const/4 p3, 0x0

    .line 944
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    invoke-direct {v0}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 945
    new-instance v1, Lcom/gg/reader/api/dal/GClient$20;

    invoke-direct {v1, p0}, Lcom/gg/reader/api/dal/GClient$20;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 958
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v0, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 961
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, p3}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 962
    new-instance p2, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;

    invoke-direct {p2, p1, p3}, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/gg/reader/api/dal/GClient;->sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 963
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->initParam:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return p3
.end method

.method public createAndroidUsbHid(Ljava/lang/String;Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)Z
    .locals 1

    .line 1221
    :try_start_0
    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 1222
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->initParam:Ljava/lang/String;

    .line 1223
    new-instance v0, Lcom/gg/reader/api/dal/GClient$32;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$32;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 1236
    invoke-virtual {p2}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->getUsbName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 1237
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 1238
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public createAndroidUsbRs485(Ljava/lang/String;Lcom/android/usbserial/client/AndroidUsbSerialClient;I)Z
    .locals 1

    .line 1072
    :try_start_0
    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 1073
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->initParam:Ljava/lang/String;

    .line 1074
    new-instance v0, Lcom/gg/reader/api/dal/GClient$25;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$25;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 1087
    invoke-virtual {p2}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 1088
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485(Z)V

    .line 1089
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, p3}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485Address(I)V

    .line 1090
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 1091
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public createAndroidUsbSerial(Ljava/lang/String;Lcom/android/usbserial/client/AndroidUsbSerialClient;)Z
    .locals 1

    .line 1044
    :try_start_0
    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 1045
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->initParam:Ljava/lang/String;

    .line 1046
    new-instance v0, Lcom/gg/reader/api/dal/GClient$24;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$24;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 1059
    invoke-virtual {p2}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 1060
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 1061
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public createBleBluetooth(Ljava/lang/String;Ljava/lang/String;ILcom/gg/reader/api/dal/communication/BleBluetoothClient;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1164
    :try_start_0
    iput-object p4, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 1165
    new-instance v1, Lcom/gg/reader/api/dal/GClient$29;

    invoke-direct {v1, p0}, Lcom/gg/reader/api/dal/GClient$29;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v1, p4, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 1178
    iget-object p4, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v1, Lcom/gg/reader/api/dal/GClient$30;

    invoke-direct {v1, p0}, Lcom/gg/reader/api/dal/GClient$30;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v1, p4, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    .line 1184
    iget-object p4, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p4, p2, p3}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1186
    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 1188
    new-instance p2, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;

    invoke-direct {p2, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/gg/reader/api/dal/GClient;->sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1189
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->initParam:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method public createBleDevice(Ljava/lang/String;Lcom/peripheral/ble/BleDevice;)V
    .locals 1

    .line 1198
    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 1199
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->initParam:Ljava/lang/String;

    .line 1200
    new-instance v0, Lcom/gg/reader/api/dal/GClient$31;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$31;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 1213
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    .line 1214
    invoke-virtual {p2}, Lcom/peripheral/ble/BleDevice;->getmPeripheral()Lcom/peripheral/ble/BluetoothPeripheral;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1215
    invoke-virtual {p2}, Lcom/peripheral/ble/BleDevice;->getmPeripheral()Lcom/peripheral/ble/BluetoothPeripheral;

    move-result-object p1

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public createBluetooth(Ljava/lang/String;Ljava/lang/String;IILcom/gg/reader/api/dal/communication/BluetoothClient;)Z
    .locals 1

    const/4 p3, 0x0

    .line 1100
    :try_start_0
    iput-object p5, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 1101
    new-instance v0, Lcom/gg/reader/api/dal/GClient$26;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$26;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p5, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 1114
    iget-object p5, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v0, Lcom/gg/reader/api/dal/GClient$27;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$27;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p5, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    .line 1120
    iget-object p5, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p5, p2, p4}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1122
    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 1124
    new-instance p2, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;

    invoke-direct {p2, p1, p3}, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/gg/reader/api/dal/GClient;->sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1125
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->initParam:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return p3
.end method

.method public createCwSerial(Ljava/lang/String;Ljava/lang/String;ILcom/gg/reader/api/dal/communication/CWSerialClient;)Z
    .locals 1

    const/4 p3, 0x0

    .line 1135
    :try_start_0
    iput-object p4, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 1136
    new-instance v0, Lcom/gg/reader/api/dal/GClient$28;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$28;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p4, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 1149
    iget-object p4, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p4, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1151
    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 1152
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, p3}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 1153
    new-instance p2, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;

    invoke-direct {p2, p1, p3}, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/gg/reader/api/dal/GClient;->sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1154
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->initParam:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return p3
.end method

.method public createTcp(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    const/4 p3, 0x0

    .line 1009
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/dal/communication/TcpClient;

    invoke-direct {v0}, Lcom/gg/reader/api/dal/communication/TcpClient;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 1010
    new-instance v1, Lcom/gg/reader/api/dal/GClient$22;

    invoke-direct {v1, p0}, Lcom/gg/reader/api/dal/GClient$22;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 1023
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v1, Lcom/gg/reader/api/dal/GClient$23;

    invoke-direct {v1, p0}, Lcom/gg/reader/api/dal/GClient$23;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    .line 1029
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v0, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 1032
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 1033
    new-instance p2, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;

    invoke-direct {p2, p1, p3}, Lcom/gg/reader/api/protocol/gx/MsgTestWorkModeInit;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/gg/reader/api/dal/GClient;->sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1034
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->initParam:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return p3
.end method

.method public getConnectType()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    if-nez v0, :cond_0

    const/16 v0, 0xff

    return v0

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->getConnectType()I

    move-result v0

    return v0
.end method

.method public getInitParam()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->initParam:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hdPowerOff()V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    if-eqz v0, :cond_0

    .line 687
    instance-of v1, v0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->hdPowerOff()V

    :cond_0
    return-void
.end method

.method public hdPowerOn()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    if-eqz v0, :cond_0

    .line 679
    instance-of v1, v0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    if-eqz v1, :cond_0

    .line 680
    invoke-virtual {v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->hdPowerOn()V

    :cond_0
    return-void
.end method

.method public open(Ljava/lang/String;Lcom/gg/reader/api/dal/communication/CommunicationInterface;I)Z
    .locals 1

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 431
    :cond_0
    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 432
    new-instance v0, Lcom/gg/reader/api/dal/GClient$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$1;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 445
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v0, Lcom/gg/reader/api/dal/GClient$2;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$2;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    .line 451
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 452
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 453
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return p3
.end method

.method public openAndroidRs485(Ljava/lang/String;I)Z
    .locals 5

    const-string p2, ":"

    const/4 v0, 0x0

    .line 618
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 619
    array-length v2, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    new-instance v2, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    invoke-direct {v2}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;-><init>()V

    iput-object v2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 624
    new-instance v3, Lcom/gg/reader/api/dal/GClient$6;

    invoke-direct {v3, p0}, Lcom/gg/reader/api/dal/GClient$6;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v3, v2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 637
    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    aget-object v4, v1, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 639
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 640
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 641
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485(Z)V

    .line 642
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485Address(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public openAndroidSerial(Ljava/lang/String;I)Z
    .locals 2

    const/4 p2, 0x0

    .line 529
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    invoke-direct {v0}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 530
    new-instance v1, Lcom/gg/reader/api/dal/GClient$3;

    invoke-direct {v1, p0}, Lcom/gg/reader/api/dal/GClient$3;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 543
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 546
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return p2
.end method

.method public openAndroidUsbHid(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)Z
    .locals 1

    .line 918
    :try_start_0
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 919
    new-instance v0, Lcom/gg/reader/api/dal/GClient$19;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$19;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p1, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 932
    invoke-virtual {p1}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->getUsbName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 933
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 934
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public openAndroidUsbRs485(Lcom/android/usbserial/client/AndroidUsbSerialClient;I)Z
    .locals 1

    .line 755
    :try_start_0
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 756
    new-instance v0, Lcom/gg/reader/api/dal/GClient$11;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$11;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p1, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 769
    invoke-virtual {p1}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 770
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485(Z)V

    .line 771
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485Address(I)V

    .line 772
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 773
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public openAndroidUsbSerial(Lcom/android/usbserial/client/AndroidUsbSerialClient;)Z
    .locals 1

    .line 729
    :try_start_0
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 730
    new-instance v0, Lcom/gg/reader/api/dal/GClient$10;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$10;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p1, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 743
    invoke-virtual {p1}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 744
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 745
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public openBleBluetooth(Ljava/lang/String;ILcom/gg/reader/api/dal/communication/BleBluetoothClient;)Z
    .locals 1

    .line 842
    :try_start_0
    iput-object p3, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 843
    new-instance v0, Lcom/gg/reader/api/dal/GClient$15;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$15;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p3, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 856
    iget-object p3, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v0, Lcom/gg/reader/api/dal/GClient$16;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$16;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p3, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    .line 862
    iget-object p3, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p3, p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 864
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public openBleDevice(Lcom/peripheral/ble/BleDevice;)V
    .locals 1

    .line 874
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 875
    new-instance v0, Lcom/gg/reader/api/dal/GClient$17;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$17;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p1, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 888
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open()V

    .line 889
    invoke-virtual {p1}, Lcom/peripheral/ble/BleDevice;->getmPeripheral()Lcom/peripheral/ble/BluetoothPeripheral;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {p1}, Lcom/peripheral/ble/BleDevice;->getmPeripheral()Lcom/peripheral/ble/BluetoothPeripheral;

    move-result-object p1

    invoke-virtual {p1}, Lcom/peripheral/ble/BluetoothPeripheral;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public openBluetooth(Ljava/lang/String;IILcom/gg/reader/api/dal/communication/BluetoothClient;)Z
    .locals 0

    .line 782
    :try_start_0
    iput-object p4, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 783
    new-instance p2, Lcom/gg/reader/api/dal/GClient$12;

    invoke-direct {p2, p0}, Lcom/gg/reader/api/dal/GClient$12;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object p2, p4, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 796
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance p4, Lcom/gg/reader/api/dal/GClient$13;

    invoke-direct {p4, p0}, Lcom/gg/reader/api/dal/GClient$13;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object p4, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    .line 802
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, p1, p3}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 804
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public openCusAndroidRs485(Ljava/lang/String;II)Z
    .locals 5

    const-string v0, ":"

    const/4 v1, 0x0

    .line 584
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 585
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    new-instance v3, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    invoke-direct {v3, p2, p3}, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;-><init>(II)V

    iput-object v3, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 590
    new-instance p2, Lcom/gg/reader/api/dal/GClient$5;

    invoke-direct {p2, p0}, Lcom/gg/reader/api/dal/GClient$5;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object p2, v3, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 603
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v2, v1

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object v3, v2, v0

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 605
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 606
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 607
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485(Z)V

    .line 608
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 p2, 0x2

    aget-object p2, v2, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485Address(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public openCusAndroidSerial(Ljava/lang/String;II)Z
    .locals 2

    const/4 v0, 0x0

    .line 556
    :try_start_0
    new-instance v1, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    invoke-direct {v1, p2, p3}, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;-><init>(II)V

    iput-object v1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 558
    new-instance p2, Lcom/gg/reader/api/dal/GClient$4;

    invoke-direct {p2, p0}, Lcom/gg/reader/api/dal/GClient$4;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object p2, v1, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 571
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 573
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 574
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method public openCwSerial(Ljava/lang/String;ILcom/gg/reader/api/dal/communication/CWSerialClient;)Z
    .locals 1

    const/4 p2, 0x0

    .line 815
    :try_start_0
    iput-object p3, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 816
    new-instance v0, Lcom/gg/reader/api/dal/GClient$14;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$14;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p3, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 829
    iget-object p3, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p3, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 831
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 832
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return p2
.end method

.method public openHdSerial(Ljava/lang/String;I)Z
    .locals 2

    const/4 p2, 0x0

    .line 652
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    invoke-direct {v0}, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 653
    new-instance v1, Lcom/gg/reader/api/dal/GClient$7;

    invoke-direct {v1, p0}, Lcom/gg/reader/api/dal/GClient$7;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 666
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 669
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return p2
.end method

.method public openTcp(Ljava/lang/String;I)Z
    .locals 1

    .line 696
    :try_start_0
    new-instance p2, Lcom/gg/reader/api/dal/communication/TcpClient;

    invoke-direct {p2}, Lcom/gg/reader/api/dal/communication/TcpClient;-><init>()V

    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 697
    new-instance v0, Lcom/gg/reader/api/dal/GClient$8;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$8;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 710
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v0, Lcom/gg/reader/api/dal/GClient$9;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$9;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    .line 716
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 718
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 719
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 1

    const/16 v0, 0xbb8

    .line 1311
    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;I)V

    return-void
.end method

.method public sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;I)V
    .locals 6

    .line 1264
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1270
    :cond_1
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/GClient;->getConnectType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1271
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "1"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    .line 1273
    :cond_2
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;->toInt()I

    move-result v0

    .line 1274
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    if-nez v1, :cond_3

    .line 1275
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    .line 1277
    :cond_3
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 1278
    new-instance v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/gg/reader/api/dal/ClientManualResetEvent;-><init>(Z)V

    .line 1279
    iput-object v2, v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;->data:Lcom/gg/reader/api/protocol/gx/Message;

    .line 1280
    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1282
    :cond_4
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    iput-object v2, v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;->data:Lcom/gg/reader/api/protocol/gx/Message;

    .line 1283
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    iget-object v1, v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;->evt:Lcom/gg/reader/api/utils/ManualResetEvent;

    invoke-virtual {v1}, Lcom/gg/reader/api/utils/ManualResetEvent;->reset()V

    .line 1286
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v1, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->send(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1287
    iget-boolean v1, p0, Lcom/gg/reader/api/dal/GClient;->isPrint:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "]"

    const-string v3, "]-["

    if-eqz v1, :cond_5

    .line 1288
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v1, :cond_5

    .line 1289
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send-["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    invoke-static {v5}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/gg/reader/api/dal/HandlerDebugLog;->sendDebugLog(Ljava/lang/String;)V

    .line 1293
    :cond_5
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    iget-object v1, v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;->evt:Lcom/gg/reader/api/utils/ManualResetEvent;

    int-to-long v4, p2

    invoke-virtual {v1, v4, v5}, Lcom/gg/reader/api/utils/ManualResetEvent;->waitOne(J)Z

    .line 1294
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    iget-object p2, p2, Lcom/gg/reader/api/dal/ClientManualResetEvent;->data:Lcom/gg/reader/api/protocol/gx/Message;

    if-eqz p2, :cond_6

    .line 1295
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    iget-object p2, p2, Lcom/gg/reader/api/dal/ClientManualResetEvent;->data:Lcom/gg/reader/api/protocol/gx/Message;

    iget-object p2, p2, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    iput-object p2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    .line 1296
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    iget-object p2, p2, Lcom/gg/reader/api/dal/ClientManualResetEvent;->data:Lcom/gg/reader/api/protocol/gx/Message;

    iget-object p2, p2, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/Message;->ackUnpack([B)V

    .line 1297
    iget-boolean p2, p0, Lcom/gg/reader/api/dal/GClient;->isPrint:Z

    if-eqz p2, :cond_6

    .line 1298
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz p2, :cond_6

    .line 1299
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive-["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->receiveDebugLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    return-void
.end method

.method public sendSynMsgRetry(Lcom/gg/reader/api/protocol/gx/Message;II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 1317
    invoke-virtual {p0, p1, p2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;I)V

    .line 1318
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/Message;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 3

    .line 1326
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1332
    :cond_1
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->send(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1334
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/GClient;->isPrint:Z

    if-eqz v0, :cond_2

    .line 1335
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v0, :cond_2

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send-["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]-["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->sendDebugLog(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public sendUnsynMsg([B)V
    .locals 3

    .line 1371
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1377
    :cond_1
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->send([B)V

    .line 1379
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/GClient;->isPrint:Z

    if-eqz v0, :cond_2

    .line 1380
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v0, :cond_2

    .line 1381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send-[custom]-["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->sendDebugLog(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public sendUnsynMsgRetry(Lcom/gg/reader/api/protocol/gx/Message;I)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1389
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/GClient;->sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHeartBeatTimeout(I)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    if-eqz v0, :cond_0

    .line 132
    iput p1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->heartbeatTimeout:I

    :cond_0
    return-void
.end method

.method public setInitParam(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->initParam:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    return-void
.end method

.method public setPrint(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/gg/reader/api/dal/GClient;->isPrint:Z

    return-void
.end method

.method public setSendHeartBeat(Z)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    if-eqz v0, :cond_0

    .line 126
    iput-boolean p1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->_isSendHeartbeat:Z

    :cond_0
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method protected triggerAllGpiState(Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;)V
    .locals 3

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onAllGpiState:Lcom/gg/reader/api/dal/HandlerAllGpiState;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onAllGpiState:Lcom/gg/reader/api/dal/HandlerAllGpiState;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onAllGpiState:Lcom/gg/reader/api/dal/HandlerAllGpiState;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerAllGpiState;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogAppAllGpiState;)V

    .line 385
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerCacheDataOver(Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;)V
    .locals 3

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->cacheDataOver:Lcom/gg/reader/api/dal/HandlerCacheDataOver;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->cacheDataOver:Lcom/gg/reader/api/dal/HandlerCacheDataOver;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->cacheDataOver:Lcom/gg/reader/api/dal/HandlerCacheDataOver;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerCacheDataOver;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;)V

    .line 396
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method

.method protected triggerDisconnected()V
    .locals 3

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onDisconnected:Lcom/gg/reader/api/dal/HandlerTcpDisconnected;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onDisconnected:Lcom/gg/reader/api/dal/HandlerTcpDisconnected;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onDisconnected:Lcom/gg/reader/api/dal/HandlerTcpDisconnected;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/gg/reader/api/dal/HandlerTcpDisconnected;->log(Ljava/lang/String;)V

    .line 407
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method

.method protected triggerGpiOver(Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;)V
    .locals 4

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onGpiOver:Lcom/gg/reader/api/dal/HandlerGpiOver;

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onGpiOver:Lcom/gg/reader/api/dal/HandlerGpiOver;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onGpiOver:Lcom/gg/reader/api/dal/HandlerGpiOver;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerGpiOver;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;)V

    .line 370
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "over Gpi-[port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->getGpiPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->getGpiPortLevel()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->receiveDebugLog(Ljava/lang/String;)V

    .line 373
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method protected triggerGpiStart(Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;)V
    .locals 4

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onGpiStart:Lcom/gg/reader/api/dal/HandlerGpiStart;

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onGpiStart:Lcom/gg/reader/api/dal/HandlerGpiStart;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onGpiStart:Lcom/gg/reader/api/dal/HandlerGpiStart;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerGpiStart;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;)V

    .line 355
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start Gpi-[port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->getGpiPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->getGpiPortLevel()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->receiveDebugLog(Ljava/lang/String;)V

    .line 358
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method protected triggerHDKeyEvent([B)V
    .locals 4

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onKeyEvent:Lcom/gg/reader/api/dal/HandlerOnKeyEvent;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onKeyEvent:Lcom/gg/reader/api/dal/HandlerOnKeyEvent;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 417
    :try_start_1
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 418
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    .line 419
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onKeyEvent:Lcom/gg/reader/api/dal/HandlerOnKeyEvent;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    invoke-virtual {p1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    invoke-interface {v1, v3, p1}, Lcom/gg/reader/api/dal/HandlerOnKeyEvent;->event(II)V

    .line 421
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTag6DLogEvent(Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;)V
    .locals 3

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTag6DLog:Lcom/gg/reader/api/dal/HandlerTag6DLog;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTag6DLog:Lcom/gg/reader/api/dal/HandlerTag6DLog;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTag6DLog:Lcom/gg/reader/api/dal/HandlerTag6DLog;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTag6DLog;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBase6DInfo;)V

    .line 254
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTag6DOverEvent(Lcom/gg/reader/api/protocol/gx/LogBase6DOver;)V
    .locals 4

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTag6DOver:Lcom/gg/reader/api/dal/HandlerTag6DOver;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTag6DOver:Lcom/gg/reader/api/dal/HandlerTag6DOver;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBase6DOver;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTag6DOver:Lcom/gg/reader/api/dal/HandlerTag6DOver;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTag6DOver;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBase6DOver;)V

    .line 266
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "6D-["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBase6DOver;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->receiveDebugLog(Ljava/lang/String;)V

    .line 269
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method protected triggerTag6bLogEvent(Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;)V
    .locals 3

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTag6bLog:Lcom/gg/reader/api/dal/HandlerTag6bLog;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTag6bLog:Lcom/gg/reader/api/dal/HandlerTag6bLog;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTag6bLog:Lcom/gg/reader/api/dal/HandlerTag6bLog;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTag6bLog;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;)V

    .line 173
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTag6bOverEvent(Lcom/gg/reader/api/protocol/gx/LogBase6bOver;)V
    .locals 4

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTag6bOver:Lcom/gg/reader/api/dal/HandlerTag6bOver;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTag6bOver:Lcom/gg/reader/api/dal/HandlerTag6bOver;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBase6bOver;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTag6bOver:Lcom/gg/reader/api/dal/HandlerTag6bOver;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTag6bOver;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBase6bOver;)V

    .line 185
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "6b-["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bOver;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->receiveDebugLog(Ljava/lang/String;)V

    .line 188
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method protected triggerTagAccessLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;)V
    .locals 3

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onAccessLog:Lcom/gg/reader/api/dal/HandlerTagAccessLog;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onAccessLog:Lcom/gg/reader/api/dal/HandlerTagAccessLog;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onAccessLog:Lcom/gg/reader/api/dal/HandlerTagAccessLog;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagAccessLog;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseAccessInfo;)V

    .line 343
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method

.method protected triggerTagAntIdEvent(I)V
    .locals 3

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onAntIdLog:Lcom/gg/reader/api/dal/communication/HandlerAntIdLog;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onAntIdLog:Lcom/gg/reader/api/dal/communication/HandlerAntIdLog;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onAntIdLog:Lcom/gg/reader/api/dal/communication/HandlerAntIdLog;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/communication/HandlerAntIdLog;->log(Ljava/lang/String;I)V

    .line 280
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method

.method protected triggerTagEpcLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;)V
    .locals 3

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagEpcLog:Lcom/gg/reader/api/dal/HandlerTagEpcLog;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagEpcLog:Lcom/gg/reader/api/dal/HandlerTagEpcLog;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagEpcLog:Lcom/gg/reader/api/dal/HandlerTagEpcLog;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagEpcLog;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;)V

    .line 146
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTagEpcOverEvent(Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;)V
    .locals 4

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagEpcOver:Lcom/gg/reader/api/dal/HandlerTagEpcOver;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagEpcOver:Lcom/gg/reader/api/dal/HandlerTagEpcOver;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagEpcOver:Lcom/gg/reader/api/dal/HandlerTagEpcOver;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagEpcOver;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;)V

    .line 158
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "6c-["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->receiveDebugLog(Ljava/lang/String;)V

    .line 161
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method protected triggerTagGJbLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;)V
    .locals 3

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbLog:Lcom/gg/reader/api/dal/HandlerTagGJbLog;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbLog:Lcom/gg/reader/api/dal/HandlerTagGJbLog;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbLog:Lcom/gg/reader/api/dal/HandlerTagGJbLog;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagGJbLog;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;)V

    .line 292
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTagGJbOverEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;)V
    .locals 4

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbOver:Lcom/gg/reader/api/dal/HandlerTagGJbOver;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbOver:Lcom/gg/reader/api/dal/HandlerTagGJbOver;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbOver:Lcom/gg/reader/api/dal/HandlerTagGJbOver;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagGJbOver;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;)V

    .line 304
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GJb-["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->receiveDebugLog(Ljava/lang/String;)V

    .line 307
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method protected triggerTagGJbRn11LogEvent([B)V
    .locals 3

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbRn11Log:Lcom/gg/reader/api/dal/HandlerTagGJbRn11Log;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbRn11Log:Lcom/gg/reader/api/dal/HandlerTagGJbRn11Log;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbRn11Log:Lcom/gg/reader/api/dal/HandlerTagGJbRn11Log;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagGJbRn11Log;->log(Ljava/lang/String;[B)V

    .line 318
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method

.method protected triggerTagGbLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;)V
    .locals 3

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbLog:Lcom/gg/reader/api/dal/HandlerTagGbLog;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbLog:Lcom/gg/reader/api/dal/HandlerTagGbLog;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbLog:Lcom/gg/reader/api/dal/HandlerTagGbLog;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagGbLog;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;)V

    .line 200
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTagGbOverEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;)V
    .locals 4

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbOver:Lcom/gg/reader/api/dal/HandlerTagGbOver;

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbOver:Lcom/gg/reader/api/dal/HandlerTagGbOver;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbOver:Lcom/gg/reader/api/dal/HandlerTagGbOver;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagGbOver;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;)V

    .line 212
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gb-["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->receiveDebugLog(Ljava/lang/String;)V

    .line 215
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method protected triggerTagGbSafeParamEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;)V
    .locals 3

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbSafeParam:Lcom/gg/reader/api/dal/HandlerTagGbSafeParam;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbSafeParam:Lcom/gg/reader/api/dal/HandlerTagGbSafeParam;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbSafeParam:Lcom/gg/reader/api/dal/HandlerTagGbSafeParam;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagGbSafeParam;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;)V

    .line 329
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method

.method protected triggerTagTLLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;)V
    .locals 3

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagTLog:Lcom/gg/reader/api/dal/HandlerTagTLLog;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagTLog:Lcom/gg/reader/api/dal/HandlerTagTLLog;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagTLog:Lcom/gg/reader/api/dal/HandlerTagTLLog;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagTLLog;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseTLInfo;)V

    .line 227
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTagTLOverEvent(Lcom/gg/reader/api/protocol/gx/LogBaseTLOver;)V
    .locals 4

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagTLOver:Lcom/gg/reader/api/dal/HandlerTagTLOver;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagTLOver:Lcom/gg/reader/api/dal/HandlerTagTLOver;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseTLOver;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagTLOver:Lcom/gg/reader/api/dal/HandlerTagTLOver;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagTLOver;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseTLOver;)V

    .line 239
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TL-["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseTLOver;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->receiveDebugLog(Ljava/lang/String;)V

    .line 242
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
