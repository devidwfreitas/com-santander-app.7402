.class public final Lnhg;
.super Ljava/lang/Object;

# interfaces
.implements Lnjd;
.implements Lnje;
.implements Lnjf;
.implements Lnjj;
.implements Lnjn;
.implements Lnjo;


# instance fields
.field private final a:Lngq;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/text/SimpleDateFormat;

.field private final d:Lnhp;

.field private final e:Lnhc;

.field private final f:Lnkj;

.field private final g:Ljava/lang/String;

.field private final h:Lnjx;

.field private i:Z

.field private j:J

.field private volatile k:J

.field private l:Ljava/lang/String;

.field private volatile m:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lnkj;Lnhp;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnhg;->f:Lnkj;

    invoke-virtual {p1}, Lnkj;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnkj;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lnhg;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lnkj;->b()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lngq;->a(Landroid/content/Context;)Lngq;

    move-result-object v0

    iput-object v0, p0, Lnhg;->a:Lngq;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lnhg;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lnkj;->o()Lnhc;

    move-result-object v0

    iput-object v0, p0, Lnhg;->e:Lnhc;

    iput-object p2, p0, Lnhg;->d:Lnhp;

    new-instance v0, Lnjx;

    iget-object v1, p0, Lnhg;->d:Lnhp;

    invoke-direct {v0, p1, v1}, Lnjx;-><init>(Lnkj;Lnhp;)V

    iput-object v0, p0, Lnhg;->h:Lnjx;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lnhg;->c:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lnhg;->c:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lnhg;->k:J

    invoke-virtual {p1}, Lnkj;->q()Lnin;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnhg;->a(Lnin;)V

    iget-object v0, p0, Lnhg;->d:Lnhp;

    invoke-direct {p0}, Lnhg;->b()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lnhp;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lnkj;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lnhg;J)J
    .locals 1

    iput-wide p1, p0, Lnhg;->k:J

    return-wide p1
.end method

