.class public Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lgfw;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lggl;

.field private c:Lgfg;

.field private d:Lger;

.field private e:Lgew;


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
    .line 67
    const v0, 0x7f100c85

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 68
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 69
    iget-object v1, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 70
    return-void
.end method


# virtual methods
.method public a(Lger;)V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lggf;

    iget-object v2, p1, Lger;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->i:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Lggf;-><init>(Ljava/util/List;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 42
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 43
    const v1, 0x7f090667

    invoke-virtual {p0, v1}, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tipo_carteira_enum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgfg;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->c:Lgfg;

    .line 46
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "carteira_diaria_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lger;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->d:Lger;

    .line 47
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fragment_topo_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgew;

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->e:Lgew;

    .line 49
    invoke-direct {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->a()V

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    const-string v1, "tipo_carteira_enum"

    iget-object v2, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->c:Lgfg;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 53
    const-string v1, "fragment_topo_model"

    iget-object v2, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->e:Lgew;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 55
    new-instance v1, Lgfx;

    invoke-direct {v1}, Lgfx;-><init>()V

    .line 56
    invoke-virtual {v1, v0}, Lgfx;->setArguments(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 59
    const v2, 0x7f100c84

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 60
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 62
    new-instance v0, Lggm;

    iget-object v1, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->d:Lger;

    iget-object v2, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->c:Lgfg;

    invoke-direct {v0, p0, v1, v2}, Lggm;-><init>(Lgfw;Lger;Lgfg;)V

    iput-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->b:Lggl;

    .line 63
    iget-object v0, p0, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;->b:Lggl;

    invoke-interface {v0}, Lggl;->a()V

    .line 64
    return-void
.end method
