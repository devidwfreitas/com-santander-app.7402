.class public Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljqz;


# instance fields
.field private a:Landroid/support/v7/app/ActionBar;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private w:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private x:Ljrb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->d()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->a:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->a:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 67
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v2, 0x4

    .line 72
    invoke-direct {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->b()V

    .line 74
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->w:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020480

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 81
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ad1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09092f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#conta#"

    iget-object v3, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->v:Lmip;

    .line 87
    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->v:Lmip;

    invoke-interface {v4}, Lmip;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->g()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v3, v4}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090197

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->f:Landroid/widget/Button;

    new-instance v1, Ljqw;

    invoke-direct {v1, p0}, Ljqw;-><init>(Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->b()V

    .line 104
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->w:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02047f

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 111
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ad0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09092e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->f:Landroid/widget/Button;

    new-instance v1, Ljqx;

    invoke-direct {v1, p0}, Ljqx;-><init>(Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->g:Landroid/widget/Button;

    new-instance v1, Ljqy;

    invoke-direct {v1, p0}, Ljqy;-><init>(Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09046d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%data%"

    .line 136
    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->a:Landroid/support/v7/app/ActionBar;

    .line 45
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->c:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->d:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->e:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->f:Landroid/widget/Button;

    .line 53
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->g:Landroid/widget/Button;

    .line 55
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->w:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 57
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->b:Landroid/widget/LinearLayout;

    .line 59
    new-instance v0, Ljrc;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljrc;-><init>(Ljqz;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->x:Ljrb;

    .line 61
    invoke-direct {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->b()V

    .line 62
    return-void
.end method
