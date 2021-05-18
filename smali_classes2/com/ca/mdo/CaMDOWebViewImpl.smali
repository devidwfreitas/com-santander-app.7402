.class Lcom/ca/mdo/CaMDOWebViewImpl;
.super Ljava/lang/Object;
.source "CaMDOWebViewImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static uid:I

.field private static webViewClients_:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/webkit/WebView;",
            "Lcom/ca/android/app/CaMDOWebViewClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/ca/mdo/CaMDOWebViewImpl;->uid:I

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/ca/mdo/CaMDOWebViewImpl;->webViewClients_:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAndSetCaMDOWebViewClient(Landroid/webkit/WebView;)V
    .locals 3
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 63
    :try_start_0
    sget-object v2, Lcom/ca/mdo/CaMDOWebViewImpl;->webViewClients_:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/android/app/CaMDOWebViewClient;

    .line 64
    .local v0, "lClient":Lcom/ca/android/app/CaMDOWebViewClient;
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/ca/android/app/CaMDOWebViewClient;

    .end local v0    # "lClient":Lcom/ca/android/app/CaMDOWebViewClient;
    invoke-direct {v0}, Lcom/ca/android/app/CaMDOWebViewClient;-><init>()V

    .line 66
    .restart local v0    # "lClient":Lcom/ca/android/app/CaMDOWebViewClient;
    invoke-static {p0, v0}, Lcom/ca/mdo/CaMDOWebViewImpl;->setCaMDOWebViewClient(Landroid/webkit/WebView;Lcom/ca/android/app/CaMDOWebViewClient;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "lClient":Lcom/ca/android/app/CaMDOWebViewClient;
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "checkAndSetCaMDOWebViewClient: failed"

    invoke-static {v2, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/ca/mdo/CaMDOWebViewImpl;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    return-void
.end method

.method public static loadUrl(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    .line 37
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/ca/mdo/CaMDOWebViewImpl;->checkAndSetCaMDOWebViewClient(Landroid/webkit/WebView;)V

    .line 38
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 42
    return-void
.end method

.method public static postUrl(Landroid/webkit/WebView;Ljava/lang/String;[B)V
    .locals 0
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 50
    invoke-static {p0}, Lcom/ca/mdo/CaMDOWebViewImpl;->checkAndSetCaMDOWebViewClient(Landroid/webkit/WebView;)V

    .line 51
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 53
    return-void
.end method

.method private static setCaMDOWebViewClient(Landroid/webkit/WebView;Lcom/ca/android/app/CaMDOWebViewClient;)V
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "webViewClient"    # Lcom/ca/android/app/CaMDOWebViewClient;

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 79
    sget-object v1, Lcom/ca/mdo/CaMDOWebViewImpl;->webViewClients_:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "setCaMDOWebViewClient: failed"

    invoke-static {v1, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 57
    new-instance v0, Lcom/ca/android/app/CaMDOWebViewClient;

    invoke-direct {v0, p1}, Lcom/ca/android/app/CaMDOWebViewClient;-><init>(Landroid/webkit/WebViewClient;)V

    invoke-static {p0, v0}, Lcom/ca/mdo/CaMDOWebViewImpl;->setCaMDOWebViewClient(Landroid/webkit/WebView;Lcom/ca/android/app/CaMDOWebViewClient;)V

    .line 58
    return-void
.end method
