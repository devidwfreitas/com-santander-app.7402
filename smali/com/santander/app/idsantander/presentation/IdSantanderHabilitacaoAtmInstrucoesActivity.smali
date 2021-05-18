.class public Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 67
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f090ad2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090934

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09019e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->e:Landroid/widget/Button;

    new-instance v1, Liza;

    invoke-direct {v1, p0}, Liza;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040257

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f100c6e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f100c6c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090acd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09092c

    .line 90
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09019e

    new-instance v2, Lizc;

    invoke-direct {v2, p0}, Lizc;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;)V

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09019f

    new-instance v2, Lizb;

    invoke-direct {v2, p0}, Lizb;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;)V

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 105
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->f(Ljava/lang/Boolean;)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 38
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 39
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->b:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->c:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->d:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->e:Landroid/widget/Button;

    .line 49
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->f:Landroid/widget/Button;

    .line 51
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 53
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->a:Landroid/widget/LinearLayout;

    .line 55
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;->a()V

    .line 56
    return-void
.end method
