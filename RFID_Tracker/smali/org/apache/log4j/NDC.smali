.class public Lorg/apache/log4j/NDC;
.super Ljava/lang/Object;
.source "NDC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/NDC$DiagnosticContext;
    }
.end annotation


# static fields
.field static final REAP_THRESHOLD:I = 0x5

.field static ht:Ljava/util/Hashtable;

.field static pushCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 115
    sput v0, Lorg/apache/log4j/NDC;->pushCounter:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 2

    .line 152
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_0
    return-void
.end method

.method public static cloneStack()Ljava/util/Stack;
    .locals 1

    .line 175
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method public static get()Ljava/lang/String;
    .locals 2

    .line 219
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v0, v0, Lorg/apache/log4j/NDC$DiagnosticContext;->fullMessage:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCurrentStack()Ljava/util/Stack;
    .locals 2

    .line 133
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDepth()I
    .locals 1

    .line 235
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 239
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public static inherit(Ljava/util/Stack;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 208
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static lazyRemove()V
    .locals 7

    .line 245
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    monitor-enter v0

    .line 254
    :try_start_0
    sget v1, Lorg/apache/log4j/NDC;->pushCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/apache/log4j/NDC;->pushCounter:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    .line 255
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 257
    sput v1, Lorg/apache/log4j/NDC;->pushCounter:I

    .line 261
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 262
    sget-object v3, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    .line 267
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    if-le v4, v5, :cond_2

    goto :goto_2

    .line 268
    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    .line 269
    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 273
    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 276
    :cond_4
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    :goto_3
    if-lt v1, v3, :cond_5

    return-void

    .line 280
    :cond_5
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 281
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Lazy NDC removal for thread ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "] ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v5, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 283
    sget-object v4, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 276
    monitor-exit v0

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public static peek()Ljava/lang/String;
    .locals 2

    .line 320
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v0, v0, Lorg/apache/log4j/NDC$DiagnosticContext;->message:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static pop()Ljava/lang/String;
    .locals 2

    .line 300
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v0, v0, Lorg/apache/log4j/NDC$DiagnosticContext;->message:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static push(Ljava/lang/String;)V
    .locals 3

    .line 337
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v0, p0, v1}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    .line 341
    new-instance p0, Ljava/util/Stack;

    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    .line 342
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 343
    sget-object v2, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    new-instance v2, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v2, p0, v1}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    .line 347
    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/NDC$DiagnosticContext;

    .line 350
    new-instance v2, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v2, p0, v1}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static remove()V
    .locals 2

    .line 376
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-static {}, Lorg/apache/log4j/NDC;->lazyRemove()V

    return-void
.end method

.method public static setMaxDepth(I)V
    .locals 2

    .line 412
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 414
    invoke-virtual {v0, p0}, Ljava/util/Vector;->setSize(I)V

    :cond_0
    return-void
.end method
