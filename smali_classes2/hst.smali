.class Lhst;
.super Lhsz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/contacorrente/domain/Conta;

.field final synthetic b:F

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

.field final synthetic f:Lhso;

.field final synthetic g:Lhsp;


# direct methods
.method constructor <init>(Lhsp;Lhso;Lcom/santander/app/contacorrente/domain/Conta;FIILcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;Lhso;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lhst;->g:Lhsp;

    iput-object p3, p0, Lhst;->a:Lcom/santander/app/contacorrente/domain/Conta;

    iput p4, p0, Lhst;->b:F

    iput p5, p0, Lhst;->c:I

    iput p6, p0, Lhst;->d:I

    iput-object p7, p0, Lhst;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    iput-object p8, p0, Lhst;->f:Lhso;

    invoke-direct {p0, p2}, Lhsz;-><init>(Lhso;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 131
    :try_start_0
    iget-object v6, p0, Lhst;->g:Lhsp;

    new-instance v0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;

    iget-object v1, p0, Lhst;->a:Lcom/santander/app/contacorrente/domain/Conta;

    iget v2, p0, Lhst;->b:F

    iget v3, p0, Lhst;->c:I

    iget v4, p0, Lhst;->d:I

    iget-object v5, p0, Lhst;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    invoke-direct/range {v0 .. v5}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;-><init>(Lcom/santander/app/contacorrente/domain/Conta;FIILcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;)V

    invoke-static {v6, v0}, Lhsp;->a(Lhsp;Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    iget-object v0, p0, Lhst;->g:Lhsp;

    invoke-static {v0}, Lhsp;->a(Lhsp;)Lhti;

    move-result-object v0

    iget-object v1, p0, Lhst;->g:Lhsp;

    invoke-static {v1}, Lhsp;->c(Lhsp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;

    move-result-object v1

    new-instance v2, Lhsu;

    invoke-direct {v2, p0}, Lhsu;-><init>(Lhst;)V

    invoke-interface {v0, v1, v2}, Lhti;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;Lhtk;)V

    .line 152
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v1, "CPConsigRepositoryImpl"

    const-string v2, "requestSimularEmprestimo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    invoke-virtual {p0}, Lhst;->d()V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lhst;->g:Lhsp;

    new-instance v1, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;

    iget v2, p0, Lhst;->b:F

    iget v3, p0, Lhst;->c:I

    invoke-direct {v1, v2, v3}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;-><init>(FI)V

    invoke-static {v0, v1}, Lhsp;->a(Lhsp;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;

    .line 157
    iget-object v0, p0, Lhst;->g:Lhsp;

    invoke-static {v0}, Lhsp;->b(Lhsp;)Lhtp;

    move-result-object v0

    iget-object v1, p0, Lhst;->g:Lhsp;

    invoke-static {v1}, Lhsp;->d(Lhsp;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;

    move-result-object v1

    new-instance v2, Lhsv;

    invoke-direct {v2, p0}, Lhsv;-><init>(Lhst;)V

    invoke-interface {v0, v1, v2}, Lhtp;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;Lhtm;)V

    .line 170
    return-void
.end method
