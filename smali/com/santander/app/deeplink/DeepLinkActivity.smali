.class public Lcom/santander/app/deeplink/DeepLinkActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/santander/app/deeplink/DeepLinkActivity;->b()V

    .line 38
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->p()Liow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    :goto_0
    invoke-virtual {p0, v0}, Lcom/santander/app/deeplink/DeepLinkActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    invoke-virtual {p0}, Lcom/santander/app/deeplink/DeepLinkActivity;->finish()V

    .line 46
    return-void

    .line 41
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/santander/app/deeplink/DeepLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/deeplink/DeepLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/deeplink/DeepLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 52
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiq;->a(Landroid/net/Uri;)V

    .line 53
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->appWillOpenUrl(Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-direct {p0}, Lcom/santander/app/deeplink/DeepLinkActivity;->a()V

    .line 26
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/santander/app/deeplink/DeepLinkActivity;->a()V

    .line 31
    return-void
.end method
