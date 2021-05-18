.class public Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lncq;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private w:Lndp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->q()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;Z)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 361
    const/4 v0, 0x3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "showLogin"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->setResult(ILandroid/content/Intent;)V

    .line 362
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->finish()V

    .line 363
    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->i:Landroid/app/Activity;

    const/4 v1, 0x7

    invoke-static {v0, p1, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 412
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->p()V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->o()V

    return-void
.end method

.method public static synthetic d(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->n()V

    return-void
.end method

.method public static synthetic e(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->r()V

    return-void
.end method

.method public static synthetic f(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->k()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 366
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->o()V

    .line 367
    invoke-static {}, Ljcd;->a()V

    .line 368
    invoke-virtual {p0, v1}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->moveTaskToBack(Z)Z

    .line 369
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 370
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 371
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 374
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->startActivity(Landroid/content/Intent;)V

    .line 375
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 378
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->startActivity(Landroid/content/Intent;)V

    .line 379
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 382
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->startActivity(Landroid/content/Intent;)V

    .line 383
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 386
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->startActivity(Landroid/content/Intent;)V

    .line 387
    return-void
.end method

.method private r()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_5

    .line 393
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->i:Landroid/app/Activity;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 394
    :goto_0
    iget-object v3, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->i:Landroid/app/Activity;

    const-string v4, "android.permission.READ_SMS"

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 396
    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    .line 397
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v0, v2

    const-string v2, "android.permission.RECEIVE_SMS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a([Ljava/lang/String;)V

    .line 408
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 393
    goto :goto_0

    :cond_1
    move v3, v2

    .line 394
    goto :goto_1

    .line 398
    :cond_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    .line 399
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a([Ljava/lang/String;)V

    goto :goto_2

    .line 400
    :cond_3
    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    .line 401
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.RECEIVE_SMS"

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a([Ljava/lang/String;)V

    goto :goto_2

    .line 403
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 406
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02054b

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 91
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090adc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090940

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    new-instance v1, Lnca;

    invoke-direct {v1, p0}, Lnca;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09071c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    new-instance v1, Lnci;

    invoke-direct {v1, p0}, Lnci;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 117
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 123
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ae9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090958

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    new-instance v1, Lncj;

    invoke-direct {v1, p0}, Lncj;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 146
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090aea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090959

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    new-instance v1, Lnck;

    invoke-direct {v1, p0}, Lnck;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09071c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    new-instance v1, Lncl;

    invoke-direct {v1, p0}, Lncl;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 177
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f090ad5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090933

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    new-instance v1, Lncm;

    invoke-direct {v1, p0}, Lncm;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09071c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    new-instance v1, Lncn;

    invoke-direct {v1, p0}, Lncn;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 208
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090aeb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09095a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    new-instance v1, Lnco;

    invoke-direct {v1, p0}, Lnco;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09071b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    new-instance v1, Lncp;

    invoke-direct {v1, p0}, Lncp;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 232
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020559

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 238
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090add

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090944

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    new-instance v1, Lncb;

    invoke-direct {v1, p0}, Lncb;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 256
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 262
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090aec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09095b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    new-instance v1, Lncc;

    invoke-direct {v1, p0}, Lncc;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020559

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 284
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ad6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090935

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    new-instance v1, Lncd;

    invoke-direct {v1, p0}, Lncd;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09071c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    new-instance v1, Lnce;

    invoke-direct {v1, p0}, Lnce;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 309
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055e

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 315
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ae9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    new-instance v1, Lncf;

    invoke-direct {v1, p0}, Lncf;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    return-void
.end method

.method public j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->d:Landroid/widget/TextView;

    new-instance v1, Lncg;

    invoke-direct {v1, p0}, Lncg;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 343
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f090ad2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090955

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    new-instance v1, Lnch;

    invoke-direct {v1, p0}, Lnch;-><init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->w:Lndp;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lndp;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 80
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 55
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 56
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->setContentView(I)V

    .line 58
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->a:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->b:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->c:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f10032b

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->d:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->e:Landroid/widget/Button;

    .line 68
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->f:Landroid/widget/Button;

    .line 70
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 72
    new-instance v0, Lndq;

    invoke-direct {v0, p0}, Lndq;-><init>(Lncq;)V

    iput-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->w:Lndp;

    .line 73
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->w:Lndp;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lndp;->a(Landroid/content/Intent;)V

    .line 74
    return-void
.end method
