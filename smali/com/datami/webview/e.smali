.class public final Lcom/datami/webview/e;
.super Ljava/lang/Object;


# static fields
.field private static final b:[B

.field private static c:I


# instance fields
.field final synthetic a:Lcom/datami/webview/SmiWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/webview/e;->b:[B

    const/16 v0, 0x9b

    sput v0, Lcom/datami/webview/e;->c:I

    return-void

    :array_0
    .array-data 1
        0x7et
        -0xbt
        0x23t
        0xdt
        0x2bt
        -0x2t
        -0x5t
        0x1t
        -0x54t
        0x47t
        0x3t
        -0x50t
        0x53t
        -0x7t
        -0xet
        -0x5t
        0x11t
        -0xdt
        0x3t
        -0x9t
        -0x49t
        0x54t
        -0xft
        -0x7t
        -0x1t
        0x8t
        -0x51t
        0x41t
        -0x4t
        0x0t
        0x3t
        -0x5t
    .end array-data
.end method

.method public constructor <init>(Lcom/datami/webview/SmiWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/webview/e;->a:Lcom/datami/webview/SmiWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    mul-int/lit8 v0, p1, 0x2

    rsub-int/lit8 v1, v0, 0x1d

    sget-object v7, Lcom/datami/webview/e;->b:[B

    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x45

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v3, p0, 0x4

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v7, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x2

    move v0, v4

    :goto_1
    add-int/lit8 v6, v6, 0x1

    int-to-byte v4, v2

    aput-byte v4, v3, v0

    add-int/lit8 v4, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v5

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/datami/webview/e;->a:Lcom/datami/webview/SmiWebView;

    invoke-static {v0, p1}, Lcom/datami/webview/SmiWebView;->access$000(Lcom/datami/webview/SmiWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/datami/webview/e;->a:Lcom/datami/webview/SmiWebView;

    invoke-static {v1, v0}, Lcom/datami/webview/SmiWebView;->access$100(Lcom/datami/webview/SmiWebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/datami/webview/SmiWebView;->access$200()Ljava/lang/String;

    sget-object v0, Lcom/datami/webview/e;->b:[B

    const/16 v1, 0x18

    aget-byte v1, v0, v1

    sget-object v0, Lcom/datami/webview/e;->b:[B

    const/16 v2, 0x1d

    aget-byte v0, v0, v2

    mul-int/lit8 v2, v0, 0x2

    rsub-int/lit8 v4, v2, 0x1d

    sget-object v7, Lcom/datami/webview/e;->b:[B

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x45

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x4

    new-array v2, v4, [B

    add-int/lit8 v1, v4, -0x1

    if-nez v7, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x2

    move v0, v4

    :goto_2
    add-int/lit8 v6, v6, 0x1

    int-to-byte v4, v2

    aput-byte v4, v3, v0

    add-int/lit8 v4, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    goto :goto_0

    :cond_0
    aget-byte v0, v7, v6

    goto :goto_1

    :cond_1
    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v5

    goto :goto_2
.end method
