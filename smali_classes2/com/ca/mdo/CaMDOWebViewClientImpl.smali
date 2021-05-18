.class Lcom/ca/mdo/CaMDOWebViewClientImpl;
.super Ljava/lang/Object;
.source "CaMDOWebViewClientImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static INTERCEPTER_SCRIPT:Ljava/lang/String;

.field private static interceptedUrls:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isJSInterceptionDisabled:Z

.field private static knownResourceExtensions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/ca/mdo/CaMDOWebViewClientImpl;->uid:I

    .line 41
    sput-boolean v3, Lcom/ca/mdo/CaMDOWebViewClientImpl;->isJSInterceptionDisabled:Z

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ca/mdo/CaMDOWebViewClientImpl;->interceptedUrls:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "jpg"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "jpeg"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "png"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "svg"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "css"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "js"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "gif"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ico"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "tif"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "tiff"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "bmp"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "bmpf"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "cur"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "xbm"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "svg"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "img"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "css"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "woff"

    aput-object v3, v1, v2

    .line 47
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/ca/mdo/CaMDOWebViewClientImpl;->knownResourceExtensions:Ljava/util/HashSet;

    .line 45
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static injectScriptFile(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "scriptFile"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v2, 0x0

    .line 53
    .local v2, "input":Ljava/io/InputStream;
    :try_start_0
    sget-boolean v3, Lcom/ca/mdo/CaMDOWebViewClientImpl;->isJSInterceptionDisabled:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/ca/mdo/CaMDOWebViewClientImpl;->INTERCEPTER_SCRIPT:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 55
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 57
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 58
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 60
    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ca/mdo/CaMDOWebViewClientImpl;->INTERCEPTER_SCRIPT:Ljava/lang/String;

    .line 63
    .end local v0    # "buffer":[B
    :cond_0
    sget-boolean v3, Lcom/ca/mdo/CaMDOWebViewClientImpl;->isJSInterceptionDisabled:Z

    if-nez v3, :cond_1

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:(function() {var parent = document.getElementsByTagName(\'head\').item(0);var script = document.createElement(\'script\');script.type = \'text/javascript\';script.innerHTML = window.atob(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/ca/mdo/CaMDOWebViewClientImpl;->INTERCEPTER_SCRIPT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');parent.appendChild(script)})()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_1
    if-eqz v2, :cond_2

    .line 81
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 86
    :cond_2
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_2
    sput-boolean v3, Lcom/ca/mdo/CaMDOWebViewClientImpl;->isJSInterceptionDisabled:Z

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while injecting script"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    if-eqz v2, :cond_2

    .line 81
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 82
    :catch_1
    move-exception v3

    goto :goto_0

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 81
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 83
    :cond_3
    :goto_1
    throw v3

    .line 82
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method private static isResource(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, "isResource":Z
    const/4 v0, 0x0

    .line 423
    .local v0, "extension":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 424
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "resourceName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 426
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 427
    .local v2, "lastIndexOfdot":I
    if-lez v2, :cond_0

    .line 428
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    const-string v4, "/?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v0, v4, v5

    .line 434
    .end local v2    # "lastIndexOfdot":I
    :cond_0
    if-eqz v0, :cond_1

    .line 435
    sget-object v4, Lcom/ca/mdo/CaMDOWebViewClientImpl;->knownResourceExtensions:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 438
    .end local v3    # "resourceName":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private static isSupportedUrl(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, "supported":Z
    if-eqz p0, :cond_1

    .line 237
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 238
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 240
    const-string v3, "http"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "file"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 243
    .end local v0    # "scheme":Ljava/lang/String;
    .end local v2    # "uri":Ljava/net/URI;
    :cond_1
    :goto_0
    return v1

    .line 240
    .restart local v0    # "scheme":Ljava/lang/String;
    .restart local v2    # "uri":Ljava/net/URI;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static onLoadResource(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 22
    .param p0, "caMDOWebViewClient"    # Lcom/ca/android/app/CaMDOWebViewClient;
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    const-wide/16 v18, 0x0

    .line 90
    .local v18, "start":J
    const-wide/16 v16, 0x0

    .line 91
    .local v16, "rxBytesStart":J
    const-wide/16 v20, 0x0

    .line 93
    .local v20, "txBytesStart":J
    invoke-virtual/range {p0 .. p0}, Lcom/ca/android/app/CaMDOWebViewClient;->getMdoWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v15

    .line 99
    .local v15, "orgWebViewClient":Landroid/webkit/WebViewClient;
    if-eqz v15, :cond_0

    .line 100
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 106
    sget v2, Lcom/ca/mdo/CaMDOWebViewClientImpl;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v16

    .line 107
    sget v2, Lcom/ca/mdo/CaMDOWebViewClientImpl;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v20

    .line 111
    invoke-virtual/range {p0 .. p2}, Lcom/ca/android/app/CaMDOWebViewClient;->onLoadResourceDefaultImpl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 115
    :goto_1
    :try_start_1
    sget v2, Lcom/ca/mdo/CaMDOWebViewClientImpl;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v10

    sub-long v6, v10, v16

    .line 116
    .local v6, "inBytes":J
    sget v2, Lcom/ca/mdo/CaMDOWebViewClientImpl;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    sub-long v8, v10, v20

    .line 117
    .local v8, "outBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v18

    .line 118
    .local v4, "responseTime":J
    const/16 v3, 0x309

    .line 119
    .local v3, "httpStatus":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v13}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v14

    .line 120
    .local v14, "network":Lcom/ca/mdo/Network;
    invoke-static {v14}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URL: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " responseTime: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 122
    .end local v3    # "httpStatus":I
    .end local v4    # "responseTime":J
    .end local v6    # "inBytes":J
    .end local v8    # "outBytes":J
    .end local v14    # "network":Lcom/ca/mdo/Network;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 108
    :catch_1
    move-exception v2

    .line 111
    invoke-virtual/range {p0 .. p2}, Lcom/ca/android/app/CaMDOWebViewClient;->onLoadResourceDefaultImpl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p2}, Lcom/ca/android/app/CaMDOWebViewClient;->onLoadResourceDefaultImpl(Landroid/webkit/WebView;Ljava/lang/String;)V

    throw v2

    .line 125
    :catchall_1
    move-exception v2

    goto :goto_0
