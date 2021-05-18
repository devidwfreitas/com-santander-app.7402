.class Lnhk;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lnhg;


# direct methods
.method constructor <init>(Lnhg;)V
    .locals 0

    iput-object p1, p0, Lnhk;->a:Lnhg;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lnhg;->a(Lnhg;J)J

    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->a(Lnhg;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->a(Lnhg;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->c(Lnhg;)Lnhc;

    move-result-object v0

    sget v1, Lnkf;->webview_dispatcher_error_loading_url:I

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lnhc;->d(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->f(Lnhg;)Lnhp;

    move-result-object v0

    new-instance v1, Lnhl;

    invoke-direct {v1, p0, p1}, Lnhl;-><init>(Lnhk;Landroid/webkit/WebView;)V

    invoke-interface {v0, v1}, Lnhp;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->f(Lnhg;)Lnhp;

    move-result-object v0

    new-instance v1, Lnih;

    iget-object v2, p0, Lnhk;->a:Lnhg;

    invoke-static {v2}, Lnhg;->b(Lnhg;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lnih;-><init>(Landroid/webkit/WebView;Z)V

    invoke-interface {v0, v1}, Lnhp;->a(Lnib;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->a(Lnhg;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lnhg;->a(Lnhg;J)J

    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->f(Lnhg;)Lnhp;

    move-result-object v0

    new-instance v1, Lnih;

    iget-object v2, p0, Lnhk;->a:Lnhg;

    invoke-static {v2}, Lnhg;->b(Lnhg;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnih;-><init>(Landroid/webkit/WebView;Z)V

    invoke-interface {v0, v1}, Lnhp;->a(Lnib;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 4

    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->a(Lnhg;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->c(Lnhg;)Lnhc;

    move-result-object v0

    invoke-virtual {v0}, Lnhc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->c(Lnhg;)Lnhc;

    move-result-object v0

    sget v1, Lnkf;->webview_dispatcher_rcvd_error:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lnhc;->d(I[Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->c(Lnhg;)Lnhc;

    move-result-object v0

    sget v1, Lnkf;->webview_dispatcher_rcvd_http_error:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lnhc;->d(I[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5

    const/4 v2, 0x3

    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->a(Lnhg;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->c(Lnhg;)Lnhc;

    move-result-object v0

    sget v1, Lnkf;->webview_dispatcher_rcvd_ssl_error:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lnhc;->d(I[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnhk;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {p2}, Lnjx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->d(Lnhg;)Lnkj;

    move-result-object v0

    invoke-virtual {v0}, Lnkj;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lnjx;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->h(Lnhg;)Lnjx;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnjx;->c(Ljava/lang/String;)V

    :goto_0
    return v5

    :cond_1
    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->c(Lnhg;)Lnhc;

    move-result-object v0

    sget v1, Lnkf;->webview_dispatcher_error_remote_command_not_allowed:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lnhc;->a(ILjava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnhk;->a:Lnhg;

    invoke-static {v1}, Lnhg;->c(Lnhg;)Lnhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnhc;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnhk;->a:Lnhg;

    invoke-static {v0}, Lnhg;->c(Lnhg;)Lnhc;

    move-result-object v0

    sget v1, Lnkf;->webview_dispatcher_warn_override_url_loading:I

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lnhc;->e(I[Ljava/lang/Object;)V

    goto :goto_0
.end method
