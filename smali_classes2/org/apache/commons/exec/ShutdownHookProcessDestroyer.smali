.class public Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/apache/commons/exec/ProcessDestroyer;


# instance fields
.field private added:Z

.field private destroyProcessThread:Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;

.field private final processes:Ljava/util/Vector;

.field private volatile running:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->processes:Ljava/util/Vector;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->destroyProcessThread:Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;

    .line 36
    iput-boolean v1, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->added:Z

    .line 41
    iput-boolean v1, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->running:Z

    .line 73
    return-void
.end method

.method private addShutdownHook()V
    .locals 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->running:Z

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;

    invoke-direct {v0, p0}, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;-><init>(Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;)V

    iput-object v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->destroyProcessThread:Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;

    .line 82
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->destroyProcessThread:Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->added:Z

    .line 85
    :cond_0
    return-void
.end method

.method private removeShutdownHook()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-boolean v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->added:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->running:Z

    if-nez v0, :cond_1

    .line 93
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->destroyProcessThread:Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    move-result v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Could not remove shutdown hook"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->destroyProcessThread:Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;

    invoke-virtual {v0, v4}, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;->setShouldDestroy(Z)V

    .line 105
    iget-object v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->destroyProcessThread:Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;

    invoke-virtual {v0}, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;->start()V

    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->destroyProcessThread:Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->destroyProcessThread:Lorg/apache/commons/exec/ShutdownHookProcessDestroyer$ProcessDestroyerImpl;

    .line 114
    iput-boolean v4, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->added:Z

    .line 116
    :cond_1
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Process;)Z
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->processes:Ljava/util/Vector;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->processes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->addShutdownHook()V

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->processes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->processes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAddedAsShutdownHook()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->added:Z

    return v0
.end method

.method public remove(Ljava/lang/Process;)Z
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->processes:Ljava/util/Vector;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->processes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->processes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-direct {p0}, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->removeShutdownHook()V

    .line 163
    :cond_0
    monitor-exit v1

    return v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 180
    iget-object v1, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->processes:Ljava/util/Vector;

    monitor-enter v1

    .line 181
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->running:Z

    .line 182
    iget-object v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->processes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 183
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    :try_start_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Unable to terminate process during process shutdown"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/commons/exec/ShutdownHookProcessDestroyer;->processes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
