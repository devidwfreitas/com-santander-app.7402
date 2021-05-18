.class Lnij;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnii;


# direct methods
.method constructor <init>(Lnii;)V
    .locals 0

    iput-object p1, p0, Lnij;->a:Lnii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lnij;->a:Lnii;

    invoke-static {v2}, Lnii;->a(Lnii;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ca/android/app/CaMDOHTTPClient;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lnij;->a:Lnii;

    invoke-static {v1}, Lnii;->b(Lnii;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "*"

    invoke-virtual {v7, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnij;->a:Lnii;

    invoke-static {v1}, Lnii;->c(Lnii;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnij;->a:Lnii;

    invoke-static {v1}, Lnii;->c(Lnii;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    iget-object v2, p0, Lnij;->a:Lnii;

    invoke-static {v2}, Lnii;->e(Lnii;)Lnik;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnij;->a:Lnii;

    invoke-static {v2}, Lnii;->e(Lnii;)Lnik;

    move-result-object v2

    iget-object v3, p0, Lnij;->a:Lnii;

    invoke-static {v3}, Lnii;->a(Lnii;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lnik;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_3
    const-string v1, "HEAD"

    iget-object v2, p0, Lnij;->a:Lnii;

    invoke-static {v2}, Lnii;->b(Lnii;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v4

    :goto_3
    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v2, p0, Lnij;->a:Lnii;

    invoke-static {v2}, Lnii;->d(Lnii;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v4, p0, Lnij;->a:Lnii;

    invoke-static {v4}, Lnii;->d(Lnii;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :goto_4
    invoke-static {v7}, Lcom/ca/android/app/CaMDOHTTPClient;->connect(Ljava/net/HttpURLConnection;)V

    if-eqz v1, :cond_6

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lnii;->a(Ljava/io/InputStream;)[B

    move-result-object v6

    :goto_5
    iget-object v1, p0, Lnij;->a:Lnii;

    invoke-static {v1}, Lnii;->e(Lnii;)Lnik;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :cond_3
    move v1, v5

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v7, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    :goto_6
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v1

    :cond_6
    move-object v6, v3

    goto :goto_5

    :cond_7
    :try_start_5
    iget-object v1, p0, Lnij;->a:Lnii;

    invoke-static {v1}, Lnii;->e(Lnii;)Lnik;

    move-result-object v1

    iget-object v2, p0, Lnij;->a:Lnii;

    invoke-static {v2}, Lnii;->a(Lnii;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnij;->a:Lnii;

    invoke-static {v3}, Lnii;->b(Lnii;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v4

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-interface/range {v1 .. v6}, Lnik;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;[B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    move-object v7, v3

    goto :goto_6

    :catch_1
    move-exception v1

    move-object v7, v3

    goto/16 :goto_1
.end method
