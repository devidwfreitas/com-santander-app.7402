.class public Lgfs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lgfs;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgev;

    .line 84
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lgfs;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;

    const-class v4, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoDetalhesActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 85
    const-string v2, "tipo_carteira_enum"

    iget-object v3, p0, Lgfs;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;

    invoke-static {v3}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;)Lgfg;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 86
    const-string v2, "carteira_investimento_detalhes"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    const-string v2, "fragment_topo_model"

    iget-object v3, p0, Lgfs;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;

    invoke-static {v3}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->b(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;)Lgew;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    iget-object v2, p0, Lgfs;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;

    invoke-static {v2}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->b(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;)Lgew;

    move-result-object v2

    invoke-virtual {v0}, Lgev;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgew;->a(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lgfs;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;

    invoke-static {v2}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->b(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;)Lgew;

    move-result-object v2

    invoke-virtual {v0}, Lgev;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgew;->d(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lgfs;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;

    iget-object v3, p0, Lgfs;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;

    invoke-static {v3}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;)Lgfg;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;Lgfg;Lgev;)V

    .line 91
    iget-object v0, p0, Lgfs;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method
