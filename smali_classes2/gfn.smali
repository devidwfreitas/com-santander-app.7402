.class public Lgfn;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lgfn;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Land;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Lgmx;

    invoke-virtual {p0, p1}, Lgfn;->a(Lgmx;)V

    return-void
.end method

.method public a(Lgmx;)V
    .locals 3

    .prologue
    .line 107
    const-string v0, "Investimentos_CarteiraDiaria_PosicaoConsolidada_Acao"

    const-string v1, "SelecionarConta"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lgfn;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-virtual {p1}, Lgmx;->f()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;

    .line 109
    iget-object v0, p0, Lgfn;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->d(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Lggh;

    move-result-object v0

    iget-object v1, p0, Lgfn;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {v1}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->b(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getIndexConta()I

    move-result v1

    iget-object v2, p0, Lgfn;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {v2}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->c(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lggh;->a(ILjava/lang/String;)V

    .line 110
    return-void
.end method
