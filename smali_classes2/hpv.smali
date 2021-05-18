.class Lhpv;
.super Lhpy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhpy",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhpo;

.field final synthetic b:Lhpp;


# direct methods
.method constructor <init>(Lhpp;Lhpo;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lhpv;->b:Lhpp;

    iput-object p2, p0, Lhpv;->a:Lhpo;

    invoke-direct {p0, p1}, Lhpy;-><init>(Lhpp;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)V
    .locals 2

    .prologue
    .line 313
    if-eqz p1, :cond_0

    .line 314
    iget-object v0, p0, Lhpv;->b:Lhpp;

    .line 315
    invoke-static {v0}, Lhpp;->e(Lhpp;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->setConta(Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    move-result-object v0

    iget-object v1, p0, Lhpv;->b:Lhpp;

    .line 316
    invoke-static {v1}, Lhpp;->c(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->setConsultarLimiteResponse(Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    move-result-object v0

    iget-object v1, p0, Lhpv;->b:Lhpp;

    .line 317
    invoke-static {v1}, Lhpp;->g(Lhpp;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->setDiaPagamentoSelecionado(I)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    .line 318
    iget-object v0, p0, Lhpv;->b:Lhpp;

    invoke-static {v0, p1}, Lhpp;->a(Lhpp;Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    .line 321
    :cond_0
    if-eqz p2, :cond_1

    .line 322
    iget-object v0, p0, Lhpv;->b:Lhpp;

    .line 323
    invoke-static {v0}, Lhpp;->e(Lhpp;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->setConta(Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    move-result-object v0

    iget-object v1, p0, Lhpv;->b:Lhpp;

    .line 324
    invoke-static {v1}, Lhpp;->a(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->setConsignadoSimulationResponse(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    .line 325
    iget-object v0, p0, Lhpv;->b:Lhpp;

    invoke-static {v0, p2}, Lhpp;->a(Lhpp;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    .line 326
    iget-object v0, p0, Lhpv;->b:Lhpp;

    invoke-static {v0}, Lhpp;->b(Lhpp;)Lhqa;

    move-result-object v0

    iget-object v1, p0, Lhpv;->b:Lhpp;

    invoke-static {v1}, Lhpp;->f(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lhqa;->a(Lhxq;)V

    .line 329
    :cond_1
    iget-object v0, p0, Lhpv;->b:Lhpp;

    invoke-virtual {v0}, Lhpp;->q()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 330
    iget-object v0, p0, Lhpv;->a:Lhpo;

    invoke-interface {v0, p2}, Lhpo;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_2
    iget-object v0, p0, Lhpv;->a:Lhpo;

    invoke-interface {v0, p1}, Lhpo;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 310
    check-cast p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    check-cast p2, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    invoke-virtual {p0, p1, p2}, Lhpv;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)V

    return-void
.end method

.method public c(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lhpv;->a:Lhpo;

    invoke-interface {v0, p1}, Lhpo;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 339
    return-void
.end method