.method static synthetic a(Lnhc;)Landroid/webkit/WebChromeClient;
    .locals 1

    invoke-static {p0}, Lnhg;->b(Lnhc;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lnhg;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lnhg;->m:Landroid/webkit/WebView;

    return-object p1
.end method

.method private a(ZLjava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lnhh;

    invoke-direct {v0, p0, p1, p2}, Lnhh;-><init>(Lnhg;ZLjava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lnhg;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lnhg;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private a(I)Lnik;
    .locals 1

    new-instance v0, Lnhm;

    invoke-direct {v0, p0, p1}, Lnhm;-><init>(Lnhg;I)V

    return-object v0
.end method

.method private static b(Lnhc;)Landroid/webkit/WebChromeClient;
    .locals 1

    new-instance v0, Lnhn;

    invoke-direct {v0, p0}, Lnhn;-><init>(Lnhc;)V

    return-object v0
.end method

.method static synthetic b(Lnhg;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lnhg;->m:Landroid/webkit/WebView;

    return-object v0
.end method

.method private b()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lnhi;

    invoke-direct {v0, p0}, Lnhi;-><init>(Lnhg;)V

    return-object v0
.end method

.method static synthetic c(Lnhg;)Lnhc;
    .locals 1

    iget-object v0, p0, Lnhg;->e:Lnhc;

    return-object v0
.end method

.method private c(Lnil;)V
    .locals 5

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "utag.track(\"%s\", %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "remote_api"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lnil;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnhg;->d:Lnhp;

    new-instance v2, Lnia;

    invoke-direct {v2, v0}, Lnia;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lnhp;->a(Lnib;)V

    return-void
.end method

.method private c()Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lnhg;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnhg;->a:Lngq;

    invoke-virtual {v0}, Lngq;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lnhg;->m:Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnhg;->a:Lngq;

    invoke-virtual {v0}, Lngq;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnhg;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lnhg;->g:Ljava/lang/String;

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x26

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "timestamp_unix="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lnhg;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnip;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_0
    iget-object v3, p0, Lnhg;->m:Landroid/webkit/WebView;

    invoke-static {v3, v0}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v2, v1

    goto :goto_1

    :cond_3
    const/16 v0, 0x3f

    goto :goto_2

    :catch_0
    move-exception v3

    iget-object v3, p0, Lnhg;->e:Lnhc;

    sget v4, Lnkf;->webview_dispatcher_error_loading_url:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    iget-object v0, p0, Lnhg;->m:Landroid/webkit/WebView;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Lnhc;->d(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lnhg;->d:Lnhp;

    new-instance v3, Lnhj;

    invoke-direct {v3, p0, v0}, Lnhj;-><init>(Lnhg;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lnhp;->a(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method static synthetic d(Lnhg;)Lnkj;
    .locals 1

    iget-object v0, p0, Lnhg;->f:Lnkj;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v1, 0x1

    iget-boolean v0, p0, Lnhg;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnhg;->a:Lngq;

    invoke-virtual {v0}, Lngq;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lnhg;->a:Lngq;

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
    iget-object v0, p0, Lnhg;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lnhg;->c:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lnhg;->k:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnhg;->g:Ljava/lang/String;

    invoke-static {v2}, Lnii;->a(Ljava/lang/String;)Lnii;

    move-result-object v2

    const-string v3, "Accept-Encoding"

    const-string v4, "*"

    invoke-virtual {v2, v3, v4}, Lnii;->a(Ljava/lang/String;Ljava/lang/String;)Lnii;

    move-result-object v2

    const-string v3, "If-Modified-Since"

    invoke-virtual {v2, v3, v1}, Lnii;->a(Ljava/lang/String;Ljava/lang/String;)Lnii;

    move-result-object v1

    invoke-direct {p0, v0}, Lnhg;->a(I)Lnik;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnii;->a(Lnik;)Lnii;

    move-result-object v0

    invoke-virtual {v0}, Lnii;->a()Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lnhg;->d:Lnhp;

    invoke-interface {v1, v0}, Lnhp;->c(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method static synthetic e(Lnhg;)Landroid/webkit/WebViewClient;
    .locals 1

    invoke-direct {p0}, Lnhg;->f()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lnhg;->k:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lnhg;->j:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Landroid/webkit/WebViewClient;
    .locals 1

    new-instance v0, Lnhk;

    invoke-direct {v0, p0}, Lnhk;-><init>(Lnhg;)V

    return-object v0
.end method

.method static synthetic f(Lnhg;)Lnhp;
    .locals 1

    iget-object v0, p0, Lnhg;->d:Lnhp;

    return-object v0
.end method

.method static synthetic g(Lnhg;)Z
    .locals 1

    invoke-direct {p0}, Lnhg;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lnhg;)Lnjx;
    .locals 1

    iget-object v0, p0, Lnhg;->h:Lnjx;

    return-object v0
.end method


# virtual methods
.method public a()Lnjx;
    .locals 1

    iget-object v0, p0, Lnhg;->h:Lnjx;

    return-object v0
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lnhg;->f:Lnkj;

    invoke-virtual {v0}, Lnkj;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, p1, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    invoke-static {v3}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    :cond_1
    const-string v0, "Tealium-5.2.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created and cookies enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public a(Landroid/webkit/WebView;Z)V
    .locals 3

    const-string v1, "Tealium-5.2.0"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, " loaded successfully"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "failed to load"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnhg;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lnhg;->m:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnhg;->e:Lnhc;

    invoke-virtual {v1, v0}, Lnhc;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    iget-object v0, p0, Lnhg;->m:Landroid/webkit/WebView;

    invoke-static {v0, p1}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lnhg;->l:Ljava/lang/String;

    iput-object p1, p0, Lnhg;->l:Ljava/lang/String;

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnhg;->d:Lnhp;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0, p1}, Lnhg;->a(ZLjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Lnhp;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lnil;)V
    .locals 5

    const/4 v3, 0x2

    iget-object v0, p0, Lnhg;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "call_type"

    invoke-virtual {p1, v0}, Lnil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "utag.track(\"%s\", %s)"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v0, :cond_1

    const-string v0, "link"

    :cond_1
    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p1}, Lnil;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnhg;->d:Lnhp;

    new-instance v2, Lnia;

    invoke-direct {v2, v0}, Lnia;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lnhp;->a(Lnib;)V

    goto :goto_0
.end method

.method public a(Lnin;)V
    .locals 4

    invoke-virtual {p1}, Lnin;->d()Z

    move-result v0

    iput-boolean v0, p0, Lnhg;->i:Z

    invoke-virtual {p1}, Lnin;->f()F

    move-result v0

    float-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lnhg;->j:J

    return-void
.end method

.method public b(Lnil;)V
    .locals 2

    iget-object v0, p0, Lnhg;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-direct {p0}, Lnhg;->c()Z

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lnhg;->d:Lnhp;

    invoke-direct {p0}, Lnhg;->b()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lnhp;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lnhg;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lnhg;->c(Lnil;)V

    invoke-direct {p0}, Lnhg;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lnhg;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
