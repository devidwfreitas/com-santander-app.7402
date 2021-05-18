.class public Lorg/apache/commons/exec/ExecuteWatchdog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/exec/TimeoutObserver;


# static fields
.field public static final INFINITE_TIMEOUT:J = -0x1L


# instance fields
.field private caught:Ljava/lang/Exception;

.field private final hasWatchdog:Z

.field private killedProcess:Z

.field private process:Ljava/lang/Process;

.field private volatile processStarted:Z

.field private watch:Z

.field private final watchdog:Lorg/apache/commons/exec/Watchdog;


# direct methods
.method public constructor <init>(J)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v1, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->killedProcess:Z

    .line 83
    iput-boolean v1, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->watch:Z

    .line 84
    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->hasWatchdog:Z

    .line 85
    iput-boolean v1, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->processStarted:Z

    .line 86
    iget-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->hasWatchdog:Z

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Lorg/apache/commons/exec/Watchdog;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/exec/Watchdog;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->watchdog:Lorg/apache/commons/exec/Watchdog;

    .line 88
    iget-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->watchdog:Lorg/apache/commons/exec/Watchdog;

    invoke-virtual {v0, p0}, Lorg/apache/commons/exec/Watchdog;->addTimeoutObserver(Lorg/apache/commons/exec/TimeoutObserver;)V

    .line 93
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 84
    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->watchdog:Lorg/apache/commons/exec/Watchdog;

    goto :goto_1
.end method

.method private ensureStarted()V
    .locals 2

    .prologue
    .line 225
    :goto_0
    iget-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->processStarted:Z

    if-nez v0, :cond_0

    .line 227
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkException()V
    .locals 1

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->caught:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->caught:Ljava/lang/Exception;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized cleanUp()V
    .locals 1

    .prologue
    .line 212
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->watch:Z

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->process:Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroyProcess()V
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/exec/ExecuteWatchdog;->ensureStarted()V

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/exec/ExecuteWatchdog;->timeoutOccured(Lorg/apache/commons/exec/Watchdog;)V

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/exec/ExecuteWatchdog;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWatching()Z
    .locals 1

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/exec/ExecuteWatchdog;->ensureStarted()V

    .line 195
    iget-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->watch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized killedProcess()Z
    .locals 1

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->killedProcess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setProcessNotStarted()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->processStarted:Z

    .line 218
    return-void
.end method

.method public declared-synchronized start(Ljava/lang/Process;)V
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    if-nez p1, :cond_0

    .line 106
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "process is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->process:Ljava/lang/Process;

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->caught:Ljava/lang/Exception;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->killedProcess:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->watch:Z

    .line 114
    iput-object p1, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->process:Ljava/lang/Process;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->processStarted:Z

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    iget-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->hasWatchdog:Z

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->watchdog:Lorg/apache/commons/exec/Watchdog;

    invoke-virtual {v0}, Lorg/apache/commons/exec/Watchdog;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->hasWatchdog:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->watchdog:Lorg/apache/commons/exec/Watchdog;

    invoke-virtual {v0}, Lorg/apache/commons/exec/Watchdog;->stop()V

    .line 130
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->watch:Z

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->process:Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized timeoutOccured(Lorg/apache/commons/exec/Watchdog;)V
    .locals 2

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->process:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/exec/ExecuteWatchdog;->cleanUp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :goto_1
    monitor-exit p0

    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 157
    :try_start_2
    iget-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->watch:Z

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->killedProcess:Z

    .line 159
    iget-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 162
    :catch_1
    move-exception v0

    .line 163
    :try_start_3
    iput-object v0, p0, Lorg/apache/commons/exec/ExecuteWatchdog;->caught:Ljava/lang/Exception;

    .line 164
    const-string v1, "Getting the exit value of the process failed"

    invoke-static {v1, v0}, Lorg/apache/commons/exec/util/DebugUtils;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/exec/ExecuteWatchdog;->cleanUp()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 166
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lorg/apache/commons/exec/ExecuteWatchdog;->cleanUp()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
