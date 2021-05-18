.class public Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lizm;


# instance fields
.field private a:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 32
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 34
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 35
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 39
    :goto_0
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->a:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 40
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->b:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->c:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->a:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v2, 0x7f02055b

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 44
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090ae0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09094b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v0, Ljau;

    invoke-direct {v0, p0, p0}, Ljau;-><init>(Lizm;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->d:Ljat;

    .line 50
    :try_start_0
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lnaf;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 55
    :goto_1
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;->d:Ljat;

    invoke-interface {v0, v1}, Ljat;->a(Ljava/lang/String;)V

    .line 56
    return-void

    .line 37
    :cond_0
    const-string v0, ""

    move-object v1, v0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v2, "ERROR_ENCRYPT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
