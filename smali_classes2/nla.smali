.class final Lnla;
.super Ljava/lang/Object;

# interfaces
.implements Lnik;
.implements Lnjd;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lnhp;

.field private final d:Lngq;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/text/SimpleDateFormat;

.field private final g:Lnhc;

.field private volatile h:Lnin;

.field private volatile i:J

.field private volatile j:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lnkj;Lnhp;)V
    .locals 1

    invoke-virtual {p2}, Lnkj;->b()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lngq;->a(Landroid/content/Context;)Lngq;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lnla;-><init>(Ljava/lang/String;Lnkj;Lnhp;Lngq;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lnkj;Lnhp;Lngq;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lnkj;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lnkj;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lnla;->b:Ljava/lang/String;

    iput-object p1, p0, Lnla;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lnkj;->q()Lnin;

    move-result-object v0

    iput-object v0, p0, Lnla;->h:Lnin;

    iput-object p3, p0, Lnla;->c:Lnhp;

    iput-object p4, p0, Lnla;->d:Lngq;

    invoke-virtual {p2}, Lnkj;->o()Lnhc;

    move-result-object v0

    iput-object v0, p0, Lnla;->g:Lnhc;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lnla;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lnla;->f:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lnla;->f:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v0, p0, Lnla;->h:Lnin;

    invoke-virtual {v0}, Lnin;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Lnla;->a(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lnkj;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lnla;J)J
    .locals 1

    iput-wide p1, p0, Lnla;->i:J

    return-wide p1
.end method

.method static synthetic a(Lnla;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lnla;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private a()V
    .locals 8

    const/4 v1, 0x1

    iget-object v0, p0, Lnla;->h:Lnin;

    invoke-virtual {v0}, Lnin;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnla;->d:Lngq;

    invoke-virtual {v0}, Lngq;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lnla;->d:Lngq;

    invoke-virtual {v0}, Lngq;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnla;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lnla;->c:Lnhp;

    iget-object v1, p0, Lnla;->b:Ljava/lang/String;

    invoke-static {v1}, Lnii;->a(Ljava/lang/String;)Lnii;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnii;->a(Lnik;)Lnii;

    move-result-object v1

    const-string v2, "If-Modified-Since"

    iget-object v3, p0, Lnla;->f:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lnla;->j:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnii;->a(Ljava/lang/String;Ljava/lang/String;)Lnii;

    move-result-object v1

    invoke-virtual {v1}, Lnii;->a()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lnhp;->c(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private a(I)V
    .locals 2

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnla;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnla;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnla;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lnla;->g:Lnhc;

    sget v1, Lnkf;->publish_settings_retriever_malformed_json:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lnhc;->d(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lnla;I)V
    .locals 0

    invoke-direct {p0, p1}, Lnla;->a(I)V

    return-void
.end method

.method static synthetic a(Lnla;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnla;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-string v0, "5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lnin;->a(Lorg/json/JSONObject;)Lnin;

    move-result-object v0

    iget-object v1, p0, Lnla;->h:Lnin;

    invoke-virtual {v1, v0}, Lnin;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lnla;->h:Lnin;

    iget-object v0, p0, Lnla;->c:Lnhp;

    new-instance v1, Lnid;

    iget-object v2, p0, Lnla;->h:Lnin;

    invoke-direct {v1, v2}, Lnid;-><init>(Lnin;)V

    invoke-interface {v0, v1}, Lnhp;->b(Lnib;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnla;->g:Lnhc;

    invoke-virtual {v0}, Lnhc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnla;->g:Lnhc;

    sget v1, Lnkf;->publish_settings_retriever_no_change:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lnhc;->a(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Lnio; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lnla;->g:Lnhc;

    invoke-virtual {v0}, Lnhc;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnla;->g:Lnhc;

    sget v1, Lnkf;->publish_settings_retriever_disabled:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lnla;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lnhc;->c(I[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lnla;->a:Ljava/lang/String;

    invoke-static {v0}, Lnkg;->c(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lnla;->h:Lnin;

    invoke-virtual {v0}, Lnin;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnla;->d:Lngq;

    invoke-virtual {v0}, Lngq;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lnla;->d:Lngq;

    invoke-virtual {v0}, Lngq;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lnla;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-eq v1, v0, :cond_0

    :cond_3
    iget-object v0, p0, Lnla;->g:Lnhc;

    invoke-virtual {v0}, Lnhc;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnla;->g:Lnhc;

    sget v3, Lnkf;->publish_settings_retriever_fetching:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lnla;->b:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Lnhc;->a(I[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lnla;->c:Lnhp;

    iget-object v1, p0, Lnla;->b:Ljava/lang/String;

    invoke-static {v1}, Lnii;->b(Ljava/lang/String;)Lnii;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnii;->a(Lnik;)Lnii;

    move-result-object v1

    invoke-virtual {v1}, Lnii;->a()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lnhp;->c(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method static synthetic b(Lnla;J)J
    .locals 1

    iput-wide p1, p0, Lnla;->j:J

    return-wide p1
.end method

.method static synthetic b(Lnla;)Lnhc;
    .locals 1

    iget-object v0, p0, Lnla;->g:Lnhc;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lnkz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lnla;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lnla;->g:Lnhc;

    sget v1, Lnkf;->publish_settings_retriever_no_mps:I

    invoke-virtual {v0, v1}, Lnhc;->a(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lnla;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnla;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b()Z
    .locals 6

    iget-object v0, p0, Lnla;->h:Lnin;

    invoke-virtual {v0}, Lnin;->f()F

    move-result v0

    float-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lnla;->i:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;[B)V
    .locals 7
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

    if-eqz p4, :cond_0

    const-string v0, "Content-Type"

    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Content-Type"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    :goto_0
    iget-object v6, p0, Lnla;->c:Lnhp;

    new-instance v0, Lnlb;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lnlb;-><init>(Lnla;Ljava/lang/String;[BZI)V

    invoke-interface {v6, v0}, Lnhp;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lnla;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public b(Lnil;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lnla;->h:Lnin;

    invoke-virtual {v0}, Lnin;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lnla;->b()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lnla;->a(Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lnla;->a()V

    goto :goto_1
.end method
