.class public Lorg/apache/commons/exec/StreamPumper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_SIZE:I = 0x400


# instance fields
.field private final closeWhenExhausted:Z

.field private finished:Z

.field private final is:Ljava/io/InputStream;

.field private final os:Ljava/io/OutputStream;

.field private final size:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/exec/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/commons/exec/StreamPumper;->is:Ljava/io/InputStream;

    .line 60
    iput-object p2, p0, Lorg/apache/commons/exec/StreamPumper;->os:Ljava/io/OutputStream;

    .line 61
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/commons/exec/StreamPumper;->size:I

    .line 62
    iput-boolean p3, p0, Lorg/apache/commons/exec/StreamPumper;->closeWhenExhausted:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/apache/commons/exec/StreamPumper;->is:Ljava/io/InputStream;

    .line 76
    iput-object p2, p0, Lorg/apache/commons/exec/StreamPumper;->os:Ljava/io/OutputStream;

    .line 77
    if-lez p4, :cond_0

    :goto_0
    iput p4, p0, Lorg/apache/commons/exec/StreamPumper;->size:I

    .line 78
    iput-boolean p3, p0, Lorg/apache/commons/exec/StreamPumper;->closeWhenExhausted:Z

    .line 79
    return-void

    .line 77
    :cond_0
    const/16 p4, 0x400

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized isFinished()Z
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/exec/StreamPumper;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 96
    monitor-enter p0

    .line 98
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/commons/exec/StreamPumper;->finished:Z

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget v0, p0, Lorg/apache/commons/exec/StreamPumper;->size:I

    new-array v0, v0, [B

    .line 105
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/exec/StreamPumper;->is:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    .line 106
    iget-object v2, p0, Lorg/apache/commons/exec/StreamPumper;->os:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 111
    iget-boolean v0, p0, Lorg/apache/commons/exec/StreamPumper;->closeWhenExhausted:Z

    if-eqz v0, :cond_0

    .line 113
    :try_start_2
    iget-object v0, p0, Lorg/apache/commons/exec/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 119
    :cond_0
    :goto_1
    monitor-enter p0

    .line 120
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lorg/apache/commons/exec/StreamPumper;->finished:Z

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 124
    :goto_2
    return-void

    .line 99
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 111
    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/exec/StreamPumper;->closeWhenExhausted:Z

    if-eqz v0, :cond_2

    .line 113
    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/exec/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 119
    :cond_2
    :goto_3
    monitor-enter p0

    .line 120
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lorg/apache/commons/exec/StreamPumper;->finished:Z

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 114
    :catch_1
    move-exception v0

    .line 115
    const-string v1, "Got exception while closing exhausted output stream"

    .line 116
    const-string v1, "Got exception while closing exhausted output stream"

    invoke-static {v1, v0}, Lorg/apache/commons/exec/util/DebugUtils;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 114
    :catch_2
    move-exception v0

    .line 115
    const-string v1, "Got exception while closing exhausted output stream"

    .line 116
    const-string v1, "Got exception while closing exhausted output stream"

    invoke-static {v1, v0}, Lorg/apache/commons/exec/util/DebugUtils;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 122
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 111
    :catchall_3
    move-exception v0

    iget-boolean v1, p0, Lorg/apache/commons/exec/StreamPumper;->closeWhenExhausted:Z

    if-eqz v1, :cond_3

    .line 113
    :try_start_8
    iget-object v1, p0, Lorg/apache/commons/exec/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 119
    :cond_3
    :goto_4
    monitor-enter p0

    .line 120
    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lorg/apache/commons/exec/StreamPumper;->finished:Z

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 114
    :catch_3
    move-exception v1

    .line 115
    const-string v2, "Got exception while closing exhausted output stream"

    .line 116
    const-string v2, "Got exception while closing exhausted output stream"

    invoke-static {v2, v1}, Lorg/apache/commons/exec/util/DebugUtils;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 122
    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0
.end method

.method public declared-synchronized waitFor()V
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/exec/StreamPumper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_0
    monitor-exit p0

    return-void
.end method
