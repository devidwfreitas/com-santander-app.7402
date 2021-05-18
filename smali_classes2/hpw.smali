.class Lhpw;
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
    .line 362
    iput-object p1, p0, Lhpw;->b:Lhpp;

    iput-object p2, p0, Lhpw;->a:Lhxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lhpw;->b:Lhpp;

    invoke-static {v0}, Lhpp;->h(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lhpw;->b:Lhpp;

    iget-object v1, p0, Lhpw;->b:Lhpp;

    invoke-static {v1}, Lhpp;->h(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getParcelaMax()I

    move-result v1

    invoke-static {v0, v1}, Lhpp;->a(Lhpp;I)I

    .line 367
    iget-object v0, p0, Lhpw;->b:Lhpp;

    iget-object v1, p0, Lhpw;->b:Lhpp;

    invoke-static {v1}, Lhpp;->h(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getParcelaMin()I

    move-result v1

    invoke-static {v0, v1}, Lhpp;->b(Lhpp;I)I

    .line 369
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lhpw;->a:Lhxq;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lhpw;->b:Lhpp;

    iget-object v1, p0, Lhpw;->a:Lhxq;

    invoke-interface {v1}, Lhxq;->getParcelaMax()I

    move-result v1

    invoke-static {v0, v1}, Lhpp;->a(Lhpp;I)I

    .line 375
    iget-object v0, p0, Lhpw;->b:Lhpp;

    iget-object v1, p0, Lhpw;->a:Lhxq;

    invoke-interface {v1}, Lhxq;->getParcelaMin()I

    move-result v1

    invoke-static {v0, v1}, Lhpp;->b(Lhpp;I)I

    .line 377
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lhpw;->b:Lhpp;

    invoke-static {v0}, Lhpp;->d(Lhpp;)Lhpc;

    move-result-object v0

    iget-object v1, p0, Lhpw;->b:Lhpp;

    invoke-static {v1}, Lhpp;->i(Lhpp;)F

    move-result v1

    invoke-virtual {v0, v1}, Lhpc;->a(F)I

    move-result v0

    .line 382
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 383
    invoke-virtual {p0}, Lhpw;->a()V

    .line 384
    iget-object v0, p0, Lhpw;->a:Lhxq;

    invoke-interface {v0}, Lhxq;->isMorno()Z

    move-result v0

    if-nez v0, :cond_2

    .line 385
    iget-object v0, p0, Lhpw;->a:Lhxq;

    invoke-interface {v0}, Lhxq;->getParcelaMax()I

    move-result v0

    iget-object v1, p0, Lhpw;->b:Lhpp;

    invoke-static {v1}, Lhpp;->j(Lhpp;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lhpw;->b:Lhpp;

    iget-object v1, p0, Lhpw;->a:Lhxq;

    invoke-interface {v1}, Lhxq;->getParcelaMax()I

    move-result v1

    invoke-static {v0, v1}, Lhpp;->a(Lhpp;I)I

    .line 388
    :cond_0
    iget-object v0, p0, Lhpw;->b:Lhpp;

    invoke-static {v0}, Lhpp;->k(Lhpp;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhpw;->a:Lhxq;

    invoke-interface {v0}, Lhxq;->getParcelaMin()I

    move-result v0

    iget-object v1, p0, Lhpw;->b:Lhpp;

    invoke-static {v1}, Lhpp;->k(Lhpp;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 389
    :cond_1
    iget-object v0, p0, Lhpw;->b:Lhpp;

    iget-object v1, p0, Lhpw;->a:Lhxq;

    invoke-interface {v1}, Lhxq;->getParcelaMin()I

    move-result v1

    invoke-static {v0, v1}, Lhpp;->b(Lhpp;I)I

    .line 397
    :cond_2
    :goto_0
    return-void

    .line 392
    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 393
    invoke-virtual {p0}, Lhpw;->b()V

    goto :goto_0

    .line 394
    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 395
    invoke-virtual {p0}, Lhpw;->a()V

    goto :goto_0
.end method
