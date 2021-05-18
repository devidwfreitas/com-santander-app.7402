.class public interface abstract Lcom/ca/android/app/AnalyticsAgent;
.super Ljava/lang/Object;
.source "AnalyticsAgent.java"


# virtual methods
.method public abstract addToApmHeader(Ljava/lang/String;)V
.end method

.method public abstract connectOnHttpURLConnection(Ljava/net/HttpURLConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract dispatchTouchEventOfActivity(Landroid/view/MotionEvent;)V
.end method

.method public abstract enterPrivateZone()V
.end method

.method public abstract executeOnHttpClient(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract executeOnHttpClient(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract executeOnHttpClient(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract executeOnHttpClient(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract executeOnHttpClient(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract executeOnHttpClient(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract executeOnHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract executeOnHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract executeOnHttpClientWithHandler(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract executeOnHttpClientWithHandler(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract executeOnHttpClientWithHandler(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract executeOnHttpClientWithHandler(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract exitPrivateZone()V
.end method

.method public abstract getAPMHeaders()Ljava/util/Map;
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
.end method

.method public abstract getCustomerId()Ljava/lang/String;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getIntervalOnActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)J
.end method

.method public abstract getResponseCodeOnHttpURLConnection(Ljava/net/HttpURLConnection;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ignoreView(Ljava/lang/String;)V
.end method

.method public abstract ignoreViews(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract isInPrivateZone()Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract isScreenshotPolicyEnabled()Z
.end method

.method public abstract loadUrlOnWebView(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract loadUrlOnWebView(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method public abstract logNetworkEvent(Ljava/lang/String;IIII)V
.end method

.method public abstract logNetworkEvent(Ljava/lang/String;IIIILcom/ca/integration/CaMDOCallback;)V
.end method

.method public abstract logNumericMetric(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V
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
.end method

.method public abstract logTextMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V
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
.end method

.method public abstract onConfigurationChangedOfApplication(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreateOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
.end method

.method public abstract onCreateOfApplication(Landroid/app/Application;)V
.end method

.method public abstract onLoadResourceOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onLowMemoryOfApplication()V
.end method

.method public abstract onPageFinishedOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onPageStartedOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onPauseOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
.end method

.method public abstract onPauseOfFragment(Landroid/app/Fragment;)V
.end method

.method public abstract onPauseOffragment(Ljava/lang/String;Landroid/app/Activity;)V
.end method

.method public abstract onReceivedErrorOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRestartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
.end method

.method public abstract onResumeOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
.end method

.method public abstract onResumeOfFragment(Landroid/app/Fragment;)V
.end method

.method public abstract onResumeOffragment(Ljava/lang/String;Landroid/app/Activity;)V
.end method

.method public abstract onStartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V
.end method

.method public abstract onStopOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V
.end method

.method public abstract onTerminateOfApplication()V
.end method

.method public abstract onTrimMemoryOfApplication(I)V
.end method

.method public abstract onWindowFocusChangedOfActivity(Landroid/app/Activity;Z)V
.end method

.method public abstract openConnectionOnURLConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract pause()V
.end method

.method public abstract postUrlOnWebView(Landroid/webkit/WebView;Ljava/lang/String;[B)V
.end method

.method public abstract registerAppFeedBackOnIntegration(Landroid/content/BroadcastReceiver;)V
.end method

.method public abstract resume()V
.end method

.method public abstract setCustomerFeedbackOnIntegration(Ljava/lang/String;)V
.end method

.method public abstract setCustomerId(Ljava/lang/String;)V
.end method

.method public abstract setCustomerLocationOnIntegration(Landroid/location/Location;)V
.end method

.method public abstract setCustomerLocationOnIntegration(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSessionAttributeOnIntegration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setVisibilityOnProgressBar(Landroid/widget/ProgressBar;I)V
.end method

.method public abstract setWebViewClientOnWebView(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
.end method

.method public abstract shouldInterceptRequestOfWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract shouldInterceptRequestOfWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract startApplicationTransactionOnIntegration(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
.end method

.method public abstract startApplicationTransactionOnIntegration(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
.end method

.method public abstract startNewSession()V
.end method

.method public abstract stopApplicationTransactionOnIntegration(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
.end method

.method public abstract stopApplicationTransactionOnIntegration(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
.end method

.method public abstract stopCurrentAndStartNewSession()V
.end method

.method public abstract stopCurrentSession()V
.end method

.method public abstract takeScreenshotOnIntegration(Ljava/lang/String;ILcom/ca/integration/CaMDOCallback;)V
.end method

.method public abstract uploadEvents()V
.end method

.method public abstract uploadEvents(Lcom/ca/integration/CaMDOCallback;)V
.end method

.method public abstract viewLoaded(Ljava/lang/String;I)V
.end method

.method public abstract viewLoaded(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
.end method

.method public abstract viewLoaded(Ljava/lang/String;ILcom/ca/integration/CaMDOCallback;)V
.end method
