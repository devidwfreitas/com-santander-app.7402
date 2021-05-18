.class public Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lgfu;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lggj;

.field private c:Lgev;

.field private d:Lgfg;

.field private e:Lgew;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f100c83

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->a:Landroid/widget/LinearLayout;

    .line 70
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/LinearLayout;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f04007d

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 41
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "tipo_carteira_enum"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgfg;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->d:Lgfg;

    .line 45
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "carteira_investimento_detalhes"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgev;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->c:Lgev;

    .line 46
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fragment_topo_model"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgew;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->e:Lgew;

    .line 47
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->e:Lgew;

    iget-object v2, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->c:Lgev;

    invoke-virtual {v2}, Lgev;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgew;->c(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->e:Lgew;

    iget-object v2, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->c:Lgev;

    invoke-virtual {v2}, Lgev;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgew;->a(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->c:Lgev;

    invoke-virtual {v0}, Lgev;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->a()V

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    const-string v1, "tipo_carteira_enum"

    iget-object v2, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->d:Lgfg;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 55
    const-string v1, "fragment_topo_model"

    iget-object v2, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->e:Lgew;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 57
    new-instance v1, Lgfx;

    invoke-direct {v1}, Lgfx;-><init>()V

    .line 58
    invoke-virtual {v1, v0}, Lgfx;->setArguments(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 61
    const v2, 0x7f100c81

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 62
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 64
    new-instance v0, Lggk;

    invoke-direct {v0, p0}, Lggk;-><init>(Lgfu;)V

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->b:Lggj;

    .line 65
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->b:Lggj;

    iget-object v1, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;->c:Lgev;

    invoke-virtual {v1}, Lgev;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lggj;->a(Ljava/util/List;)V

    .line 66
    return-void
.end method
