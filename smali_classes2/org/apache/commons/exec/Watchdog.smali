.class public Lorg/apache/commons/exec/Watchdog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final observers:Ljava/util/Vector;

.field private stopped:Z

.field private final timeout:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/exec/Watchdog;->observers:Ljava/util/Vector;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/exec/Watchdog;->stopped:Z

    .line 38
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout must not be less than 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/exec/Watchdog;->timeout:J

    .line 42
    return-void
.end method


# virtual methods
.method public addTimeoutObserver(Lorg/apache/commons/exec/TimeoutObserver;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/commons/exec/Watchdog;->observers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method protected final fireTimeoutOccured()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/commons/exec/Watchdog;->observers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 54
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/exec/TimeoutObserver;

    invoke-interface {v0, p0}, Lorg/apache/commons/exec/TimeoutObserver;->timeoutOccured(Lorg/apache/commons/exec/Watchdog;)V

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public removeTimeoutObserver(Lorg/apache/commons/exec/TimeoutObserver;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/commons/exec/Watchdog;->observers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-wide v4, p0, Lorg/apache/commons/exec/Watchdog;->timeout:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    sub-long/2addr v4, v8

    .line 76
    cmp-long v0, v4, v10

    if-lez v0, :cond_0

    move v0, v1

    .line 77
    :goto_0
    iget-boolean v3, p0, Lorg/apache/commons/exec/Watchdog;->stopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 79
    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_1
    :try_start_2
    iget-wide v4, p0, Lorg/apache/commons/exec/Watchdog;->timeout:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    sub-long/2addr v4, v8

    .line 83
    cmp-long v0, v4, v10

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0

    :cond_1
    move v0, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    if-nez v0, :cond_3

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/exec/Watchdog;->fireTimeoutOccured()V

    .line 91
    :cond_3
    return-void

    .line 85
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 80
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 60
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/commons/exec/Watchdog;->stopped:Z

    .line 61
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "WATCHDOG"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/commons/exec/Watchdog;->stopped:Z

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
