.class public Lneq;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/santander/app/webview/presentation/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/webview/presentation/WebViewActivity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lneq;->b:Lcom/santander/app/webview/presentation/WebViewActivity;

    iput-object p2, p0, Lneq;->a:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lneq;->a:Landroid/app/Activity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 152
    return-void
.end method
