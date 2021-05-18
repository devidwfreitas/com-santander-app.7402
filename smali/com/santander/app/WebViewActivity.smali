.class public Lcom/santander/app/WebViewActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "urlToLoad"


# instance fields
.field public b:Landroid/app/Dialog;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 24
    const-string v0, "WebViewActivity"

    iput-object v0, p0, Lcom/santander/app/WebViewActivity;->c:Ljava/lang/String;

    .line 28
    const-string v0, "https://drive.google.com/viewerng/viewer?embedded=true&url="

    iput-object v0, p0, Lcom/santander/app/WebViewActivity;->d:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/WebViewActivity;->b:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/WebViewActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/santander/app/WebViewActivity;->e:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 36
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/santander/app/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/santander/app/MinhaConta;->a(Landroid/content/Context;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/WebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 46
    const v1, 0x7f09042d

    invoke-virtual {p0, v1}, Lcom/santander/app/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/santander/app/WebViewActivity;->e:Landroid/webkit/WebView;

    .line 50
    iget-object v0, p0, Lcom/santander/app/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 51
    iget-object v0, p0, Lcom/santander/app/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 52
    iget-object v0, p0, Lcom/santander/app/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    iget-object v0, p0, Lcom/santander/app/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 54
    iget-object v0, p0, Lcom/santander/app/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lfnm;

    invoke-direct {v1, p0}, Lfnm;-><init>(Lcom/santander/app/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 61
    iget-object v0, p0, Lcom/santander/app/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/santander/app/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Lcom/santander/app/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "urlToLoad"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://drive.google.com/viewerng/viewer?embedded=true&url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/santander/app/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-static {v1, v0}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/santander/app/WebViewActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lfnn;

    invoke-direct {v1, p0}, Lfnn;-><init>(Lcom/santander/app/WebViewActivity;)V

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOWebView;->setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    .line 84
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lgrs;->onPause()V

    .line 107
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/santander/app/MinhaConta;->a(Z)V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Lgrs;->onResume()V

    .line 90
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/santander/app/MinhaConta;->a(Z)V

    .line 92
    invoke-static {}, Lcom/santander/app/MinhaConta;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/ExitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    const-string v1, "errorMessage"

    invoke-static {}, Lcom/santander/app/MinhaConta;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "showHome"

    invoke-static {}, Lcom/santander/app/MinhaConta;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Lcom/santander/app/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    :cond_0
    return-void
.end method
