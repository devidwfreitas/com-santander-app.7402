.class public Lorg/apache/commons/exec/InputStreamPumper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final SLEEPING_TIME:I = 0x64


# instance fields
.field private final is:Ljava/io/InputStream;

.field private final os:Ljava/io/OutputStream;

.field private volatile stop:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/exec/InputStreamPumper;->is:Ljava/io/InputStream;

    .line 53
    iput-object p2, p0, Lorg/apache/commons/exec/InputStreamPumper;->os:Ljava/io/OutputStream;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/exec/InputStreamPumper;->stop:Z

    .line 55
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/exec/InputStreamPumper;->stop:Z

    if-nez v0, :cond_0

    .line 65
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/exec/InputStreamPumper;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/exec/InputStreamPumper;->stop:Z

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/exec/InputStreamPumper;->os:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/commons/exec/InputStreamPumper;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    :try_start_1
    const-string v1, "Got exception while reading/writing the stream"

    .line 73
    const-string v1, "Got exception while reading/writing the stream"

    invoke-static {v1, v0}, Lorg/apache/commons/exec/util/DebugUtils;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :cond_0
    return-void

    .line 68
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/commons/exec/InputStreamPumper;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 69
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public stopProcessing()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/exec/InputStreamPumper;->stop:Z

    .line 81
    return-void
.end method
