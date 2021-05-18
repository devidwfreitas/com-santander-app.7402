.class public Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lizn;


# instance fields
.field private a:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljap;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;)Ljap;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->d:Ljap;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->f:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 34
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 35
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->setContentView(I)V

    .line 37
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->a:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 38
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->b:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->c:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->a:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v2, 0x7f02055b

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 42
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090ad3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09094b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v0, Ljaq;

    invoke-direct {v0, p0, p0}, Ljaq;-><init>(Lizn;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->d:Ljap;

    .line 47
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "qr"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "qr"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->e:Z

    .line 48
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "atm"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "atm"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    iput-boolean v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->f:Z

    .line 50
    iget-boolean v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->e:Z

    if-eqz v0, :cond_3

    .line 51
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->d:Ljap;

    new-instance v2, Liyy;

    invoke-direct {v2, p0}, Liyy;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;)V

    .line 56
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_1
    invoke-interface {v1, v2, v0}, Ljap;->a(Lgyx;Ljava/lang/String;)V

    .line 75
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 47
    goto :goto_0

    .line 56
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->d:Ljap;

    invoke-interface {v0}, Ljap;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->a()V

    goto :goto_2

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->d:Ljap;

    new-instance v1, Liyz;

    invoke-direct {v1, p0}, Liyz;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;)V

    invoke-interface {v0, v1}, Ljap;->a(Lgyx;)V

    goto :goto_2
.end method
