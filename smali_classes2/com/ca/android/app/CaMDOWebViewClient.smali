.class public Lcom/ca/android/app/CaMDOWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CaMDOWebViewClient.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private cookie:Ljava/lang/String;

.field private httpGETUrl:Ljava/lang/String;

.field private mdoWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewClient;)V
    .locals 0
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/ca/android/app/CaMDOWebViewClient;->mdoWebViewClient:Landroid/webkit/WebViewClient;

    .line 44
    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ca/android/app/CaMDOWebViewClient;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpGETUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ca/android/app/CaMDOWebViewClient;->httpGETUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMdoWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ca/android/app/CaMDOWebViewClient;->mdoWebViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/ca/android/app/AnalyticsAgent;->onLoadResourceOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onLoadResourceDefaultImpl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/ca/android/app/AnalyticsAgent;->onPageFinishedOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 64
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/ca/android/app/AnalyticsAgent;->onPageStartedOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 65
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/ca/android/app/AnalyticsAgent;->onReceivedErrorOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ca/android/app/CaMDOWebViewClient;->mdoWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/ca/android/app/CaMDOWebViewClient;->mdoWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 52
    :cond_0
    return-void
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ca/android/app/CaMDOWebViewClient;->cookie:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setHttpGETUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpGETUrl"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/ca/android/app/CaMDOWebViewClient;->httpGETUrl:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .prologue
    .line 83
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/app/CaMDOWebViewClient;->mdoWebViewClient:Landroid/webkit/WebViewClient;

    invoke-interface {v0, p1, v1, p2}, Lcom/ca/android/app/AnalyticsAgent;->shouldInterceptRequestOfWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/app/CaMDOWebViewClient;->mdoWebViewClient:Landroid/webkit/WebViewClient;

    invoke-interface {v0, p1, v1, p2}, Lcom/ca/android/app/AnalyticsAgent;->shouldInterceptRequestOfWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ca/android/app/CaMDOWebViewClient;->mdoWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/ca/android/app/CaMDOWebViewClient;->mdoWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
