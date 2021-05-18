.class Lnhi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnhg;


# direct methods
.method constructor <init>(Lnhg;)V
    .locals 0

    iput-object p1, p0, Lnhi;->a:Lnhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnhi;->a:Lnhg;

    invoke-static {v0}, Lnhg;->b(Lnhg;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnhi;->a:Lnhg;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lnhi;->a:Lnhg;

    invoke-static {v2}, Lnhg;->d(Lnhg;)Lnkj;

    move-result-object v2

    invoke-virtual {v2}, Lnkj;->b()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lnhg;->a(Lnhg;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object v0, p0, Lnhi;->a:Lnhg;

    invoke-static {v0}, Lnhg;->d(Lnhg;)Lnkj;

    move-result-object v0

    invoke-virtual {v0}, Lnkj;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnhi;->a:Lnhg;

    invoke-static {v1}, Lnhg;->b(Lnhg;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lnhi;->a:Lnhg;

    invoke-static {v0}, Lnhg;->b(Lnhg;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lnhi;->a:Lnhg;

    invoke-static {v1}, Lnhg;->c(Lnhg;)Lnhc;

    move-result-object v1

    invoke-static {v1}, Lnhg;->a(Lnhc;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lnhi;->a:Lnhg;

    invoke-static {v0}, Lnhg;->b(Lnhg;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lnhi;->a:Lnhg;

    invoke-static {v1}, Lnhg;->e(Lnhg;)Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOWebView;->setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lnhi;->a:Lnhg;

    invoke-static {v0}, Lnhg;->f(Lnhg;)Lnhp;

    move-result-object v0

    new-instance v1, Lnig;

    iget-object v2, p0, Lnhi;->a:Lnhg;

    invoke-static {v2}, Lnhg;->b(Lnhg;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-direct {v1, v2}, Lnig;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v0, v1}, Lnhp;->a(Lnib;)V

    iget-object v0, p0, Lnhi;->a:Lnhg;

    invoke-static {v0}, Lnhg;->g(Lnhg;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnhi;->a:Lnhg;

    invoke-static {v1}, Lnhg;->c(Lnhg;)Lnhc;

    move-result-object v1

    invoke-virtual {v1}, Lnhc;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnhi;->a:Lnhg;

    invoke-static {v1}, Lnhg;->c(Lnhg;)Lnhc;

    move-result-object v1

    sget v2, Lnkf;->webview_dispatcher_error_creating_webview:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lnhc;->a(ILjava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
