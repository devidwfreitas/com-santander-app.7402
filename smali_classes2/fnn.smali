.class public Lfnn;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/WebViewActivity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/santander/app/WebViewActivity;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lfnn;->a:Lcom/santander/app/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 69
    iget-object v0, p0, Lfnn;->a:Lcom/santander/app/WebViewActivity;

    iget-object v0, v0, Lcom/santander/app/WebViewActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfnn;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfnn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 81
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 73
    const/4 v0, 0x0

    return v0
.end method