.end method

.method static onPageFinished(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p0, "caMDOWebViewClient"    # Lcom/ca/android/app/CaMDOWebViewClient;
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/ca/android/app/CaMDOWebViewClient;->getMdoWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    .line 133
    .local v1, "webViewClient_":Landroid/webkit/WebViewClient;
    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 137
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageFinished("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 138
    const-string v2, "page_end"

    invoke-static {p2, v2}, Lcom/ca/mdo/CAMobileDevOps;->webViewOnPageEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "onPageFinished: failed"

    invoke-static {v2, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static onPageStarted(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p0, "caMDOWebViewClient"    # Lcom/ca/android/app/CaMDOWebViewClient;
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 146
    const-string v2, "CaMDOInterceptor.js"

    invoke-static {p1, v2}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->injectScriptFile(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/ca/android/app/CaMDOWebViewClient;->getMdoWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    .line 148
    .local v1, "webViewClient_":Landroid/webkit/WebViewClient;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 152
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageStarted("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 153
    const-string v2, "page_start"

    invoke-static {p2, v2}, Lcom/ca/mdo/CAMobileDevOps;->webViewOnPageEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "onPageStarted: failed"

    invoke-static {v2, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static onReceivedError(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "caMDOWebViewClient"    # Lcom/ca/android/app/CaMDOWebViewClient;
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/ca/android/app/CaMDOWebViewClient;->getMdoWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    .line 162
    .local v0, "webViewClient_":Landroid/webkit/WebViewClient;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError: Error code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " URL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method private static shoudlInterceptByOrgWebviewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 24
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "client"    # Landroid/webkit/WebViewClient;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 202
    const/16 v16, 0x0

    .line 204
    .local v16, "response":Landroid/webkit/WebResourceResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 205
    .local v19, "start":J
    const-wide/16 v17, 0x0

    .line 206
    .local v17, "rxBytesStart":J
    const-wide/16 v22, 0x0

    .line 209
    .local v22, "txBytesStart":J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 210
    sget v11, Lcom/ca/mdo/CaMDOWebViewClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v17

    .line 211
    sget v11, Lcom/ca/mdo/CaMDOWebViewClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidTxBytes(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v22

    .line 216
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v16

    .line 219
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v5, v11, v19

    .line 220
    .local v5, "responseTime":J
    sget v11, Lcom/ca/mdo/CaMDOWebViewClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v11

    sub-long v7, v11, v17

    .line 221
    .local v7, "inBytes":J
    sget v11, Lcom/ca/mdo/CaMDOWebViewClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v11

    sub-long v9, v11, v22

    .line 222
    .local v9, "outBytes":J
    const/16 v4, 0x309

    .line 223
    .local v4, "httpStatus":I
    invoke-interface/range {p2 .. p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/ca/mdo/Util;->truncateNonHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "url":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v3 .. v14}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v15

    .line 225
    .local v15, "network":Lcom/ca/mdo/Network;
    invoke-static {v15}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 226
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Org WebviewClient shouldIntercept URL: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " responseTime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "httpStatus":I
    .end local v5    # "responseTime":J
    .end local v7    # "inBytes":J
    .end local v9    # "outBytes":J
    .end local v15    # "network":Lcom/ca/mdo/Network;
    :goto_1
    return-object v16

    .line 212
    :catch_0
    move-exception v21

    .line 213
    .local v21, "t":Ljava/lang/Throwable;
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v16

    .line 217
    goto :goto_0

    .line 216
    .end local v21    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v16

    throw v11

    .line 230
    :catchall_1
    move-exception v11

    goto :goto_1

    .line 227
    :catch_1
    move-exception v11

    goto :goto_1
.end method

.method private static shoudlInterceptByOrgWebviewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 24
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "client"    # Landroid/webkit/WebViewClient;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 168
    const/16 v16, 0x0

    .line 170
    .local v16, "response":Landroid/webkit/WebResourceResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 171
    .local v19, "start":J
    const-wide/16 v17, 0x0

    .line 172
    .local v17, "rxBytesStart":J
    const-wide/16 v22, 0x0

    .line 175
    .local v22, "txBytesStart":J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 176
    sget v3, Lcom/ca/mdo/CaMDOWebViewClientImpl;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v17

    .line 177
    sget v3, Lcom/ca/mdo/CaMDOWebViewClientImpl;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v22

    .line 181
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v16

    .line 185
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v5, v11, v19

    .line 186
    .local v5, "responseTime":J
    sget v3, Lcom/ca/mdo/CaMDOWebViewClientImpl;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v11

    sub-long v7, v11, v17

    .line 187
    .local v7, "inBytes":J
    sget v3, Lcom/ca/mdo/CaMDOWebViewClientImpl;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v11

    sub-long v9, v11, v22

    .line 188
    .local v9, "outBytes":J
    const/16 v4, 0x309

    .line 189
    .local v4, "httpStatus":I
    invoke-static/range {p2 .. p2}, Lcom/ca/mdo/Util;->truncateNonHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 190
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v14}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v15

    .line 191
    .local v15, "network":Lcom/ca/mdo/Network;
    invoke-static {v15}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Org WebviewClient shouldIntercept URL: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " responseTime: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    .end local v4    # "httpStatus":I
    .end local v5    # "responseTime":J
    .end local v7    # "inBytes":J
    .end local v9    # "outBytes":J
    .end local v15    # "network":Lcom/ca/mdo/Network;
    :goto_1
    return-object v16

    .line 178
    :catch_0
    move-exception v21

    .line 179
    .local v21, "t":Ljava/lang/Throwable;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception :"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v16

    .line 182
    goto :goto_0

    .line 181
    .end local v21    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v16

    throw v3

    .line 196
    :catchall_1
    move-exception v3

    goto :goto_1

    .line 193
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method static shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 12
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "orgWebviewClient"    # Landroid/webkit/WebViewClient;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 365
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "url":Ljava/lang/String;
    sget-boolean v8, Lcom/ca/mdo/CaMDOWebViewClientImpl;->isJSInterceptionDisabled:Z

    if-eqz v8, :cond_1

    .line 367
    invoke-static {p0, p1, p2}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->shouldInterceptRequestWhenJSIntegrationDisabled(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v7

    .line 415
    :cond_0
    :goto_0
    return-object v7

    .line 373
    :cond_1
    if-eqz p1, :cond_2

    .line 374
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->shoudlInterceptByOrgWebviewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v7

    goto :goto_0

    .line 375
    :cond_2
    invoke-static {v6}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->isSupportedUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 377
    if-eqz v6, :cond_3

    sget-object v8, Lcom/ca/android/app/JSCaMDOIntegration;->formRequests:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 379
    sget-object v8, Lcom/ca/android/app/JSCaMDOIntegration;->formRequests:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 380
    .local v2, "formRequest":Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;
    const/4 v3, 0x0

    .line 382
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Lcom/ca/mdo/Util;->executeFormRequest(Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 387
    :try_start_2
    sget-object v8, Lcom/ca/android/app/JSCaMDOIntegration;->formRequests:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :goto_1
    if-eqz v3, :cond_0

    .line 391
    move-object v0, v3

    check-cast v0, Lcom/ca/mdo/SDKInputStream;

    move-object v4, v0

    .line 392
    .local v4, "sdkInputStream":Lcom/ca/mdo/SDKInputStream;
    new-instance v8, Landroid/webkit/WebResourceResponse;

    iget-object v9, v4, Lcom/ca/mdo/SDKInputStream;->mimeType:Ljava/lang/String;

    iget-object v10, v4, Lcom/ca/mdo/SDKInputStream;->encoding:Ljava/lang/String;

    iget-object v11, v4, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-direct {v8, v9, v10, v11}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v7, v8

    goto :goto_0

    .line 383
    .end local v4    # "sdkInputStream":Lcom/ca/mdo/SDKInputStream;
    :catch_0
    move-exception v1

    .line 384
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while executing form post"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    :try_start_4
    sget-object v8, Lcom/ca/android/app/JSCaMDOIntegration;->formRequests:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 412
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "formRequest":Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 413
    .local v5, "t":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shouldInterceptRequest:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 387
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v2    # "formRequest":Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v8

    :try_start_5
    sget-object v9, Lcom/ca/android/app/JSCaMDOIntegration;->formRequests:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v8

    .line 397
    .end local v2    # "formRequest":Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_3
    invoke-static {v6}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->isResource(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result v8

    if-eqz v8, :cond_0

    .line 399
    const/4 v3, 0x0

    .line 401
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :try_start_6
    invoke-static {v6}, Lcom/ca/mdo/Util;->executeHttpGetRequest(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v3

    .line 405
    :goto_2
    if-eqz v3, :cond_0

    .line 406
    :try_start_7
    move-object v0, v3

    check-cast v0, Lcom/ca/mdo/SDKInputStream;

    move-object v4, v0

    .line 407
    .restart local v4    # "sdkInputStream":Lcom/ca/mdo/SDKInputStream;
    new-instance v8, Landroid/webkit/WebResourceResponse;

    iget-object v9, v4, Lcom/ca/mdo/SDKInputStream;->mimeType:Ljava/lang/String;

    iget-object v10, v4, Lcom/ca/mdo/SDKInputStream;->encoding:Ljava/lang/String;

    iget-object v11, v4, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-direct {v8, v9, v10, v11}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v7, v8

    goto/16 :goto_0

    .line 402
    .end local v4    # "sdkInputStream":Lcom/ca/mdo/SDKInputStream;
    :catch_2
    move-exception v1

    .line 403
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while executing Resource URL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2
.end method

.method static shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 11
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "orgWebviewClient"    # Landroid/webkit/WebViewClient;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 276
    sget-boolean v7, Lcom/ca/mdo/CaMDOWebViewClientImpl;->isJSInterceptionDisabled:Z

    if-eqz v7, :cond_1

    .line 277
    invoke-static {p0, p1, p2}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->shouldInterceptRequestWhenJSIntegrationDisabled(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v6

    .line 325
    :cond_0
    :goto_0
    return-object v6

    .line 283
    :cond_1
    if-eqz p1, :cond_2

    .line 284
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->shoudlInterceptByOrgWebviewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v6

    goto :goto_0

    .line 285
    :cond_2
    invoke-static {p2}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->isSupportedUrl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 287
    if-eqz p2, :cond_3

    sget-object v7, Lcom/ca/android/app/JSCaMDOIntegration;->formRequests:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 289
    sget-object v7, Lcom/ca/android/app/JSCaMDOIntegration;->formRequests:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    .local v2, "formRequest":Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;
    const/4 v3, 0x0

    .line 292
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Lcom/ca/mdo/Util;->executeFormRequest(Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 297
    :try_start_2
    sget-object v7, Lcom/ca/android/app/JSCaMDOIntegration;->formRequests:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :goto_1
    if-eqz v3, :cond_0

    .line 301
    move-object v0, v3

    check-cast v0, Lcom/ca/mdo/SDKInputStream;

    move-object v4, v0

    .line 302
    .local v4, "sdkInputStream":Lcom/ca/mdo/SDKInputStream;
    new-instance v7, Landroid/webkit/WebResourceResponse;

    iget-object v8, v4, Lcom/ca/mdo/SDKInputStream;->mimeType:Ljava/lang/String;

    iget-object v9, v4, Lcom/ca/mdo/SDKInputStream;->encoding:Ljava/lang/String;

    iget-object v10, v4, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-direct {v7, v8, v9, v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v7

    goto :goto_0

    .line 293
    .end local v4    # "sdkInputStream":Lcom/ca/mdo/SDKInputStream;
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while executing form post"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    :try_start_4
    sget-object v7, Lcom/ca/android/app/JSCaMDOIntegration;->formRequests:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 322
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "formRequest":Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 323
    .local v5, "t":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shouldInterceptRequest:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 297
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v2    # "formRequest":Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    :try_start_5
    sget-object v8, Lcom/ca/android/app/JSCaMDOIntegration;->formRequests:Ljava/util/Map;

    invoke-interface {v8, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v7

    .line 307
    .end local v2    # "formRequest":Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_3
    invoke-static {p2}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->isResource(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result v7

    if-eqz v7, :cond_0

    .line 309
    const/4 v3, 0x0

    .line 311
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :try_start_6
    invoke-static {p2}, Lcom/ca/mdo/Util;->executeHttpGetRequest(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v3

    .line 315
    :goto_2
    if-eqz v3, :cond_0

    .line 316
    :try_start_7
    move-object v0, v3

    check-cast v0, Lcom/ca/mdo/SDKInputStream;

    move-object v4, v0

    .line 317
    .restart local v4    # "sdkInputStream":Lcom/ca/mdo/SDKInputStream;
    new-instance v7, Landroid/webkit/WebResourceResponse;

    iget-object v8, v4, Lcom/ca/mdo/SDKInputStream;->mimeType:Ljava/lang/String;

    iget-object v9, v4, Lcom/ca/mdo/SDKInputStream;->encoding:Ljava/lang/String;

    iget-object v10, v4, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-direct {v7, v8, v9, v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v6, v7

    goto/16 :goto_0

    .line 312
    .end local v4    # "sdkInputStream":Lcom/ca/mdo/SDKInputStream;
    :catch_2
    move-exception v1

    .line 313
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while executing Resource URL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2
.end method

.method static shouldInterceptRequest2(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 11
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 444
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    .line 445
    .local v5, "uri":Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "scheme":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->isSupportedUrl(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 465
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v5    # "uri":Ljava/net/URI;
    :goto_0
    return-object v8

    .line 450
    .restart local v3    # "scheme":Ljava/lang/String;
    .restart local v5    # "uri":Ljava/net/URI;
    :cond_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 451
    .local v6, "url2":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 453
    .local v7, "urlConnection":Ljava/net/HttpURLConnection;
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 454
    const-string v9, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_1
    const/4 v0, 0x0

    .line 458
    .local v0, "encoding":Ljava/lang/String;
    const/4 v2, 0x0

    .line 460
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 461
    .local v1, "is":Ljava/io/InputStream;
    new-instance v9, Landroid/webkit/WebResourceResponse;

    invoke-direct {v9, v2, v0, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v9

    goto :goto_0

    .line 462
    .end local v0    # "encoding":Ljava/lang/String;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v5    # "uri":Ljava/net/URI;
    .end local v6    # "url2":Ljava/net/URL;
    .end local v7    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v4

    .line 463
    .local v4, "t":Ljava/lang/Throwable;
    const-string v9, "shouldInterceptRequest: failed"

    invoke-static {v9, v4}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static shouldInterceptRequestWhenJSIntegrationDisabled(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 11
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "orgWebviewClient"    # Landroid/webkit/WebViewClient;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 330
    const/4 v2, 0x0

    .line 331
    .local v2, "response":Landroid/webkit/WebResourceResponse;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_1

    .line 332
    :cond_0
    const-string v7, "shouldInterceptRequest: null request"

    invoke-static {v7}, Lcom/ca/mdo/CALog;->w(Ljava/lang/String;)I

    move-object v3, v2

    .line 359
    :goto_0
    return-object v3

    .line 335
    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, "url":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 339
    :try_start_0
    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 341
    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .local v3, "response":Landroid/webkit/WebResourceResponse;
    :goto_1
    :try_start_1
    invoke-static {v6}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->isSupportedUrl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v2, v3

    .line 342
    .end local v3    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v2    # "response":Landroid/webkit/WebResourceResponse;
    goto :goto_0

    .line 345
    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v3    # "response":Landroid/webkit/WebResourceResponse;
    :cond_2
    if-nez v3, :cond_4

    .line 346
    invoke-static {v6}, Lcom/ca/mdo/Util;->executeHttpGetRequest(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 347
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_3

    .line 348
    move-object v0, v1

    check-cast v0, Lcom/ca/mdo/SDKInputStream;

    move-object v4, v0

    .line 349
    .local v4, "sdkInputStream":Lcom/ca/mdo/SDKInputStream;
    new-instance v2, Landroid/webkit/WebResourceResponse;

    iget-object v7, v4, Lcom/ca/mdo/SDKInputStream;->mimeType:Ljava/lang/String;

    iget-object v8, v4, Lcom/ca/mdo/SDKInputStream;->encoding:Ljava/lang/String;

    iget-object v9, v4, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-direct {v2, v7, v8, v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "response":Landroid/webkit/WebResourceResponse;
    .end local v4    # "sdkInputStream":Lcom/ca/mdo/SDKInputStream;
    .restart local v2    # "response":Landroid/webkit/WebResourceResponse;
    :goto_2
    move-object v3, v2

    .line 359
    goto :goto_0

    .line 351
    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "response":Landroid/webkit/WebResourceResponse;
    :cond_3
    const/4 v2, 0x0

    move-object v10, v3

    .end local v3    # "response":Landroid/webkit/WebResourceResponse;
    .local v10, "response":Landroid/webkit/WebResourceResponse;
    move-object v3, v2

    move-object v2, v10

    .end local v10    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v2    # "response":Landroid/webkit/WebResourceResponse;
    goto :goto_0

    .line 356
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 357
    .local v5, "t":Ljava/lang/Throwable;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shouldInterceptRequest:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 356
    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v3    # "response":Landroid/webkit/WebResourceResponse;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v2    # "response":Landroid/webkit/WebResourceResponse;
    goto :goto_3

    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v3    # "response":Landroid/webkit/WebResourceResponse;
    :cond_4
    move-object v2, v3

    .end local v3    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v2    # "response":Landroid/webkit/WebResourceResponse;
    goto :goto_2

    :cond_5
    move-object v3, v2

    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v3    # "response":Landroid/webkit/WebResourceResponse;
    goto :goto_1
.end method

.method static shouldInterceptRequestWhenJSIntegrationDisabled(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "orgWebviewClient"    # Landroid/webkit/WebViewClient;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v2, 0x0

    .line 250
    .local v2, "response":Landroid/webkit/WebResourceResponse;
    if-eqz p1, :cond_3

    .line 251
    :try_start_0
    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 253
    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .local v3, "response":Landroid/webkit/WebResourceResponse;
    :goto_0
    :try_start_1
    invoke-static {p2}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->isSupportedUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v2, v3

    .line 271
    .end local v3    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v2    # "response":Landroid/webkit/WebResourceResponse;
    :goto_1
    return-object v3

    .line 257
    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v3    # "response":Landroid/webkit/WebResourceResponse;
    :cond_0
    if-nez v3, :cond_2

    .line 258
    invoke-static {p2}, Lcom/ca/mdo/Util;->executeHttpGetRequest(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 259
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 260
    move-object v0, v1

    check-cast v0, Lcom/ca/mdo/SDKInputStream;

    move-object v4, v0

    .line 261
    .local v4, "sdkInputStream":Lcom/ca/mdo/SDKInputStream;
    new-instance v2, Landroid/webkit/WebResourceResponse;

    iget-object v6, v4, Lcom/ca/mdo/SDKInputStream;->mimeType:Ljava/lang/String;

    iget-object v7, v4, Lcom/ca/mdo/SDKInputStream;->encoding:Ljava/lang/String;

    iget-object v8, v4, Lcom/ca/mdo/SDKInputStream;->delegate:Ljava/io/InputStream;

    invoke-direct {v2, v6, v7, v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "response":Landroid/webkit/WebResourceResponse;
    .end local v4    # "sdkInputStream":Lcom/ca/mdo/SDKInputStream;
    .restart local v2    # "response":Landroid/webkit/WebResourceResponse;
    :goto_2
    move-object v3, v2

    .line 271
    goto :goto_1

    .line 263
    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "response":Landroid/webkit/WebResourceResponse;
    :cond_1
    const/4 v2, 0x0

    move-object v9, v3

    .end local v3    # "response":Landroid/webkit/WebResourceResponse;
    .local v9, "response":Landroid/webkit/WebResourceResponse;
    move-object v3, v2

    move-object v2, v9

    .end local v9    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v2    # "response":Landroid/webkit/WebResourceResponse;
    goto :goto_1

    .line 268
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 269
    .local v5, "t":Ljava/lang/Throwable;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldInterceptRequest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 268
    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v3    # "response":Landroid/webkit/WebResourceResponse;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v2    # "response":Landroid/webkit/WebResourceResponse;
    goto :goto_3

    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v3    # "response":Landroid/webkit/WebResourceResponse;
    :cond_2
    move-object v2, v3

    .end local v3    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v2    # "response":Landroid/webkit/WebResourceResponse;
    goto :goto_2

    :cond_3
    move-object v3, v2

    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v3    # "response":Landroid/webkit/WebResourceResponse;
    goto :goto_0
.end method
