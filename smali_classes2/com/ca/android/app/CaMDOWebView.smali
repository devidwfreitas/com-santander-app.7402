.class public Lcom/ca/android/app/CaMDOWebView;
.super Ljava/lang/Object;
.source "CaMDOWebView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/android/app/CaMDOWebView$DataObject;
    }
.end annotation


# static fields
.field private static handler:Landroid/os/Handler;

.field static kNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ca/android/app/CaMDOWebView$DataObject;",
            ">;"
        }
    .end annotation
.end field

.field static kPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static lastXWalkInternalView:Ljava/util/concurrent/atomic/AtomicReference;

.field private static uid:I


# instance fields
.field rxBytesStart:J

.field txBytesStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/ca/android/app/CaMDOWebView;->uid:I

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/ca/android/app/CaMDOWebView;->lastXWalkInternalView:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ca/android/app/CaMDOWebView;->handler:Landroid/os/Handler;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ca/android/app/CaMDOWebView;->kPageMap:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ca/android/app/CaMDOWebView;->kNetworkMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v0, p0, Lcom/ca/android/app/CaMDOWebView;->rxBytesStart:J

    .line 37
    iput-wide v0, p0, Lcom/ca/android/app/CaMDOWebView;->txBytesStart:J

    return-void
.end method

