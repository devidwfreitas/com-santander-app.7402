.class public Lorg/apache/commons/exec/PumpStreamHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/exec/ExecuteStreamHandler;


# static fields
.field private static final STOP_TIMEOUT_ADDITION:J = 0x7d0L


# instance fields
.field private caught:Ljava/io/IOException;

.field private final err:Ljava/io/OutputStream;

.field private errorThread:Ljava/lang/Thread;

.field private final input:Ljava/io/InputStream;

.field private inputStreamPumper:Lorg/apache/commons/exec/InputStreamPumper;

.field private inputThread:Ljava/lang/Thread;

.field private final out:Ljava/io/OutputStream;

.field private outputThread:Ljava/lang/Thread;

.field private stopTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/exec/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p1}, Lorg/apache/commons/exec/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/exec/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->caught:Ljava/io/IOException;

    .line 91
    iput-object p1, p0, Lorg/apache/commons/exec/PumpStreamHandler;->out:Ljava/io/OutputStream;

    .line 92
    iput-object p2, p0, Lorg/apache/commons/exec/PumpStreamHandler;->err:Ljava/io/OutputStream;

    .line 93
    iput-object p3, p0, Lorg/apache/commons/exec/PumpStreamHandler;->input:Ljava/io/InputStream;

    .line 94
    return-void
.end method

.method private createSystemInPump(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 311
    new-instance v0, Lorg/apache/commons/exec/InputStreamPumper;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/exec/InputStreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->inputStreamPumper:Lorg/apache/commons/exec/InputStreamPumper;

    .line 312
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/apache/commons/exec/PumpStreamHandler;->inputStreamPumper:Lorg/apache/commons/exec/InputStreamPumper;

    const-string v2, "Exec Input Stream Pumper"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 313
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 314
    return-object v0
.end method


# virtual methods
.method protected createProcessErrorPump(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/exec/PumpStreamHandler;->createPump(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->errorThread:Ljava/lang/Thread;

    .line 241
    return-void
.end method

.method protected createProcessOutputPump(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/exec/PumpStreamHandler;->createPump(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->outputThread:Ljava/lang/Thread;

    .line 231
    return-void
.end method

.method protected createPump(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 253
    instance-of v0, p2, Ljava/io/PipedOutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 254
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/exec/PumpStreamHandler;->createPump(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Ljava/lang/Thread;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createPump(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 267
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/commons/exec/StreamPumper;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/commons/exec/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    const-string v2, "Exec Stream Pumper"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 268
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 269
    return-object v0
.end method

.method protected getErr()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->err:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected getOut()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public setProcessErrorStream(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->err:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->err:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/exec/PumpStreamHandler;->createProcessErrorPump(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setProcessInputStream(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->input:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->input:Ljava/io/InputStream;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/exec/PumpStreamHandler;->createSystemInPump(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->inputThread:Ljava/lang/Thread;

    .line 151
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->input:Ljava/io/InputStream;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/exec/PumpStreamHandler;->createPump(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->inputThread:Ljava/lang/Thread;

    goto :goto_0

    .line 145
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v1, "Got exception while closing output stream"

    .line 148
    const-string v1, "Got exception while closing output stream"

    invoke-static {v1, v0}, Lorg/apache/commons/exec/util/DebugUtils;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setProcessOutputStream(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/exec/PumpStreamHandler;->createProcessOutputPump(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 116
    :cond_0
    return-void
.end method

.method public setStopTimeout(J)V
    .locals 1

    .prologue
    .line 103
    iput-wide p1, p0, Lorg/apache/commons/exec/PumpStreamHandler;->stopTimeout:J

    .line 104
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->outputThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->outputThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->errorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->errorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 163
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->inputThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->inputThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->inputStreamPumper:Lorg/apache/commons/exec/InputStreamPumper;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->inputStreamPumper:Lorg/apache/commons/exec/InputStreamPumper;

    invoke-virtual {v0}, Lorg/apache/commons/exec/InputStreamPumper;->stopProcessing()V

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->outputThread:Ljava/lang/Thread;

    iget-wide v2, p0, Lorg/apache/commons/exec/PumpStreamHandler;->stopTimeout:J

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/commons/exec/PumpStreamHandler;->stopThread(Ljava/lang/Thread;J)V

    .line 179
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->errorThread:Ljava/lang/Thread;

    iget-wide v2, p0, Lorg/apache/commons/exec/PumpStreamHandler;->stopTimeout:J

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/commons/exec/PumpStreamHandler;->stopThread(Ljava/lang/Thread;J)V

    .line 180
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->inputThread:Ljava/lang/Thread;

    iget-wide v2, p0, Lorg/apache/commons/exec/PumpStreamHandler;->stopTimeout:J

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/commons/exec/PumpStreamHandler;->stopThread(Ljava/lang/Thread;J)V

    .line 182
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->err:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->err:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/commons/exec/PumpStreamHandler;->out:Ljava/io/OutputStream;

    if-eq v0, v1, :cond_1

    .line 184
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->err:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 193
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->caught:Ljava/io/IOException;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lorg/apache/commons/exec/PumpStreamHandler;->caught:Ljava/io/IOException;

    throw v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Got exception while flushing the error stream : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v1, v0}, Lorg/apache/commons/exec/util/DebugUtils;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 194
    :catch_1
    move-exception v0

    .line 195
    const-string v1, "Got exception while flushing the output stream"

    .line 196
    const-string v1, "Got exception while flushing the output stream"

    invoke-static {v1, v0}, Lorg/apache/commons/exec/util/DebugUtils;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 203
    :cond_3
    return-void
.end method

.method protected stopThread(Ljava/lang/Thread;J)V
    .locals 6

    .prologue
    .line 283
    if-eqz p1, :cond_0

    .line 285
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 286
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    const-wide/16 v0, 0x7d0

    add-long/2addr v0, p2

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 290
    invoke-virtual {p1, v0, v1}, Ljava/lang/Thread;->join(J)V

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "The stop timeout of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ms was exceeded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v1, Lorg/apache/commons/exec/ExecuteException;

    const v2, -0x21524111

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/exec/ExecuteException;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/apache/commons/exec/PumpStreamHandler;->caught:Ljava/io/IOException;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
