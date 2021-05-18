.class public Lcom/ca/mdo/DummyAgentImpl;
.super Lcom/ca/mdo/DefaultAnalyticsAgentImpl;
.source "DummyAgentImpl.java"


# instance fields
.field private initialized:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ca/mdo/DefaultAnalyticsAgentImpl;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ca/mdo/DummyAgentImpl;->initialized:Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/ca/mdo/DummyAgentImpl;->register(Landroid/app/Application;)V

    .line 52
    return-void
.end method


# virtual methods
.method public addToApmHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerString"    # Ljava/lang/String;

    .prologue
    .line 447
    return-void
.end method

.method public connectOnHttpURLConnection(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 138
    return-void
.end method

.method public dispatchTouchEventOfActivity(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 243
    return-void
.end method

.method public enterPrivateZone()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public executeOnHttpClient(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "client"    # Landroid/net/http/AndroidHttpClient;
    .param p2, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1, p2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeOnHttpClient(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "httpHost"    # Lorg/apache/http/HttpHost;
    .param p3, "httpRequest"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-interface {p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeOnHttpClient(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "httpHost"    # Lorg/apache/http/HttpHost;
    .param p3, "httpRequest"    # Lorg/apache/http/HttpRequest;
    .param p4, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-interface {p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeOnHttpClient(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeOnHttpClient(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-interface {p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeOnHttpClient(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/impl/client/AbstractHttpClient;
    .param p2, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1, p2, p3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeOnHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeOnHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeOnHttpClientWithHandler(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "uriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "handler"    # Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-interface {p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public executeOnHttpClientWithHandler(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "uriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "handler"    # Lorg/apache/http/client/ResponseHandler;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-interface {p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public executeOnHttpClientWithHandler(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "handler"    # Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public executeOnHttpClientWithHandler(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "handler"    # Lorg/apache/http/client/ResponseHandler;
    .param p5, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public exitPrivateZone()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public getAPMHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntervalOnActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)J
    .locals 2
    .param p1, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;

    .prologue
    .line 247
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getResponseCodeOnHttpURLConnection(Ljava/net/HttpURLConnection;)I
    .locals 1
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public ignoreView(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewName"    # Ljava/lang/String;

    .prologue
    .line 457
    return-void
.end method

.method public ignoreViews(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "viewNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/ca/mdo/DummyAgentImpl;->application:Landroid/app/Application;

    invoke-static {v1}, Lcom/ca/mdo/DummyAppMode;->init(Landroid/app/Application;)Lcom/ca/mdo/DummyAppMode;

    move-result-object v0

    .line 57
    .local v0, "lifecycleCallbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    invoke-virtual {p0, v0}, Lcom/ca/mdo/DummyAgentImpl;->register(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ca/mdo/DummyAgentImpl;->initialized:Z

    .line 59
    return-void
.end method

.method public isInPrivateZone()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/ca/mdo/DummyAgentImpl;->initialized:Z

    return v0
.end method

.method public isScreenshotPolicyEnabled()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public loadUrlOnWebView(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public loadUrlOnWebView(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p3, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 155
    return-void
.end method

.method public logNetworkEvent(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "responseTime"    # I
    .param p4, "inBytes"    # I
    .param p5, "outBytes"    # I

    .prologue
    .line 402
    return-void
.end method

.method public logNetworkEvent(Ljava/lang/String;IIIILcom/ca/integration/CaMDOCallback;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "responseTime"    # I
    .param p4, "inBytes"    # I
    .param p5, "outBytes"    # I
    .param p6, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 407
    return-void
.end method

.method public logNumericMetric(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p4, "callback"    # Lcom/ca/integration/CaMDOCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ca/integration/CaMDOCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 422
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public logTextMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/ca/integration/CaMDOCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ca/integration/CaMDOCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onConfigurationChangedOfApplication(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 299
    return-void
.end method

.method public onCreateOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    .locals 0
    .param p1, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 208
    return-void
.end method

.method public onCreateOfApplication(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 279
    return-void
.end method

.method public onLoadResourceOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "client"    # Lcom/ca/android/app/CaMDOWebViewClient;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/ca/android/app/CaMDOWebViewClient;->getMdoWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    .line 174
    .local v0, "origionalClient":Landroid/webkit/WebViewClient;
    invoke-virtual {v0, p2, p3}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onLowMemoryOfApplication()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public onPageFinishedOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "client"    # Lcom/ca/android/app/CaMDOWebViewClient;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/ca/android/app/CaMDOWebViewClient;->getMdoWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    .line 180
    .local v0, "origionalClient":Landroid/webkit/WebViewClient;
    invoke-virtual {v0, p2, p3}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public onPageStartedOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "client"    # Lcom/ca/android/app/CaMDOWebViewClient;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/ca/android/app/CaMDOWebViewClient;->getMdoWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    .line 186
    .local v0, "origionalClient":Landroid/webkit/WebViewClient;
    invoke-virtual {v0, p2, p3, p4}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 187
    return-void
.end method

.method public onPauseOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    .locals 0
    .param p1, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 228
    return-void
.end method

.method public onPauseOfFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Fragment;

    .prologue
    .line 258
    return-void
.end method

.method public onPauseOffragment(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 268
    return-void
.end method

.method public onReceivedErrorOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "client"    # Lcom/ca/android/app/CaMDOWebViewClient;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "errorCode"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/ca/android/app/CaMDOWebViewClient;->getMdoWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    .line 192
    .local v0, "origionalClient":Landroid/webkit/WebViewClient;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onRestartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    .locals 0
    .param p1, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 233
    return-void
.end method

.method public onResumeOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    .locals 0
    .param p1, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 213
    return-void
.end method

.method public onResumeOfFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Fragment;

    .prologue
    .line 253
    return-void
.end method

.method public onResumeOffragment(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 263
    return-void
.end method

.method public onStartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V
    .locals 0
    .param p1, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;

    .prologue
    .line 223
    return-void
.end method

.method public onStopOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V
    .locals 0
    .param p1, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;

    .prologue
    .line 218
    return-void
.end method

.method public onTerminateOfApplication()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public onTrimMemoryOfApplication(I)V
    .locals 0
    .param p1, "levels"    # I

    .prologue
    .line 294
    return-void
.end method

.method public onWindowFocusChangedOfActivity(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 238
    return-void
.end method

.method public openConnectionOnURLConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public postUrlOnWebView(Landroid/webkit/WebView;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "postData"    # [B
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 164
    return-void
.end method

.method public registerAppFeedBackOnIntegration(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "messageReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 337
    return-void
.end method

.method public setCustomerFeedbackOnIntegration(Ljava/lang/String;)V
    .locals 0
    .param p1, "feedback"    # Ljava/lang/String;

    .prologue
    .line 341
    return-void
.end method

.method public setCustomerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "customerId"    # Ljava/lang/String;

    .prologue
    .line 432
    return-void
.end method

.method public setCustomerLocationOnIntegration(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 309
    return-void
.end method

.method public setCustomerLocationOnIntegration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "zipcode"    # Ljava/lang/String;
    .param p2, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 304
    return-void
.end method

.method public setSessionAttributeOnIntegration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 314
    return-void
.end method

.method public setVisibilityOnProgressBar(Landroid/widget/ProgressBar;I)V
    .locals 0
    .param p1, "bar"    # Landroid/widget/ProgressBar;
    .param p2, "visibility"    # I

    .prologue
    .line 272
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 274
    return-void
.end method

.method public setWebViewClientOnWebView(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 168
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 169
    return-void
.end method

.method public shouldInterceptRequestOfWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "orgWebviewClient"    # Landroid/webkit/WebViewClient;
    .param p3, "request"    # Landroid/webkit/WebResourceRequest;

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldInterceptRequestOfWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "orgWebviewClient"    # Landroid/webkit/WebViewClient;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public startApplicationTransactionOnIntegration(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 0
    .param p1, "transactionName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 319
    return-void
.end method

.method public startApplicationTransactionOnIntegration(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 0
    .param p1, "transactionName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 324
    return-void
.end method

.method public startNewSession()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public stopApplicationTransactionOnIntegration(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 0
    .param p1, "transactionName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 329
    return-void
.end method

.method public stopApplicationTransactionOnIntegration(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 0
    .param p1, "transactionName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 333
    return-void
.end method

.method public stopCurrentAndStartNewSession()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public stopCurrentSession()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public takeScreenshotOnIntegration(Ljava/lang/String;ILcom/ca/integration/CaMDOCallback;)V
    .locals 0
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 347
    return-void
.end method

.method public uploadEvents()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public uploadEvents(Lcom/ca/integration/CaMDOCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 417
    return-void
.end method

.method public viewLoaded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "screenLoadTime"    # I

    .prologue
    .line 387
    return-void
.end method

.method public viewLoaded(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "screenLoadTime"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 392
    return-void
.end method

.method public viewLoaded(Ljava/lang/String;ILcom/ca/integration/CaMDOCallback;)V
    .locals 0
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "screenLoadTime"    # I
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 397
    return-void
.end method
