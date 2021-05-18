.class Lhpu;
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
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lhpn;

.field final synthetic d:Lhpp;


# direct methods
.method constructor <init>(Lhpp;ZZIILhpn;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lhpu;->d:Lhpp;

    iput p4, p0, Lhpu;->a:I

    iput p5, p0, Lhpu;->b:I

    iput-object p6, p0, Lhpu;->c:Lhpn;

    invoke-direct {p0, p1, p2, p3}, Lhpy;-><init>(Lhpp;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)V
    .locals 2

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    iget-object v0, p0, Lhpu;->d:Lhpp;

    .line 268
    invoke-static {v0}, Lhpp;->e(Lhpp;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->setConta(Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    move-result-object v0

    iget-object v1, p0, Lhpu;->d:Lhpp;

    .line 269
    invoke-static {v1}, Lhpp;->c(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->setConsultarLimiteResponse(Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    move-result-object v0

    iget v1, p0, Lhpu;->a:I

    .line 270
    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->setDiaPagamentoSelecionado(I)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    .line 271
    iget-object v0, p0, Lhpu;->d:Lhpp;

    invoke-static {v0, p1}, Lhpp;->a(Lhpp;Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    .line 272
    iget-object v0, p0, Lhpu;->d:Lhpp;

    invoke-static {v0}, Lhpp;->d(Lhpp;)Lhpc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhpc;->a(Lhxm;)V

    .line 275
    :cond_0
    if-eqz p2, :cond_1

    .line 276
    iget-object v0, p0, Lhpu;->d:Lhpp;

    .line 277
    invoke-static {v0}, Lhpp;->e(Lhpp;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->setConta(Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    move-result-object v0

    iget-object v1, p0, Lhpu;->d:Lhpp;

    .line 278
    invoke-static {v1}, Lhpp;->a(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->setConsignadoSimulationResponse(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    .line 279
    iget-object v0, p0, Lhpu;->d:Lhpp;

    invoke-static {v0, p2}, Lhpp;->a(Lhpp;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    .line 280
    iget-object v0, p0, Lhpu;->d:Lhpp;

    invoke-static {v0}, Lhpp;->b(Lhpp;)Lhqa;

    move-result-object v0

    iget-object v1, p0, Lhpu;->d:Lhpp;

    invoke-static {v1}, Lhpp;->f(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lhqa;->a(Lhxq;)V

    .line 281
    iget v0, p0, Lhpu;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 282
    iget-object v0, p0, Lhpu;->d:Lhpp;

    invoke-static {v0}, Lhpp;->d(Lhpp;)Lhpc;

    move-result-object v0

    invoke-virtual {v0, p2}, Lhpc;->a(Lhxq;)V

    .line 286
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lhpu;->d:Lhpp;

    .line 287
    invoke-virtual {v0}, Lhpp;->h()Lhxq;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhpu;->d:Lhpp;

    .line 288
    invoke-virtual {v0}, Lhpp;->h()Lhxq;

    move-result-object v0

    invoke-interface {v0}, Lhxq;->isMorno()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lhpu;->c:Lhpn;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhpn;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_2
    iget-object v0, p0, Lhpu;->c:Lhpn;

    iget-object v1, p0, Lhpu;->d:Lhpp;

    .line 295
    invoke-virtual {v1}, Lhpp;->h()Lhxq;

    move-result-object v1

    .line 293
    invoke-interface {v0, p1, v1}, Lhpn;->a(Lhxm;Lhxq;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 263
    check-cast p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    check-cast p2, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    invoke-virtual {p0, p1, p2}, Lhpu;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)V

    return-void
.end method

.method public c(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lhpu;->c:Lhpn;

    invoke-interface {v0, p1}, Lhpn;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 301
    return-void
.end method
