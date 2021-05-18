.class public Lorg/apache/commons/exec/DefaultExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/exec/Executor;


# instance fields
.field private exceptionCaught:Ljava/io/IOException;

.field private executorThread:Ljava/lang/Thread;

.field private exitValues:[I

.field private final launcher:Lorg/apache/commons/exec/launcher/CommandLauncher;

.field private processDestroyer:Lorg/apache/commons/exec/ProcessDestroyer;

.field private streamHandler:Lorg/apache/commons/exec/ExecuteStreamHandler;

.field private watchdog:Lorg/apache/commons/exec/ExecuteWatchdog;

.field private workingDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lorg/apache/commons/exec/PumpStreamHandler;

    invoke-direct {v0}, Lorg/apache/commons/exec/PumpStreamHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->streamHandler:Lorg/apache/commons/exec/ExecuteStreamHandler;

    .line 84
    invoke-static {}, Lorg/apache/commons/exec/launcher/CommandLauncherFactory;->createVMLauncher()Lorg/apache/commons/exec/launcher/CommandLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->launcher:Lorg/apache/commons/exec/launcher/CommandLauncher;

    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->exitValues:[I

    .line 86
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->workingDirectory:Ljava/io/File;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->exceptionCaught:Ljava/io/IOException;

    .line 88
    return-void
.end method

.method static access$000(Lorg/apache/commons/exec/DefaultExecutor;)Ljava/io/File;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->workingDirectory:Ljava/io/File;

    return-object v0
.end method

.method static access$100(Lorg/apache/commons/exec/DefaultExecutor;)Lorg/apache/commons/exec/ExecuteStreamHandler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->streamHandler:Lorg/apache/commons/exec/ExecuteStreamHandler;

    return-object v0
.end method

.method static access$200(Lorg/apache/commons/exec/DefaultExecutor;Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Ljava/io/File;Lorg/apache/commons/exec/ExecuteStreamHandler;)I
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/exec/DefaultExecutor;->executeInternal(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Ljava/io/File;Lorg/apache/commons/exec/ExecuteStreamHandler;)I

    move-result v0

    return v0
.end method

.method private closeProcessStreams(Ljava/lang/Process;)V
    .locals 1

    .prologue
    .line 297
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 316
    :goto_2
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    invoke-direct {p0, v0}, Lorg/apache/commons/exec/DefaultExecutor;->setExceptionCaught(Ljava/io/IOException;)V

    goto :goto_0

    .line 306
    :catch_1
    move-exception v0

    .line 307
    invoke-direct {p0, v0}, Lorg/apache/commons/exec/DefaultExecutor;->setExceptionCaught(Ljava/io/IOException;)V

    goto :goto_1

    .line 313
    :catch_2
    move-exception v0

    .line 314
    invoke-direct {p0, v0}, Lorg/apache/commons/exec/DefaultExecutor;->setExceptionCaught(Ljava/io/IOException;)V

    goto :goto_2
.end method

.method private executeInternal(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Ljava/io/File;Lorg/apache/commons/exec/ExecuteStreamHandler;)I
    .locals 5

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/exec/DefaultExecutor;->setExceptionCaught(Ljava/io/IOException;)V

    .line 334
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/exec/DefaultExecutor;->launch(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v1

    .line 337
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/apache/commons/exec/ExecuteStreamHandler;->setProcessInputStream(Ljava/io/OutputStream;)V

    .line 338
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/apache/commons/exec/ExecuteStreamHandler;->setProcessOutputStream(Ljava/io/InputStream;)V

    .line 339
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/apache/commons/exec/ExecuteStreamHandler;->setProcessErrorStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    invoke-interface {p4}, Lorg/apache/commons/exec/ExecuteStreamHandler;->start()V

    .line 350
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/exec/DefaultExecutor;->getProcessDestroyer()Lorg/apache/commons/exec/ProcessDestroyer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lorg/apache/commons/exec/DefaultExecutor;->getProcessDestroyer()Lorg/apache/commons/exec/ProcessDestroyer;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/commons/exec/ProcessDestroyer;->add(Ljava/lang/Process;)Z

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->watchdog:Lorg/apache/commons/exec/ExecuteWatchdog;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->watchdog:Lorg/apache/commons/exec/ExecuteWatchdog;

    invoke-virtual {v0, v1}, Lorg/apache/commons/exec/ExecuteWatchdog;->start(Ljava/lang/Process;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    :cond_1
    const v0, -0x21524111

    .line 362
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 371
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 374
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/exec/DefaultExecutor;->watchdog:Lorg/apache/commons/exec/ExecuteWatchdog;

    if-eqz v2, :cond_2

    .line 375
    iget-object v2, p0, Lorg/apache/commons/exec/DefaultExecutor;->watchdog:Lorg/apache/commons/exec/ExecuteWatchdog;

    invoke-virtual {v2}, Lorg/apache/commons/exec/ExecuteWatchdog;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    :cond_2
    :try_start_4
    invoke-interface {p4}, Lorg/apache/commons/exec/ExecuteStreamHandler;->stop()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 385
    :goto_1
    :try_start_5
    invoke-direct {p0, v1}, Lorg/apache/commons/exec/DefaultExecutor;->closeProcessStreams(Ljava/lang/Process;)V

    .line 387
    invoke-direct {p0}, Lorg/apache/commons/exec/DefaultExecutor;->getExceptionCaught()Ljava/io/IOException;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 388
    invoke-direct {p0}, Lorg/apache/commons/exec/DefaultExecutor;->getExceptionCaught()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 408
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/commons/exec/DefaultExecutor;->getProcessDestroyer()Lorg/apache/commons/exec/ProcessDestroyer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 409
    invoke-virtual {p0}, Lorg/apache/commons/exec/DefaultExecutor;->getProcessDestroyer()Lorg/apache/commons/exec/ProcessDestroyer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/commons/exec/ProcessDestroyer;->remove(Ljava/lang/Process;)Z

    :cond_3
    throw v0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 342
    throw v0

    .line 363
    :catch_1
    move-exception v2

    .line 364
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 371
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    throw v0

    .line 381
    :catch_2
    move-exception v2

    .line 382
    invoke-direct {p0, v2}, Lorg/apache/commons/exec/DefaultExecutor;->setExceptionCaught(Ljava/io/IOException;)V

    goto :goto_1

    .line 391
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/exec/DefaultExecutor;->watchdog:Lorg/apache/commons/exec/ExecuteWatchdog;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_5

    .line 393
    :try_start_8
    iget-object v2, p0, Lorg/apache/commons/exec/DefaultExecutor;->watchdog:Lorg/apache/commons/exec/ExecuteWatchdog;

    invoke-virtual {v2}, Lorg/apache/commons/exec/ExecuteWatchdog;->checkException()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 401
    :cond_5
    :try_start_9
    invoke-virtual {p0, v0}, Lorg/apache/commons/exec/DefaultExecutor;->isFailure(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 402
    new-instance v2, Lorg/apache/commons/exec/ExecuteException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Process exited with an error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/exec/ExecuteException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 394
    :catch_3
    move-exception v0

    .line 395
    throw v0

    .line 396
    :catch_4
    move-exception v0

    .line 397
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 408
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/exec/DefaultExecutor;->getProcessDestroyer()Lorg/apache/commons/exec/ProcessDestroyer;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 409
    invoke-virtual {p0}, Lorg/apache/commons/exec/DefaultExecutor;->getProcessDestroyer()Lorg/apache/commons/exec/ProcessDestroyer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/commons/exec/ProcessDestroyer;->remove(Ljava/lang/Process;)Z

    :cond_7
    return v0
.end method

.method private getExceptionCaught()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->exceptionCaught:Ljava/io/IOException;

    return-object v0
.end method

.method private setExceptionCaught(Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->exceptionCaught:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 421
    iput-object p1, p0, Lorg/apache/commons/exec/DefaultExecutor;->exceptionCaught:Ljava/io/IOException;

    .line 423
    :cond_0
    return-void
.end method


# virtual methods
.method protected createThread(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 251
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public execute(Lorg/apache/commons/exec/CommandLine;)I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/exec/DefaultExecutor;->execute(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public execute(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;)I
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->workingDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->workingDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/exec/DefaultExecutor;->workingDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " doesn\'t exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->workingDirectory:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/commons/exec/DefaultExecutor;->streamHandler:Lorg/apache/commons/exec/ExecuteStreamHandler;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/exec/DefaultExecutor;->executeInternal(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Ljava/io/File;Lorg/apache/commons/exec/ExecuteStreamHandler;)I

    move-result v0

    return v0
.end method

.method public execute(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Lorg/apache/commons/exec/ExecuteResultHandler;)V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->workingDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->workingDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/exec/DefaultExecutor;->workingDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " doesn\'t exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->watchdog:Lorg/apache/commons/exec/ExecuteWatchdog;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->watchdog:Lorg/apache/commons/exec/ExecuteWatchdog;

    invoke-virtual {v0}, Lorg/apache/commons/exec/ExecuteWatchdog;->setProcessNotStarted()V

    .line 192
    :cond_1
    new-instance v0, Lorg/apache/commons/exec/DefaultExecutor$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/exec/DefaultExecutor$1;-><init>(Lorg/apache/commons/exec/DefaultExecutor;Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Lorg/apache/commons/exec/ExecuteResultHandler;)V

    .line 208
    const-string v1, "Exec Default Executor"

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/exec/DefaultExecutor;->createThread(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->executorThread:Ljava/lang/Thread;

    .line 209
    invoke-virtual {p0}, Lorg/apache/commons/exec/DefaultExecutor;->getExecutorThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 210
    return-void
.end method

.method public execute(Lorg/apache/commons/exec/CommandLine;Lorg/apache/commons/exec/ExecuteResultHandler;)V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/exec/DefaultExecutor;->execute(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Lorg/apache/commons/exec/ExecuteResultHandler;)V

    .line 175
    return-void
.end method

.method protected getExecutorThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->executorThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getProcessDestroyer()Lorg/apache/commons/exec/ProcessDestroyer;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->processDestroyer:Lorg/apache/commons/exec/ProcessDestroyer;

    return-object v0
.end method

.method public getStreamHandler()Lorg/apache/commons/exec/ExecuteStreamHandler;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->streamHandler:Lorg/apache/commons/exec/ExecuteStreamHandler;

    return-object v0
.end method

.method public getWatchdog()Lorg/apache/commons/exec/ExecuteWatchdog;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->watchdog:Lorg/apache/commons/exec/ExecuteWatchdog;

    return-object v0
.end method

.method public getWorkingDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->workingDirectory:Ljava/io/File;

    return-object v0
.end method

.method public isFailure(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->exitValues:[I

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v1

    .line 229
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->exitValues:[I

    array-length v0, v0

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->launcher:Lorg/apache/commons/exec/launcher/CommandLauncher;

    invoke-interface {v0, p1}, Lorg/apache/commons/exec/launcher/CommandLauncher;->isFailure(I)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 233
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/exec/DefaultExecutor;->exitValues:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 234
    iget-object v2, p0, Lorg/apache/commons/exec/DefaultExecutor;->exitValues:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_0

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected launch(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Ljava/io/File;)Ljava/lang/Process;
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->launcher:Lorg/apache/commons/exec/launcher/CommandLauncher;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CommandLauncher can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " doesn\'t exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->launcher:Lorg/apache/commons/exec/launcher/CommandLauncher;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/exec/launcher/CommandLauncher;->exec(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public setExitValue(I)V
    .locals 2

    .prologue
    .line 214
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/exec/DefaultExecutor;->setExitValues([I)V

    .line 215
    return-void
.end method

.method public setExitValues([I)V
    .locals 1

    .prologue
    .line 220
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor;->exitValues:[I

    .line 221
    return-void

    .line 220
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    goto :goto_0
.end method

.method public setProcessDestroyer(Lorg/apache/commons/exec/ProcessDestroyer;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lorg/apache/commons/exec/DefaultExecutor;->processDestroyer:Lorg/apache/commons/exec/ProcessDestroyer;

    .line 130
    return-void
.end method

.method public setStreamHandler(Lorg/apache/commons/exec/ExecuteStreamHandler;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/apache/commons/exec/DefaultExecutor;->streamHandler:Lorg/apache/commons/exec/ExecuteStreamHandler;

    .line 102
    return-void
.end method

.method public setWatchdog(Lorg/apache/commons/exec/ExecuteWatchdog;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lorg/apache/commons/exec/DefaultExecutor;->watchdog:Lorg/apache/commons/exec/ExecuteWatchdog;

    .line 116
    return-void
.end method

.method public setWorkingDirectory(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lorg/apache/commons/exec/DefaultExecutor;->workingDirectory:Ljava/io/File;

    .line 144
    return-void
.end method
