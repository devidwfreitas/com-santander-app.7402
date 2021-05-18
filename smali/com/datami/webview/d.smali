.class final Lcom/datami/webview/d;
.super Landroid/webkit/WebViewClient;


# static fields
.field private static final b:[B

.field private static c:I


# instance fields
.field final synthetic a:Lcom/datami/webview/SmiWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/webview/d;->b:[B

    const/16 v0, 0xa4

    sput v0, Lcom/datami/webview/d;->c:I

    return-void

    :array_0
    .array-data 1
        0x55t
        0x5ft
        0x17t
        0x31t
        -0x7t
        0x1t
        0x7t
        0x10t
        -0x49t
        0x49t
        0xbt
        0x3t
        0x4t
        0xet
        0x0t
        0x5t
        -0x3dt
        0xet
        -0x5t
        0x9t
        0x5t
        -0x4t
        0xct
        0x5t
        0x7t
        -0xdt
        0x9t
        -0x31t
        0x3bt
        0x12t
        0x4t
    .end array-data
.end method

.method constructor <init>(Lcom/datami/webview/SmiWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/webview/d;->a:Lcom/datami/webview/SmiWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    rsub-int/lit8 v4, p2, 0x79

    const/4 v3, -0x1

    new-instance v6, Ljava/lang/String;

    mul-int/lit8 v0, p1, 0x3

    add-int/lit8 v2, v0, 0x5

    add-int/lit8 v0, p0, 0x4

    sget-object v7, Lcom/datami/webview/d;->b:[B

    new-array v1, v2, [B

    add-int/lit8 v2, v2, -0x1

    if-nez v7, :cond_1

    move v4, v3

    move v5, v0

    move-object v3, v1

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x6

    :goto_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    int-to-byte v0, v1

    aput-byte v0, v3, v4

    if-ne v4, v2, :cond_0

    const/4 v0, 0x0

    invoke-direct {v6, v3, v0}, Ljava/lang/String;-><init>([BI)V

    return-object v6

    :cond_0
    aget-byte v0, v7, v5

    goto :goto_0

    :cond_1
    move v5, v0

    move v8, v3

    move-object v3, v1

    move v1, v4

    move v4, v8

    goto :goto_1
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/datami/webview/d;->a:Lcom/datami/webview/SmiWebView;

    invoke-static {v0}, Lcom/datami/webview/SmiWebView;->access$600(Lcom/datami/webview/SmiWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datami/webview/d;->a:Lcom/datami/webview/SmiWebView;

    invoke-static {v0}, Lcom/datami/webview/SmiWebView;->access$600(Lcom/datami/webview/SmiWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/datami/webview/d;->a:Lcom/datami/webview/SmiWebView;

    invoke-static {v0}, Lcom/datami/webview/SmiWebView;->access$700(Lcom/datami/webview/SmiWebView;)V

    invoke-static {}, Lcom/datami/webview/SmiWebView;->access$200()Ljava/lang/String;

    sget-object v0, Lcom/datami/webview/d;->b:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/webview/d;->b:[B

    const/16 v2, 0xb

    aget-byte v1, v1, v2

    invoke-static {v0, v1, v1}, Lcom/datami/webview/d;->a(III)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5

    invoke-static {}, Lcom/datami/smi/b/m;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/datami/webview/d;->b:[B

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/webview/d;->b:[B

    const/16 v3, 0xb

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/webview/d;->b:[B

    const/16 v4, 0xe

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/webview/d;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/datami/webview/SmiWebView;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/webview/d;->b:[B

    const/16 v1, 0x16

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/webview/d;->b:[B

    const/16 v2, 0xe

    aget-byte v1, v1, v2

    or-int/lit8 v2, v1, 0x14

    invoke-static {v0, v1, v2}, Lcom/datami/webview/d;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datami/webview/d;->a:Lcom/datami/webview/SmiWebView;

    invoke-static {v0, p2}, Lcom/datami/webview/SmiWebView;->access$400(Lcom/datami/webview/SmiWebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/datami/webview/d;->a:Lcom/datami/webview/SmiWebView;

    invoke-static {v0}, Lcom/datami/webview/SmiWebView;->access$500(Lcom/datami/webview/SmiWebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/datami/webview/d;->a:Lcom/datami/webview/SmiWebView;

    invoke-static {v0}, Lcom/datami/webview/SmiWebView;->access$600(Lcom/datami/webview/SmiWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/datami/webview/d;->a:Lcom/datami/webview/SmiWebView;

    invoke-static {v0}, Lcom/datami/webview/SmiWebView;->access$600(Lcom/datami/webview/SmiWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
