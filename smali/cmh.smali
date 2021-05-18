.class public Lcmh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcmg;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Z

.field private f:Lcml;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .prologue
    const-wide/32 v4, 0x493e0

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcmh;->a:Ljava/lang/Object;

    .line 38
    iput-boolean v2, p0, Lcmh;->d:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcmh;->e:Z

    .line 44
    iput-object p1, p0, Lcmh;->c:Landroid/content/Context;

    .line 45
    new-instance v0, Lcml;

    invoke-direct {v0, p1}, Lcml;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcmh;->f:Lcml;

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcmh;->b:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcmk;

    invoke-direct {v1, p0}, Lcmk;-><init>(Lcmh;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 48
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 49
    invoke-static {p1}, Lcmn;->b(Landroid/content/Context;)J

    move-result-wide v2

    .line 50
    invoke-static {}, Lcmn;->a()J

    move-result-wide v8

    .line 51
    add-long/2addr v2, v4

    sub-long/2addr v2, v8

    .line 52
    new-instance v1, Lcmj;

    const/4 v8, 0x0

    invoke-direct {v1, p0, v8}, Lcmj;-><init>(Lcmh;Lcmi;)V

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    .line 53
    :goto_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 56
    return-void

    :cond_0
    move-wide v2, v6

    .line 53
    goto :goto_0
.end method

.method static synthetic a(Lcmh;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcmh;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcmh;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcmh;->d:Z

    return p1
.end method

.method static synthetic b(Lcmh;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcmh;->e:Z

    return v0
.end method

.method static synthetic b(Lcmh;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcmh;->e:Z

    return p1
.end method

.method static synthetic c(Lcmh;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcmh;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcmh;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcmh;->d:Z

    return v0
.end method

.method static synthetic e(Lcmh;)Lcml;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcmh;->f:Lcml;

    return-object v0
.end method

.method static synthetic f(Lcmh;)Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcmh;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected a(Lcmg;)I
    .locals 10

    .prologue
    const/16 v8, 0x12c

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 211
    const-string v3, "GoogleConversionReporter"

    const-string v4, "Pinging: "

    iget-object v0, p1, Lcmg;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v3, 0x0

    .line 214
    iget-object v0, p1, Lcmg;->g:Ljava/lang/String;

    move v4, v1

    .line 217
    :goto_1
    const/4 v5, 0x5

    if-ge v4, v5, :cond_a

    .line 219
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-static {v5}, Lcom/ca/android/app/CaMDOHTTPClient;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 225
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 226
    const v3, 0xea60

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 227
    const v3, 0xea60

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 228
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 230
    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v3

    .line 234
    if-gt v8, v3, :cond_4

    const/16 v5, 0x190

    if-ge v3, v5, :cond_4

    .line 235
    const-string v3, "Location"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    const-string v2, "GoogleConversionReporter"

    const-string v3, "Unable to follow redirect, no Location header."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move v0, v1

    .line 268
    :goto_2
    return v0

    .line 211
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_2
    if-eqz v0, :cond_3

    .line 260
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 217
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_1

    .line 243
    :cond_4
    :try_start_2
    const-string v4, "GoogleConversionReporter"

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x21

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Receive response code "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v4, 0xc8

    if-gt v4, v3, :cond_5

    if-ge v3, v8, :cond_5

    move v2, v6

    .line 250
    :cond_5
    if-ne v2, v6, :cond_6

    .line 251
    invoke-virtual {p0, p1}, Lcmh;->b(Lcmg;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    :cond_6
    if-eqz v0, :cond_7

    .line 260
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move v0, v2

    goto :goto_2

    .line 255
    :catch_0
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    .line 256
    :goto_3
    :try_start_3
    const-string v3, "GoogleConversionReporter"

    const-string v4, "Error sending ping"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 259
    if-eqz v2, :cond_8

    .line 260
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    move v0, v1

    goto :goto_2

    .line 259
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_4
    if-eqz v3, :cond_9

    .line 260
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v0

    .line 267
    :cond_a
    const-string v0, "GoogleConversionReporter"

    const-string v1, "Ping failed; too many redirects."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 268
    goto :goto_2

    .line 259
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 255
    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 110
    return-void
.end method

.method public a(Ljava/lang/String;Lcms;ZZZ)V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcmg;

    invoke-direct {v0, p1, p2, p3, p4}, Lcmg;-><init>(Ljava/lang/String;Lcms;ZZ)V

    .line 88
    iget-object v1, p0, Lcmh;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    if-nez p5, :cond_0

    .line 90
    :try_start_0
    new-instance v2, Lcmi;

    invoke-direct {v2, p0, v0}, Lcmi;-><init>(Lcmh;Lcmg;)V

    invoke-virtual {p0, v2}, Lcmh;->a(Ljava/lang/Runnable;)V

    .line 96
    monitor-exit v1

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v2, p0, Lcmh;->f:Lcml;

    invoke-virtual {v2, v0}, Lcml;->b(Lcmg;)V

    .line 100
    iget-boolean v2, p0, Lcmh;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcmh;->c:Landroid/content/Context;

    invoke-static {v2}, Lcmn;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcmh;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcmh;->d:Z

    .line 103
    iget-object v0, p0, Lcmh;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 105
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b(Lcmg;)V
    .locals 3

    .prologue
    .line 276
    iget-boolean v0, p1, Lcmg;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcmg;->a:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcmh;->c:Landroid/content/Context;

    iget-object v1, p1, Lcmg;->e:Ljava/lang/String;

    iget-object v2, p1, Lcmg;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcmn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    return-void
.end method
