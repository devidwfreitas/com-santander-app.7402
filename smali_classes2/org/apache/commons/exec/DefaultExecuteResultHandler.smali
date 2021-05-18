.class public Lorg/apache/commons/exec/DefaultExecuteResultHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/exec/ExecuteResultHandler;


# static fields
.field private static final SLEEP_TIME_MS:I = 0x32


# instance fields
.field private volatile exception:Lorg/apache/commons/exec/ExecuteException;

.field private volatile exitValue:I

.field private volatile hasResult:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->hasResult:Z

    .line 44
    const v0, -0x21524111

    iput v0, p0, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->exitValue:I

    .line 45
    return-void
.end method


# virtual methods
.method public getException()Lorg/apache/commons/exec/ExecuteException;
    .locals 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->hasResult:Z

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The process has not exited yet therefore no result is available ..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->exception:Lorg/apache/commons/exec/ExecuteException;

    return-object v0
.end method

.method public getExitValue()I
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->hasResult:Z

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The process has not exited yet therefore no result is available ..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iget v0, p0, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->exitValue:I

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->hasResult:Z

    return v0
.end method

.method public onProcessComplete(I)V
    .locals 1

    .prologue
    .line 51
    iput p1, p0, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->exitValue:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->exception:Lorg/apache/commons/exec/ExecuteException;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->hasResult:Z

    .line 54
    return-void
.end method

.method public onProcessFailed(Lorg/apache/commons/exec/ExecuteException;)V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p1}, Lorg/apache/commons/exec/ExecuteException;->getExitValue()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->exitValue:I

    .line 61
    iput-object p1, p0, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->exception:Lorg/apache/commons/exec/ExecuteException;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->hasResult:Z

    .line 63
    return-void
.end method

.method public waitFor()V
    .locals 2

    .prologue
    .line 118
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->hasResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public waitFor(J)V
    .locals 5

    .prologue
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 140
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->hasResult()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 141
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method
