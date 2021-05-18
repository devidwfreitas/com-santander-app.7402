.class public Lnep;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/webview/presentation/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/webview/presentation/WebViewActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lnep;->a:Lcom/santander/app/webview/presentation/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lnep;->a:Lcom/santander/app/webview/presentation/WebViewActivity;

    invoke-virtual {v0}, Lcom/santander/app/webview/presentation/WebViewActivity;->d()V

    .line 140
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 130
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/santander/app/webview/presentation/WebViewActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lnep;->a:Lcom/santander/app/webview/presentation/WebViewActivity;

    invoke-static {v0}, Lcom/santander/app/webview/presentation/WebViewActivity;->a(Lcom/santander/app/webview/presentation/WebViewActivity;)Lnes;

    move-result-object v0

    iget-object v1, p0, Lnep;->a:Lcom/santander/app/webview/presentation/WebViewActivity;

    const v2, 0x7f090443

    invoke-virtual {v1, v2}, Lcom/santander/app/webview/presentation/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnes;->c(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lnep;->a:Lcom/santander/app/webview/presentation/WebViewActivity;

    invoke-static {v0}, Lcom/santander/app/webview/presentation/WebViewActivity;->b(Lcom/santander/app/webview/presentation/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 135
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
