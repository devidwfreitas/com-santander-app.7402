.class public Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Liew;
.implements Lnau;


# static fields
.field private static final e:I = 0x1


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Liex;

.field private c:Lgga;

.field private d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;)Liex;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->b:Liex;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const v4, 0x7f100249

    .line 107
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->d:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    if-nez v1, :cond_0

    .line 113
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 114
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 115
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 117
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 118
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 58
    const v0, 0x7f100249

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->d:Landroid/widget/LinearLayout;

    .line 59
    new-instance v0, Lieu;

    sget-object v1, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lieu;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0}, Lieu;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lieu;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Liey;

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {v1, v0, p0, p0}, Liey;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Liew;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->b:Liex;

    .line 62
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->b:Liex;

    invoke-interface {v0}, Liex;->a()V

    .line 63
    new-instance v0, Lgga;

    new-instance v1, Lgfz;

    invoke-direct {v1, p0}, Lgfz;-><init>(Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;)V

    iget-object v2, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->b:Liex;

    invoke-direct {v0, p0, v1, v2}, Lgga;-><init>(Landroid/app/Activity;Lgfl;Liex;)V

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->c:Lgga;

    .line 71
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->c:Lgga;

    invoke-virtual {v0}, Lgga;->show()V

    .line 72
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->c:Lgga;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgga;->setCanceledOnTouchOutside(Z)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->c()V

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    iget-object v1, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 80
    const-string v0, "Investimentos_CarteiraDiaria_AutenticacaoBiometrica_Acao"

    const-string v1, "DigitalNaoReconhecida"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Excesso de tentativas. Digite sua senha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, "Investimentos_CarteiraDiaria_AutenticacaoBiometrica_Acao"

    const-string v1, "ExcessoDeTentativas"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "Excesso de tentativas."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->b:Liex;

    invoke-interface {v0}, Liex;->b()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "Investimentos_CarteiraDiaria_AutenticacaoBiometrica_Acao"

    const-string v1, "LogouComSucesso"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->b:Liex;

    invoke-interface {v0}, Liex;->b()V

    .line 96
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->c:Lgga;

    invoke-virtual {v0}, Lgga;->dismiss()V

    .line 97
    invoke-direct {p0}, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->c()V

    .line 98
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 51
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 52
    const v0, 0x7f0400b7

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->setContentView(I)V

    .line 53
    iput-object p0, p0, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->a:Landroid/app/Activity;

    .line 54
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->a()V

    .line 55
    return-void
.end method
