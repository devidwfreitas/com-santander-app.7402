.class public Lmzw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lmzw;->a:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 37
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lmzw;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 40
    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->connect(Ljava/net/HttpURLConnection;)V

    .line 43
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 44
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    if-nez v4, :cond_2

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    :cond_0
    if-eqz v1, :cond_1

    .line 76
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v0, v1

    .line 69
    :goto_1
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v2, "WebClienteGet"

    const-string v3, "Error closing stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 49
    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 65
    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v6

    .line 66
    :goto_3
    :try_start_5
    const-string v4, "WebClienteGet"

    const-string v5, "Error "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 71
    if-eqz v3, :cond_3

    .line 72
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    :cond_3
    if-eqz v2, :cond_4

    .line 76
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_4
    move-object v0, v1

    .line 69
    goto :goto_1

    .line 59
    :cond_5
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v2

    if-nez v2, :cond_8

    .line 71
    if-eqz v0, :cond_6

    .line 72
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    :cond_6
    if-eqz v3, :cond_7

    .line 76
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_7
    :goto_5
    move-object v0, v1

    .line 61
    goto :goto_1

    .line 77
    :catch_2
    move-exception v0

    .line 78
    const-string v2, "WebClienteGet"

    const-string v3, "Error closing stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 63
    :cond_8
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v1

    .line 71
    if-eqz v0, :cond_9

    .line 72
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    :cond_9
    if-eqz v3, :cond_a

    .line 76
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_a
    :goto_6
    move-object v0, v1

    .line 64
    goto :goto_1

    .line 77
    :catch_3
    move-exception v0

    .line 78
    const-string v2, "WebClienteGet"

    const-string v3, "Error closing stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 77
    :catch_4
    move-exception v0

    .line 78
    const-string v2, "WebClienteGet"

    const-string v3, "Error closing stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 71
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_7
    if-eqz v3, :cond_b

    .line 72
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    :cond_b
    if-eqz v1, :cond_c

    .line 76
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 79
    :cond_c
    :goto_8
    throw v0

    .line 77
    :catch_5
    move-exception v1

    .line 78
    const-string v2, "WebClienteGet"

    const-string v3, "Error closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 71
    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_7

    .line 65
    :catch_6
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_3

    :catch_7
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_3
.end method
