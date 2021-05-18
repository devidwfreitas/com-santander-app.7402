.class public Lcom/ca/mdo/SDKInputStream;
.super Ljava/io/InputStream;
.source "SDKInputStream.java"


# static fields
.field private static final END_OF_STREAM:I = -0x1


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field public final delegate:Ljava/io/InputStream;

.field public final encoding:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field private size:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/ca/mdo/SDKInputStream;->size:I

    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Inputstream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    .line 26
    iput-object p2, p0, Lcom/ca/mdo/SDKInputStream;->connection:Ljava/net/HttpURLConnection;

    .line 27
    iput-object p3, p0, Lcom/ca/mdo/SDKInputStream;->encoding:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/ca/mdo/SDKInputStream;->mimeType:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private disconnectConnection()V
    .locals 3

    .prologue
    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/ca/mdo/SDKInputStream;->connection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/ca/mdo/SDKInputStream;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while closing urlconnection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/ca/mdo/SDKInputStream;->disconnectConnection()V

    .line 50
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 53
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 61
    .local v0, "readVal":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/ca/mdo/SDKInputStream;->disconnectConnection()V

    .line 66
    :goto_0
    return v0

    .line 64
    :cond_0
    iget v1, p0, Lcom/ca/mdo/SDKInputStream;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ca/mdo/SDKInputStream;->size:I

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 72
    .local v0, "readVal":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/ca/mdo/SDKInputStream;->disconnectConnection()V

    .line 77
    :goto_0
    return v0

    .line 75
    :cond_0
    iget v1, p0, Lcom/ca/mdo/SDKInputStream;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ca/mdo/SDKInputStream;->size:I

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 81
    .local v0, "readVal":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/ca/mdo/SDKInputStream;->disconnectConnection()V

    .line 86
    :goto_0
    return v0

    .line 84
    :cond_0
    iget v1, p0, Lcom/ca/mdo/SDKInputStream;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ca/mdo/SDKInputStream;->size:I

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
