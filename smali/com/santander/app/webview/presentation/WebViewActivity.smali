.class public Lcom/santander/app/webview/presentation/WebViewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lner;


# static fields
.field public static final a:I = 0x1

.field public static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/webkit/WebView;

.field private d:Lnes;

.field private e:Landroid/view/MenuItem;

.field private f:Landroid/view/MenuItem;

.field private g:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->g:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/webview/presentation/WebViewActivity;)Lnes;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->d:Lnes;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/webview/presentation/WebViewActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/santander/app/webview/presentation/WebViewActivity;->finish()V

    .line 107
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    invoke-static {v0, p1}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 125
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 127
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lnep;

    invoke-direct {v1, p0}, Lnep;-><init>(Lcom/santander/app/webview/presentation/WebViewActivity;)V

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOWebView;->setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lneq;

    invoke-direct {v1, p0, p0}, Lneq;-><init>(Lcom/santander/app/webview/presentation/WebViewActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 154
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const v2, 0x7f0903b7

    const/4 v1, 0x1

    .line 204
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->g:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0, v2}, Lcom/santander/app/webview/presentation/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->g:Landroid/app/Dialog;

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 212
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 208
    invoke-virtual {p0, v2}, Lcom/santander/app/webview/presentation/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->g:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const v2, 0x7f020601

    .line 159
    invoke-virtual {p0}, Lcom/santander/app/webview/presentation/WebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 161
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 162
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 164
    invoke-static {}, Lmzr;->d()I

    move-result v1

    .line 166
    packed-switch v1, :pswitch_data_0

    .line 190
    invoke-virtual {p0}, Lcom/santander/app/webview/presentation/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    :goto_0
    return-void

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/webview/presentation/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-virtual {p0}, Lcom/santander/app/webview/presentation/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 180
    :pswitch_2
    invoke-virtual {p0}, Lcom/santander/app/webview/presentation/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 185
    :pswitch_3
    invoke-virtual {p0}, Lcom/santander/app/webview/presentation/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->e:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 217
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->e:Landroid/view/MenuItem;

    const v1, 0x7f020285

    invoke-virtual {p0, v1}, Lcom/santander/app/webview/presentation/WebViewActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->f:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 225
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->f:Landroid/view/MenuItem;

    const v1, 0x7f020283

    invoke-virtual {p0, v1}, Lcom/santander/app/webview/presentation/WebViewActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 230
    :goto_1
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->e:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 220
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->e:Landroid/view/MenuItem;

    const v1, 0x7f020286

    invoke-virtual {p0, v1}, Lcom/santander/app/webview/presentation/WebViewActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->f:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 228
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->f:Landroid/view/MenuItem;

    const v1, 0x7f020284

    invoke-virtual {p0, v1}, Lcom/santander/app/webview/presentation/WebViewActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0400b9

    invoke-virtual {p0, v0}, Lcom/santander/app/webview/presentation/WebViewActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f10045f

    invoke-virtual {p0, v0}, Lcom/santander/app/webview/presentation/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    .line 52
    new-instance v0, Lnet;

    invoke-direct {v0, p0}, Lnet;-><init>(Lner;)V

    iput-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->d:Lnes;

    .line 54
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->d:Lnes;

    sget-object v1, Lcom/santander/app/webview/presentation/WebViewActivity;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnes;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->d:Lnes;

    invoke-interface {v0}, Lnes;->b()V

    .line 56
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->d:Lnes;

    invoke-interface {v0}, Lnes;->a()V

    .line 57
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->d:Lnes;

    sget-object v1, Lcom/santander/app/webview/presentation/WebViewActivity;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnes;->a(Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->d:Lnes;

    const v1, 0x7f090444

    invoke-virtual {p0, v1}, Lcom/santander/app/webview/presentation/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnes;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/santander/app/webview/presentation/WebViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 66
    const v1, 0x7f120015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->f:Landroid/view/MenuItem;

    .line 69
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->e:Landroid/view/MenuItem;

    .line 71
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->f:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 72
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->e:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 74
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 114
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v0, p0, Lcom/santander/app/webview/presentation/WebViewActivity;->d:Lnes;

    invoke-interface {v0}, Lnes;->c()V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x7f101212
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
