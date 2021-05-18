.class public interface abstract Lorg/apache/commons/exec/Executor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INVALID_EXITVALUE:I = -0x21524111


# virtual methods
.method public abstract execute(Lorg/apache/commons/exec/CommandLine;)I
.end method

.method public abstract execute(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;)I
.end method

.method public abstract execute(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Lorg/apache/commons/exec/ExecuteResultHandler;)V
.end method

.method public abstract execute(Lorg/apache/commons/exec/CommandLine;Lorg/apache/commons/exec/ExecuteResultHandler;)V
.end method

.method public abstract getProcessDestroyer()Lorg/apache/commons/exec/ProcessDestroyer;
.end method

.method public abstract getStreamHandler()Lorg/apache/commons/exec/ExecuteStreamHandler;
.end method

.method public abstract getWatchdog()Lorg/apache/commons/exec/ExecuteWatchdog;
.end method

.method public abstract getWorkingDirectory()Ljava/io/File;
.end method

.method public abstract isFailure(I)Z
.end method

.method public abstract setExitValue(I)V
.end method

.method public abstract setExitValues([I)V
.end method

.method public abstract setProcessDestroyer(Lorg/apache/commons/exec/ProcessDestroyer;)V
.end method

.method public abstract setStreamHandler(Lorg/apache/commons/exec/ExecuteStreamHandler;)V
.end method

.method public abstract setWatchdog(Lorg/apache/commons/exec/ExecuteWatchdog;)V
.end method

.method public abstract setWorkingDirectory(Ljava/io/File;)V
.end method
