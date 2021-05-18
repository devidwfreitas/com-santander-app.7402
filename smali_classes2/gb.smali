.class Lgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfa",
        "<",
        "Ljava/lang/Void;",
        "Lfd",
        "<",
        "Lorg/json/JSONArray;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lez;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lez;

.field final synthetic d:Lfz;


# direct methods
.method constructor <init>(Lfz;Lez;Landroid/net/Uri;Lez;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lgb;->d:Lfz;

    iput-object p2, p0, Lgb;->a:Lez;

    iput-object p3, p0, Lgb;->b:Landroid/net/Uri;

    iput-object p4, p0, Lgb;->c:Lez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;)Lfd;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lfd",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 128
    new-instance v6, Lfw;

    invoke-direct {v6}, Lfw;-><init>()V

    .line 129
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lgb;->d:Lfz;

    invoke-static {v1}, Lfz;->a(Lfz;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 131
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 132
    new-instance v1, Lgc;

    invoke-direct {v1, p0}, Lgc;-><init>(Lgb;)V

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOWebView;->setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    .line 157
    new-instance v1, Lgd;

    invoke-direct {v1, p0, v6}, Lgd;-><init>(Lgb;Lfw;)V

    const-string v2, "boltsWebViewAppLinkResolverResult"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lgb;->a:Lez;

    invoke-virtual {v1}, Lez;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lgb;->a:Lez;

    invoke-virtual {v1}, Lez;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v3

    .line 171
    :goto_0
    iget-object v1, p0, Lgb;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgb;->c:Lez;

    invoke-virtual {v2}, Lez;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v6}, Lfw;->a()Lfd;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method public synthetic b(Lfd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lgb;->a(Lfd;)Lfd;

    move-result-object v0

    return-object v0
.end method
