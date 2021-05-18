.class public Lcom/datami/webview/SmiWebView;
.super Landroid/webkit/WebView;

# interfaces
.implements Lcom/datami/smi/SdStateChangeListener;


# static fields
.field private static final $:[B

.field private static $$:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final isAndroidKKBelow:Z

.field private static final isAndroidLandAbove:Z

.field private static jsToLoad:Ljava/lang/String; = null

.field private static final jsUrl:Ljava/lang/String; = "http://s3.amazonaws.com/smisdk-release/js/0.5/android-video-handler-sd-min.js"


# instance fields
.field private bViewGone:Z

.field private final cachedVideos:Ljava/util/Set;

.field private mContext:Landroid/content/Context;

.field private viewClient:Landroid/webkit/WebViewClient;


# direct methods
.method private static $(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    add-int/lit8 v3, p1, 0x27

    rsub-int v0, p2, 0x150

    rsub-int/lit8 v1, p0, 0x4d

    sget-object v7, Lcom/datami/webview/SmiWebView;->$:[B

    new-instance v8, Ljava/lang/String;

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v7, :cond_1

    move-object v3, v2

    move v4, v5

    move v6, v0

    move v2, v0

    move v0, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v2, v0

    :goto_1
    int-to-byte v0, v2

    aput-byte v0, v3, v4

    add-int/lit8 v6, v6, 0x1

    if-ne v4, v1, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v0

    move-object v9, v2

    move v2, v3

    move-object v3, v9

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x19d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v0, 0x62

    sput v0, Lcom/datami/webview/SmiWebView;->$$:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v4, 0x33

    aget-byte v3, v3, v4

    neg-int v3, v3

    const/16 v4, 0x34

    const/16 v5, 0x99

    invoke-static {v3, v4, v5}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v3, Lcom/datami/webview/SmiWebView;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/webview/SmiWebView;->TAG:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/datami/webview/SmiWebView;->jsToLoad:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/datami/webview/SmiWebView;->isAndroidKKBelow:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-le v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/datami/webview/SmiWebView;->isAndroidLandAbove:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x3ft
        -0x80t
        -0xbt
        0x53t
        -0x2at
        0xbt
        -0xdt
        0x3t
        0x4bt
        -0x30t
        -0x11t
        -0x13t
        0xct
        0x9t
        -0x15t
        0x15t
        -0x12t
        0x10t
        -0xft
        0x9t
        -0x7t
        -0x4t
        0x3at
        -0x27t
        -0x3t
        0x0t
        0x20t
        -0x1dt
        -0x13t
        0x13t
        0x14t
        -0x1ct
        0x25t
        -0x25t
        -0xdt
        0x30t
        -0x29t
        -0x3t
        0x2ct
        -0x1ct
        0x3at
        -0x3t
        0xet
        -0x3t
        -0x1t
        0x1t
        0x44t
        -0x56t
        0xdt
        0x5t
        0x44t
        -0x48t
        0x7t
        -0xdt
        0xat
        -0x8t
        0x7t
        -0xdt
        -0x5t
        0x3t
        0x2t
        -0x8t
        0x2t
        -0x5t
        0x7t
        0x47t
        -0x56t
        0xdt
        0x5t
        -0x1t
        -0xat
        -0x4t
        0x53t
        -0x4ft
        0x1t
        0x4et
        -0x53t
        0xft
        0x44t
        -0x43t
        -0x5t
        0x7t
        -0xdt
        0x7t
        0x2t
        0x2bt
        0x1at
        0x9t
        -0x15t
        0x15t
        -0x12t
        0x10t
        -0xft
        0x9t
        -0x7t
        -0x4t
        0x3at
        -0x3at
        0x5t
        0x8t
        0x0t
        -0x5t
        0x7t
        0x21t
        -0x29t
        0x4t
        0x25t
        -0x25t
        -0xdt
        0x4et
        -0x4ct
        0x2t
        -0x3t
        0x10t
        0x3ct
        0x2t
        -0xft
        0x0t
        0xbt
        -0x5t
        0x7t
        0x47t
        -0x56t
        0xdt
        0x5t
        -0x1t
        -0xat
        0x4ft
        -0x48t
        0x7t
        -0xdt
        0xat
        -0x8t
        0x7t
        -0xdt
        0x52t
        -0x52t
        0xdt
        -0xet
        0x4t
        -0x6t
        0x3t
        0xft
        -0x2t
        0x45t
        -0x46t
        0x5t
        -0x8t
        -0x3t
        0x7t
        0x1t
        0x2at
        0x1at
        -0x2t
        0x5t
        0x54t
        -0x56t
        0xdt
        0x5t
        -0x1t
        -0xat
        -0x4t
        0x53t
        -0x43t
        -0x5t
        0x3t
        0x2t
        -0x8t
        0x6t
        0x1t
        -0x13t
        0x5t
        -0x1t
        -0xat
        0x4ft
        -0x49t
        -0xat
        0x53t
        -0x43t
        0x2t
        -0x2t
        -0x5t
        0x3t
        0x1t
        -0x9t
        -0x9t
        0x4t
        0xct
        0x9t
        -0x15t
        0x15t
        -0x12t
        0x10t
        -0xft
        0x9t
        -0x7t
        -0x4t
        0x3at
        -0x3at
        0x5t
        0x8t
        0x0t
        -0x5t
        0x7t
        0x21t
        -0x29t
        0x4t
        0x25t
        -0x25t
        -0xdt
        0x4et
        -0x3et
        0x5t
        -0xbt
        -0x7t
        0xet
        0x3ct
        -0x9t
        0x4t
        0x49t
        -0x57t
        0x12t
        0x3t
        -0x14t
        0xdt
        0x4t
        -0x12t
        0x57t
        -0x43t
        -0x9t
        0x3t
        0x4t
        -0x9t
        -0x6t
        0x54t
        -0x49t
        -0xat
        0x53t
        -0x53t
        0xet
        -0xft
        0x4t
        0x42t
        -0x56t
        0xdt
        0x5t
        -0x1t
        -0xat
        -0x4t
        0x53t
        -0x43t
        -0x5t
        0x3t
        0x2t
        -0x8t
        0x6t
        0x1t
        -0xct
        0x1t
        -0x6t
        0xbt
        -0x5t
        -0x7t
        0x10t
        0x22t
        -0x29t
        0x3t
        0x6t
        -0x8t
        0x6t
        0x1t
        0x9t
        -0x15t
        0x15t
        -0x12t
        0x10t
        -0xft
        0x9t
        -0x7t
        -0x4t
        0x3at
        0x5t
        -0x2t
        -0x2t
        0x3t
        -0xdt
        0x0t
        0x4t
        0x5t
        -0x13t
        0x5t
        -0x1t
        -0xat
        0x4ft
        -0x49t
        -0xat
        0x53t
        -0x4et
        -0x1t
        -0x5t
        0x54t
        -0x43t
        0x2t
        -0x2t
        -0x5t
        0x3t
        0x1t
        0x9t
        -0x15t
        0x15t
        -0x12t
        0x10t
        -0xft
        0x9t
        -0x7t
        -0x4t
        0x3at
        -0x27t
        -0x3t
        0x0t
        0x20t
        -0x1dt
        -0x13t
        0x13t
        0x14t
        -0x1ct
        0x25t
        -0x25t
        -0xdt
        0x30t
        -0x29t
        -0x3t
        0x19t
        -0x1bt
        0x4ct
        -0x5t
        0x5t
        -0xct
        0x0t
        0x4t
        0x36t
        0xbt
        0x0t
        -0x44t
        0x40t
        0x5t
        -0x33t
        -0xct
        0xct
        -0x19t
        0xbt
        0x1t
        0xdt
        -0x16t
        0x4t
        0x45t
        -0x35t
        -0xct
        0x2t
        0x3et
        -0x44t
        0x6t
        0x4t
        -0xat
        0xft
        -0x7t
        0x3et
        -0x45t
        0xdt
        -0x7t
        0x7t
        0x4t
        -0x12t
        0xet
        0x36t
        -0x3bt
        -0x9t
        0x44t
        -0x1t
        0x2t
        -0x7t
        0x6t
        -0x32t
        -0xdt
        0xat
        -0xet
        0x3t
        0x6t
        0x5t
        0x37t
        -0x49t
        0xdt
        0x5t
        -0x1t
        -0xat
        0x42t
        -0x3bt
        0x7t
        -0xdt
        0xat
        -0x8t
        0x7t
        -0xdt
        0x45t
        -0x46t
        0xft
        0x37t
        -0x40t
        0x4t
        -0x5t
        0x40t
        -0x3ct
        -0x9t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/datami/webview/SmiWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/webview/SmiWebView;->cachedVideos:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/datami/webview/SmiWebView;->bViewGone:Z

    iput-object p1, p0, Lcom/datami/webview/SmiWebView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/datami/smi/b/m;->a(Lcom/datami/smi/SdStateChangeListener;)V

    new-instance v0, Lcom/datami/webview/e;

    invoke-direct {v0, p0}, Lcom/datami/webview/e;-><init>(Lcom/datami/webview/SmiWebView;)V

    sget-object v1, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v2, 0x167

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v3, 0x72

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v4, 0x7f

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/datami/webview/SmiWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/datami/webview/SmiWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/datami/webview/SmiWebView;->getVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/datami/webview/SmiWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/datami/webview/SmiWebView;->updateCachedVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/datami/webview/SmiWebView;Lcom/datami/smi/SmiResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/datami/webview/SmiWebView;->handleOnChange(Lcom/datami/smi/SmiResult;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/datami/webview/SmiWebView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/datami/webview/SmiWebView;->isAndroidKKBelow:Z

    return v0
.end method

.method static synthetic access$400(Lcom/datami/webview/SmiWebView;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/datami/webview/SmiWebView;->containsCachedVideo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/datami/webview/SmiWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/datami/webview/SmiWebView;->modifyVideoElements()V

    return-void
.end method

.method static synthetic access$600(Lcom/datami/webview/SmiWebView;)Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lcom/datami/webview/SmiWebView;->viewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method static synthetic access$700(Lcom/datami/webview/SmiWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/datami/webview/SmiWebView;->modifyVideoElementsOnUIThread()V

    return-void
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/datami/webview/SmiWebView;->jsToLoad:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/datami/webview/SmiWebView;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/datami/webview/SmiWebView;->getDatamiJS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private containsCachedVideo(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/16 v4, 0x23

    iget-object v0, p0, Lcom/datami/webview/SmiWebView;->cachedVideos:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datami/webview/SmiWebView;->cachedVideos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/datami/webview/SmiWebView;->cachedVideos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v1, 0x167

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v1, v1, v4

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0xa7

    invoke-static {v0, v1, v2}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v2, 0x16

    aget-byte v0, v0, v2

    sget-object v2, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v2, v2, v4

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move v0, v1

    goto :goto_0
.end method

.method private getDatamiJS()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    sget-object v2, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v3, 0x19

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x41

    sget-object v4, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v5, 0x19

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-static {v2, v1}, Lcom/ca/android/app/CaMDOHTTPClient;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/datami/webview/SmiWebView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v5, 0x20

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v6, 0x158

    aget-byte v5, v5, v6

    or-int/lit16 v6, v5, 0x9e

    invoke-static {v4, v5, v6}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getVideoId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x14d

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v2, 0x4f

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v1, v2, v3}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v2, 0x90

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/webview/SmiWebView;->$:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v3, v2, 0xf8

    invoke-static {v1, v2, v3}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleOnChange(Lcom/datami/smi/SmiResult;)V
    .locals 13

    const/4 v1, 0x1

    const/16 v12, 0x19

    const/16 v11, 0x4f

    const/16 v10, 0x8

    const/16 v9, 0x23

    sget-boolean v0, Lcom/datami/webview/SmiWebView;->isAndroidLandAbove:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/datami/webview/SmiWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v3, v3, v9

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v5, 0x72

    aget-byte v4, v4, v5

    const/16 v5, 0x117

    invoke-static {v3, v4, v5}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/datami/smi/SmiResult;->getSdState()Lcom/datami/smi/SdState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/datami/webview/SmiWebView;->loadVideoHandler(Z)V

    invoke-virtual {p1}, Lcom/datami/smi/SmiResult;->getSdState()Lcom/datami/smi/SdState;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/SdState;->SD_AVAILABLE:Lcom/datami/smi/SdState;

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/datami/smi/b/m;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/datami/smi/b/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/datami/smi/b/m;->H()Z

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v5, v5, v9

    sget-object v6, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v6, v6, v11

    neg-int v6, v6

    const/16 v7, 0x144

    invoke-static {v5, v6, v7}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v4, v4, v10

    sget-object v5, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v6, 0x31

    aget-byte v5, v5, v6

    sget v6, Lcom/datami/webview/SmiWebView;->$$:I

    ushr-int/lit8 v6, v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v4, v4, v10

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v5, v5, v12

    sget-object v6, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v7, 0x3c

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v4, v4, v10

    sget-object v5, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v5, v5, v12

    or-int/lit16 v6, v5, 0xb8

    invoke-static {v4, v5, v6}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v4, Lcom/datami/webview/SmiWebView;->isAndroidKKBelow:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/datami/smi/b/m;->J()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v6, v6, v9

    sget-object v7, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v7, v7, v11

    neg-int v7, v7

    const/16 v8, 0x1e

    invoke-static {v6, v7, v8}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v4, v4, v10

    sget-object v5, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v6, 0x31

    aget-byte v5, v5, v6

    sget v6, Lcom/datami/webview/SmiWebView;->$$:I

    ushr-int/lit8 v6, v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v2, v2, v10

    add-int/lit8 v2, v2, -0x1

    sget-object v4, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v4, v4, v12

    sget-object v5, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v6, 0x3c

    aget-byte v5, v5, v6

    invoke-static {v2, v4, v5}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v2, v2, v10

    sget-object v3, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v3, v3, v12

    or-int/lit16 v4, v3, 0xb8

    invoke-static {v2, v3, v4}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/datami/webview/SmiWebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/datami/webview/SmiWebView;->loadUrl(Ljava/lang/String;)V

    sget-object v0, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v0, v0, v9

    sget-object v1, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v1, v1, v11

    neg-int v1, v1

    sget v2, Lcom/datami/webview/SmiWebView;->$$:I

    or-int/lit16 v2, v2, 0x98

    invoke-static {v0, v1, v2}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/datami/webview/SmiWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/datami/webview/SmiWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    sget-object v0, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v0, v0, v9

    sget-object v1, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v1, v1, v11

    neg-int v1, v1

    sget v2, Lcom/datami/webview/SmiWebView;->$$:I

    or-int/lit16 v2, v2, 0x98

    invoke-static {v0, v1, v2}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/datami/webview/SmiWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    :cond_4
    sget-boolean v0, Lcom/datami/webview/SmiWebView;->isAndroidKKBelow:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v0, v0, v9

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v1, v1, v11

    neg-int v1, v1

    const/16 v2, 0x95

    invoke-static {v0, v1, v2}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/datami/webview/SmiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v0, v0, v9

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v1, v1, v11

    neg-int v1, v1

    const/16 v2, 0x95

    invoke-static {v0, v1, v2}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/datami/webview/SmiWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2
.end method

.method private loadVideoHandler(Z)V
    .locals 5

    const/16 v4, 0xf2

    iget-boolean v0, p0, Lcom/datami/webview/SmiWebView;->bViewGone:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/datami/webview/SmiWebView;->jsToLoad:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/datami/webview/b;

    invoke-direct {v1, p0}, Lcom/datami/webview/b;-><init>(Lcom/datami/webview/SmiWebView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    sget-object v0, Lcom/datami/webview/SmiWebView;->jsToLoad:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v1, v1, v4

    sget-object v2, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v3, 0x4f

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/webview/SmiWebView;->jsToLoad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/datami/webview/SmiWebView;->isAndroidKKBelow:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/datami/webview/SmiWebView;->loadUrl(Ljava/lang/String;)V

    :goto_2
    sget-object v0, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v1, 0x177

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v2, 0x90

    aget-byte v1, v1, v2

    const/16 v2, 0x128

    invoke-static {v0, v1, v2}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/datami/webview/SmiWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private modifyVideoElements()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/datami/webview/SmiWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/datami/webview/a;

    invoke-direct {v1, p0}, Lcom/datami/webview/a;-><init>(Lcom/datami/webview/SmiWebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private modifyVideoElementsOnUIThread()V
    .locals 12

    const/16 v9, 0x23

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v11, 0x19

    const/16 v10, 0x8

    sget-boolean v0, Lcom/datami/webview/SmiWebView;->isAndroidLandAbove:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/datami/webview/SmiWebView;->loadVideoHandler(Z)V

    invoke-static {}, Lcom/datami/smi/b/m;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/datami/smi/b/m;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/datami/smi/b/m;->H()Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v6, v6, v9

    sget-object v7, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v8, 0x4f

    aget-byte v7, v7, v8

    neg-int v7, v7

    const/16 v8, 0x144

    invoke-static {v6, v7, v8}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v5, v5, v10

    sget-object v6, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v7, 0x31

    aget-byte v6, v6, v7

    sget v7, Lcom/datami/webview/SmiWebView;->$$:I

    ushr-int/lit8 v7, v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v5, v5, v10

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v6, v6, v11

    sget-object v7, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v8, 0x3c

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v5, v5, v10

    sget-object v6, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v6, v6, v11

    or-int/lit16 v7, v6, 0xb8

    invoke-static {v5, v6, v7}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v5, Lcom/datami/webview/SmiWebView;->isAndroidKKBelow:Z

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/datami/smi/b/m;->J()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v7, v7, v9

    sget-object v8, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v9, 0x4f

    aget-byte v8, v8, v9

    neg-int v8, v8

    const/16 v9, 0x1e

    invoke-static {v7, v8, v9}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v5, :cond_2

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v5, v5, v10

    sget-object v6, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v7, 0x31

    aget-byte v6, v6, v7

    sget v7, Lcom/datami/webview/SmiWebView;->$$:I

    ushr-int/lit8 v7, v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v3, v3, v10

    add-int/lit8 v3, v3, -0x1

    sget-object v5, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v5, v5, v11

    sget-object v6, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v7, 0x3c

    aget-byte v6, v6, v7

    invoke-static {v3, v5, v6}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v3, v3, v10

    sget-object v4, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v4, v4, v11

    or-int/lit16 v5, v4, 0xb8

    invoke-static {v3, v4, v5}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/datami/webview/SmiWebView;->loadUrl(Ljava/lang/String;)V

    sget-object v1, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v3, 0x72

    aget-byte v1, v1, v3

    sget-object v3, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v4, 0x87

    aget-byte v3, v3, v4

    const/16 v4, 0xb7

    invoke-static {v1, v3, v4}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/datami/webview/SmiWebView;->loadUrl(Ljava/lang/String;)V

    sget-object v0, Lcom/datami/webview/SmiWebView;->$:[B

    const/16 v1, 0x72

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/webview/SmiWebView;->$:[B

    aget-byte v1, v1, v2

    sget v2, Lcom/datami/webview/SmiWebView;->$$:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/datami/webview/SmiWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2
.end method

.method private updateCachedVideo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/datami/webview/SmiWebView;->cachedVideos:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/16 v0, 0x34

    const/16 v1, 0x3d

    const/16 v2, 0x78

    invoke-static {v0, v1, v2}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    return-void
.end method

.method public onChange(Lcom/datami/smi/SmiResult;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/datami/webview/SmiWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/datami/webview/c;

    invoke-direct {v1, p0, p1}, Lcom/datami/webview/c;-><init>(Lcom/datami/webview/SmiWebView;Lcom/datami/smi/SmiResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/datami/webview/SmiWebView;->handleOnChange(Lcom/datami/smi/SmiResult;)V

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/datami/webview/SmiWebView;->bViewGone:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/datami/webview/SmiWebView;->bViewGone:Z

    goto :goto_0
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 3

    iput-object p1, p0, Lcom/datami/webview/SmiWebView;->viewClient:Landroid/webkit/WebViewClient;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/datami/webview/SmiWebView;->loadVideoHandler(Z)V

    new-instance v0, Lcom/datami/webview/d;

    invoke-direct {v0, p0}, Lcom/datami/webview/d;-><init>(Lcom/datami/webview/SmiWebView;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const/16 v0, 0x34

    const/16 v1, 0x3d

    const/16 v2, 0x78

    invoke-static {v0, v1, v2}, Lcom/datami/webview/SmiWebView;->$(III)Ljava/lang/String;

    return-void
.end method
