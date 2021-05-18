.class Lnha;
.super Ljava/lang/Object;

# interfaces
.implements Lnik;


# instance fields
.field final synthetic a:Lngz;


# direct methods
.method constructor <init>(Lngz;)V
    .locals 0

    iput-object p1, p0, Lnha;->a:Lngz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p5, :cond_1

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lnha;->a:Lngz;

    invoke-static {v4}, Lngz;->a(Lngz;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_2

    iget-object v4, p0, Lnha;->a:Lngz;

    invoke-static {v4}, Lngz;->b(Lngz;)Lnhc;

    move-result-object v4

    sget v5, Lnkf;->profile_retriever_error_bad_profile:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v4, v5, v1, v3}, Lnhc;->a(ILjava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, p5, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v4, p0, Lnha;->a:Lngz;

    invoke-static {v4}, Lngz;->c(Lngz;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :try_start_2
    invoke-static {v0}, Lngm;->a(Ljava/lang/String;)Lngm;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lnha;->a:Lngz;

    invoke-static {v1}, Lngz;->d(Lngz;)Lngm;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnha;->a:Lngz;

    invoke-static {v1}, Lngz;->d(Lngz;)Lngm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lngm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move v1, v3

    :goto_3
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnha;->a:Lngz;

    iget-object v2, p0, Lnha;->a:Lngz;

    invoke-static {v2}, Lngz;->d(Lngz;)Lngm;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lngz;->a(Lngz;Lngm;Lngm;)V

    iget-object v1, p0, Lnha;->a:Lngz;

    invoke-static {v1, v0}, Lngz;->a(Lngz;Lngm;)Lngm;

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v4, p0, Lnha;->a:Lngz;

    invoke-static {v4}, Lngz;->b(Lngz;)Lnhc;

    move-result-object v4

    invoke-virtual {v4, v0}, Lnhc;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lnha;->a:Lngz;

    invoke-static {v0}, Lngz;->b(Lngz;)Lnhc;

    move-result-object v0

    sget v1, Lnkf;->profile_retriever_error_http:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, p2, v2}, Lnhc;->a(ILjava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnha;->a:Lngz;

    invoke-static {v0}, Lngz;->a(Lngz;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