.method public static loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ca/android/app/AnalyticsAgent;->loadUrlOnWebView(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static loadUrl(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "url"    # Ljava/lang/String;
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
    .line 63
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/ca/android/app/AnalyticsAgent;->loadUrlOnWebView(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    return-void
.end method

.method public static onPageLoadStarted(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 4
    .param p0, "xWalkUIClientInternal"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;
    .param p1, "xWalkViewInternal"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageLoadStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 166
    :try_start_0
    sget-object v1, Lcom/ca/android/app/CaMDOWebView;->kPageMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 168
    new-instance v1, Lcom/ca/android/app/JSCaMDOIntegration;

    invoke-direct {v1}, Lcom/ca/android/app/JSCaMDOIntegration;-><init>()V

    const-string v2, "CaMaaAndroidIntegration"

    invoke-virtual {p1, v1, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XXXXXXXX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static onPageLoadStopped(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V
    .locals 7
    .param p0, "xWalkUIClientInternal"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;
    .param p1, "xWalkViewInternal"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "loadStatusInternal"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .prologue
    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPageLoadStopped: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 189
    move-object v1, p2

    .line 191
    .local v1, "rUrl":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 192
    .local v2, "startT":J
    :try_start_0
    sget-object v5, Lcom/ca/android/app/CaMDOWebView;->kPageMap:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 193
    sget-object v5, Lcom/ca/android/app/CaMDOWebView;->kPageMap:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 195
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_1

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 198
    :cond_1
    if-eqz p1, :cond_2

    .line 199
    sget-object v5, Lcom/ca/android/app/CaMDOWebView;->lastXWalkInternalView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 201
    :cond_2
    new-instance v5, Lcom/ca/android/app/JSCaMDOIntegration;

    invoke-direct {v5}, Lcom/ca/android/app/JSCaMDOIntegration;-><init>()V

    const-string v6, "CaMaaAndroidIntegration"

    invoke-virtual {p1, v5, v6}, Lorg/xwalk/core/internal/XWalkViewInternal;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    long-to-int v0, v5

    .line 205
    .local v0, "duration":I
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->isScreenshotPolicyEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    invoke-static {p1, v1, v0}, Lcom/ca/android/app/CaMDOWebView;->registerxWalkBitMapCallback(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;I)V

    .line 213
    .end local v0    # "duration":I
    :goto_0
    return-void

    .line 208
    .restart local v0    # "duration":I
    :cond_3
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v5

    invoke-interface {v5, p2, v0}, Lcom/ca/android/app/AnalyticsAgent;->viewLoaded(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v0    # "duration":I
    :catch_0
    move-exception v4

    .line 211
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in onPageLoadStopped: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkResourceClientInternal;Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V
    .locals 21
    .param p0, "xWalkResourceClientInternal"    # Lorg/xwalk/core/internal/XWalkResourceClientInternal;
    .param p1, "xWalkViewInternal"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "xWalkWebResourceRequestInternal"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    .param p3, "xWalkWebResourceResponseInternal"    # Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    .prologue
    .line 124
    const-string v2, "In CrossWalk onReceivedResponseHeaders"

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 125
    const/16 v20, 0x0

    .line 127
    .local v20, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;->getUrl()Landroid/net/Uri;

    move-result-object v20

    .line 128
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "url":Ljava/lang/String;
    sget-object v2, Lcom/ca/android/app/CaMDOWebView;->kNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ca/android/app/CaMDOWebView$DataObject;

    .line 130
    .local v10, "obj":Lcom/ca/android/app/CaMDOWebView$DataObject;
    sget v2, Lcom/ca/android/app/CaMDOWebView;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v13

    .line 131
    .local v13, "rxBytesStart":J
    sget v2, Lcom/ca/android/app/CaMDOWebView;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v18

    .line 132
    .local v18, "txBytesStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 133
    .local v15, "startT":J
    if-eqz v10, :cond_0

    .line 134
    iget-wide v13, v10, Lcom/ca/android/app/CaMDOWebView$DataObject;->rxBytes:J

    .line 135
    iget-wide v0, v10, Lcom/ca/android/app/CaMDOWebView$DataObject;->txBytes:J

    move-wide/from16 v18, v0

    .line 136
    iget-wide v15, v10, Lcom/ca/android/app/CaMDOWebView$DataObject;->startTime:J

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " In CrossWalk Data Object for network Urls : Object is present : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 140
    :cond_0
    sget-object v2, Lcom/ca/android/app/CaMDOWebView;->kNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual/range {p3 .. p3}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getStatusCode()I

    move-result v4

    .line 142
    .local v4, "statusCode":I
    invoke-virtual/range {p0 .. p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    .line 144
    sget v2, Lcom/ca/android/app/CaMDOWebView;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v5

    sub-long v8, v5, v13

    .line 145
    .local v8, "inBytes":J
    sget v2, Lcom/ca/android/app/CaMDOWebView;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    sub-long v11, v5, v18

    .line 146
    .local v11, "outBytes":J
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v15

    long-to-int v5, v5

    long-to-int v6, v8

    long-to-int v7, v11

    invoke-interface/range {v2 .. v7}, Lcom/ca/android/app/AnalyticsAgent;->logNetworkEvent(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v8    # "inBytes":J
    .end local v10    # "obj":Lcom/ca/android/app/CaMDOWebView$DataObject;
    .end local v11    # "outBytes":J
    .end local v13    # "rxBytesStart":J
    .end local v15    # "startT":J
    .end local v18    # "txBytesStart":J
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v17

    .line 148
    .local v17, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in onReceivedResponseHeaders: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static postUrl(Landroid/webkit/WebView;Ljava/lang/String;[B)V
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 71
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/ca/android/app/AnalyticsAgent;->postUrlOnWebView(Landroid/webkit/WebView;Ljava/lang/String;[B)V

    .line 72
    return-void
.end method

.method public static registerxWalkBitMapCallback(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;I)V
    .locals 4
    .param p0, "fxWalkViewInternalArg"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p1, "rUrl"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 226
    sget-object v0, Lcom/ca/android/app/CaMDOWebView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ca/android/app/CaMDOWebView$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ca/android/app/CaMDOWebView$1;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    return-void
.end method

.method public static setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 76
    new-instance v0, Lcom/ca/android/app/JSCaMDOIntegration;

    invoke-direct {v0, p0}, Lcom/ca/android/app/JSCaMDOIntegration;-><init>(Landroid/webkit/WebView;)V

    const-string v1, "CaMaaAndroidIntegration"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ca/android/app/AnalyticsAgent;->setWebViewClientOnWebView(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    .line 78
    return-void
.end method

.method public static shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkResourceClientInternal;Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .param p0, "xWalkResourceClientInternal"    # Lorg/xwalk/core/internal/XWalkResourceClientInternal;
    .param p1, "xWalkViewInternal"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In CrossWalk shouldInterceptLoadRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, "resp":Landroid/webkit/WebResourceResponse;
    :try_start_0
    new-instance v0, Lcom/ca/android/app/CaMDOWebView$DataObject;

    invoke-direct {v0}, Lcom/ca/android/app/CaMDOWebView$DataObject;-><init>()V

    .line 97
    .local v0, "dObj":Lcom/ca/android/app/CaMDOWebView$DataObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/ca/android/app/CaMDOWebView$DataObject;->startTime:J

    .line 98
    sget v3, Lcom/ca/android/app/CaMDOWebView;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/ca/android/app/CaMDOWebView$DataObject;->rxBytes:J

    .line 99
    sget v3, Lcom/ca/android/app/CaMDOWebView;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/ca/android/app/CaMDOWebView$DataObject;->txBytes:J

    .line 100
    sget-object v3, Lcom/ca/android/app/CaMDOWebView;->kNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    .end local v0    # "dObj":Lcom/ca/android/app/CaMDOWebView$DataObject;
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in shouldInterceptLoadRequest of CrossWalk View Internal : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
