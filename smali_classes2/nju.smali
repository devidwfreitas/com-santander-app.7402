.class Lnju;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lnjr;

.field final synthetic d:Lnjt;


# direct methods
.method constructor <init>(Lnjt;Ljava/lang/String;Ljava/lang/String;Lnjr;)V
    .locals 0

    iput-object p1, p0, Lnju;->d:Lnjt;

    iput-object p2, p0, Lnju;->a:Ljava/lang/String;

    iput-object p3, p0, Lnju;->b:Ljava/lang/String;

    iput-object p4, p0, Lnju;->c:Lnjr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lnju;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lnju;->c:Lnjr;

    invoke-static {v1, v0}, Lnjt;->a(Lnjr;Ljava/net/HttpURLConnection;)V

    iget-object v1, p0, Lnju;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v1, "POST"

    iget-object v2, p0, Lnju;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PUT"

    iget-object v2, p0, Lnju;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lnju;->c:Lnjr;

    invoke-virtual {v2}, Lnjr;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lnjt;->a(Lorg/json/JSONObject;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Lnju;->c:Lnjr;

    const/16 v2, 0x22b

    invoke-virtual {v1, v2}, Lnjr;->a(I)Lnjr;

    move-result-object v1

    invoke-static {v0}, Lnis;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnjr;->a(Ljava/lang/String;)Lnjr;

    move-result-object v0

    invoke-virtual {v0}, Lnjr;->g()V

    :goto_2
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    iget-object v1, p0, Lnju;->c:Lnjr;

    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v0

    invoke-virtual {v1, v0}, Lnjr;->a(I)Lnjr;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnjr;->a(Ljava/lang/String;)Lnjr;

    move-result-object v0

    invoke-virtual {v0}, Lnjr;->g()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method
