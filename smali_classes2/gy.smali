.class final Lgy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnjn;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 121
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 122
    invoke-virtual {v0, p1, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 125
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 126
    invoke-static {v3}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 130
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "EnableCookieWebViewCreatedListener"

    return-object v0
.end method
