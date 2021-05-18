.class Lnhh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lnhg;


# direct methods
.method constructor <init>(Lnhg;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnhh;->c:Lnhg;

    iput-boolean p2, p0, Lnhh;->a:Z

    iput-object p3, p0, Lnhh;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lnhh;->c:Lnhg;

    invoke-static {v0}, Lnhg;->a(Lnhg;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lnhh;->c:Lnhg;

    invoke-static {v1}, Lnhg;->a(Lnhg;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lnhh;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnhh;->c:Lnhg;

    invoke-static {v0}, Lnhg;->b(Lnhg;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:utag.track(\'kill_visitor_session\', { event: \'kill_visitor_session\', \'cp.trace_id\' : utag.data[\'cp.trace_id\'] });"

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "javascript:document.cookie = \'trace_id=; expires=Thu, 01 Jan 1970 00:00:01 GMT; path=/\'"

    iget-object v0, p0, Lnhh;->c:Lnhg;

    invoke-static {v0}, Lnhg;->b(Lnhg;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:document.cookie = \'trace_id=; expires=Thu, 01 Jan 1970 00:00:01 GMT; path=/\'"

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnhh;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "javascript:document.cookie = \'trace_id=%s; expires=0; path=/\';"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnhh;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnhh;->c:Lnhg;

    invoke-static {v1}, Lnhg;->b(Lnhg;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lnhh;->c:Lnhg;

    invoke-static {v0}, Lnhg;->b(Lnhg;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnhh;->c:Lnhg;

    invoke-static {v1}, Lnhg;->c(Lnhg;)Lnhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnhc;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
