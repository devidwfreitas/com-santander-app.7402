.class public Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnda;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ImageView;

.field private w:Lndu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->a()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%data%"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    new-instance v1, Lncz;

    invoke-direct {v1, p0}, Lncz;-><init>(Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->a()V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x8

    .line 37
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 39
    const v0, 0x7f040077

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 43
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 44
    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 46
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090af1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09095d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090165

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    const v0, 0x7f100357

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->f:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    const v0, 0x7f100356

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->g:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->g:Landroid/widget/ImageView;

    const v2, 0x7f020546

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    new-instance v0, Lndv;

    invoke-direct {v0, p0}, Lndv;-><init>(Lnda;)V

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->w:Lndu;

    .line 67
    iget-object v2, p0, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->w:Lndu;

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v2, v0}, Lndu;->a(Ljava/lang/String;)V

    .line 69
    return-void

    :cond_0
    move-object v0, v1

    .line 68
    goto :goto_0
.end method
