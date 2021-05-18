.class public Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lizl;


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
    .line 29
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 74
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f090ad2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090954

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040256

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f100c6d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lizf;

    invoke-direct {v1, p0}, Lizf;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f100c6b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lizg;

    invoke-direct {v1, p0}, Lizg;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09019e

    .line 95
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->e:Landroid/widget/Button;

    new-instance v1, Lizh;

    invoke-direct {v1, p0}, Lizh;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09019d

    .line 104
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->f:Landroid/widget/Button;

    new-instance v1, Lizi;

    invoke-direct {v1, p0}, Lizi;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOfertaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090acd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09092c

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09019e

    new-instance v2, Lizk;

    invoke-direct {v2, p0}, Lizk;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;)V

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09019f

    new-instance v2, Lizj;

    invoke-direct {v2, p0}, Lizj;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;)V

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 139
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    sget-object v0, Lnat;->VER_MENSAGEM_QR:Lnat;

    invoke-virtual {v0}, Lnat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->f()V

    .line 146
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 149
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

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 41
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 42
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->b:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->c:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->d:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->e:Landroid/widget/Button;

    .line 52
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->f:Landroid/widget/Button;

    .line 54
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->g:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 56
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->a:Landroid/widget/LinearLayout;

    .line 58
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;->a()V

    .line 59
    return-void
.end method
