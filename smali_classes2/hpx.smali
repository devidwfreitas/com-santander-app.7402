.class Lhpx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqj;


# instance fields
.field final synthetic a:Lhxq;

.field final synthetic b:Lhpp;


# direct methods
.method constructor <init>(Lhpp;Lhxq;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lhpx;->b:Lhpp;

    iput-object p2, p0, Lhpx;->a:Lhxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lhpx;->b:Lhpp;

    invoke-static {v0}, Lhpp;->c(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lhpx;->b:Lhpp;

    iget-object v1, p0, Lhpx;->b:Lhpp;

    invoke-static {v1}, Lhpp;->c(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->getValorLimiteMax()F

    move-result v1

    invoke-static {v0, v1}, Lhpp;->a(Lhpp;F)F

    .line 454
    iget-object v0, p0, Lhpx;->b:Lhpp;

    iget-object v1, p0, Lhpx;->b:Lhpp;

    invoke-static {v1}, Lhpp;->c(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->getValorLimiteMin()F

    move-result v1

    invoke-static {v0, v1}, Lhpp;->b(Lhpp;F)F

    .line 456
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lhpx;->a:Lhxq;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lhpx;->b:Lhpp;

    iget-object v1, p0, Lhpx;->a:Lhxq;

    invoke-interface {v1}, Lhxq;->getValorLimiteMax()F

    move-result v1

    invoke-static {v0, v1}, Lhpp;->a(Lhpp;F)F

    .line 462
    iget-object v0, p0, Lhpx;->b:Lhpp;

    iget-object v1, p0, Lhpx;->a:Lhxq;

    invoke-interface {v1}, Lhxq;->getValorLimiteMin()F

    move-result v1

    invoke-static {v0, v1}, Lhpp;->b(Lhpp;F)F

    .line 464
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lhpx;->a()V

    .line 469
    iget-object v0, p0, Lhpx;->a:Lhxq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhpx;->a:Lhxq;

    invoke-interface {v0}, Lhxq;->isMorno()Z

    move-result v0

    if-nez v0, :cond_2

    .line 470
    iget-object v0, p0, Lhpx;->a:Lhxq;

    invoke-interface {v0}, Lhxq;->getValorLimiteMax()F

    move-result v0

    iget-object v1, p0, Lhpx;->b:Lhpp;

    invoke-static {v1}, Lhpp;->l(Lhpp;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 471
    iget-object v0, p0, Lhpx;->b:Lhpp;

    iget-object v1, p0, Lhpx;->a:Lhxq;

    invoke-interface {v1}, Lhxq;->getValorLimiteMax()F

    move-result v1

    invoke-static {v0, v1}, Lhpp;->a(Lhpp;F)F

    .line 473
    :cond_0
    iget-object v0, p0, Lhpx;->b:Lhpp;

    invoke-static {v0}, Lhpp;->m(Lhpp;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhpx;->a:Lhxq;

    invoke-interface {v0}, Lhxq;->getValorLimiteMin()F

    move-result v0

    iget-object v1, p0, Lhpx;->b:Lhpp;

    invoke-static {v1}, Lhpp;->m(Lhpp;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 474
    :cond_1
    iget-object v0, p0, Lhpx;->b:Lhpp;

    iget-object v1, p0, Lhpx;->b:Lhpp;

    invoke-virtual {v1}, Lhpp;->h()Lhxq;

    move-result-object v1

    invoke-interface {v1}, Lhxq;->getValorLimiteMin()F

    move-result v1

    invoke-static {v0, v1}, Lhpp;->b(Lhpp;F)F

    .line 477
    :cond_2
    return-void
.end method
