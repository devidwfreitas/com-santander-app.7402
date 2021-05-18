.class public Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lgfv;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lgfg;

.field private c:Lger;

.field private d:Lgew;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;)Lgfg;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->b:Lgfg;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 71
    const v0, 0x7f100c82

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 72
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 73
    iget-object v1, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 75
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;Lgfg;Lgev;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->a(Lgfg;Lgev;)V

    return-void
.end method

.method private a(Lgfg;Lgev;)V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lgft;->a:[I

    invoke-virtual {p1}, Lgfg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 100
    :pswitch_0
    const-string v0, "Investimentos_CarteiraDiaria_PosicaoConsolidada_RendaFixa_Acao"

    invoke-virtual {p2}, Lgev;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_1
    const-string v0, "Investimentos_CarteiraDiaria_PosicaoConsolidada_Fundos_Acao"

    invoke-virtual {p2}, Lgev;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_2
    const-string v0, "Investimentos_CarteiraDiaria_PosicaoConsolidada_RendaVariavel_Acao"

    invoke-virtual {p2}, Lgev;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :pswitch_3
    const-string v0, "Investimentos_CarteiraDiaria_PosicaoConsolidada_Derivativos_Acao"

    invoke-virtual {p2}, Lgev;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static synthetic b(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;)Lgew;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->d:Lgew;

    return-object v0
.end method


# virtual methods
.method public a(Lger;)V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lggc;

    iget-object v2, p1, Lger;->a:Ljava/util/List;

    new-instance v3, Lgfs;

    invoke-direct {v3, p0}, Lgfs;-><init>(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;)V

    invoke-direct {v1, v2, v3}, Lggc;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 95
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f04007c

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 45
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "tipo_carteira_enum"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgfg;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->b:Lgfg;

    .line 49
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "carteira_diaria_model"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lger;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->c:Lger;

    .line 50
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fragment_topo_model"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgew;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->d:Lgew;

    .line 52
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->b:Lgfg;

    invoke-virtual {v0}, Lgfg;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->a()V

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string v1, "tipo_carteira_enum"

    iget-object v2, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->b:Lgfg;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 57
    const-string v1, "fragment_topo_model"

    iget-object v2, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->d:Lgew;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 59
    new-instance v1, Lgfx;

    invoke-direct {v1}, Lgfx;-><init>()V

    .line 60
    invoke-virtual {v1, v0}, Lgfx;->setArguments(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 63
    const v2, 0x7f100c81

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 64
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 66
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->c:Lger;

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->a(Lger;)V

    .line 67
    return-void
.end method
