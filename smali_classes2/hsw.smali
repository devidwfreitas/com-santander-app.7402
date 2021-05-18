.class Lhsw;
.super Lhsz;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lhso;

.field final synthetic c:Lhsp;


# direct methods
.method constructor <init>(Lhsp;Lhso;ZLhso;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lhsw;->c:Lhsp;

    iput-boolean p3, p0, Lhsw;->a:Z

    iput-object p4, p0, Lhsw;->b:Lhso;

    invoke-direct {p0, p2}, Lhsz;-><init>(Lhso;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lhsw;->c:Lhsp;

    invoke-static {v0}, Lhsp;->c(Lhsp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    const-string v0, "CPConsigRepositoryImpl"

    const-string v1, "simularEmprestimo"

    new-instance v2, Lhou;

    invoke-direct {v2}, Lhou;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    invoke-virtual {p0}, Lhsw;->d()V

    .line 202
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lhsw;->c:Lhsp;

    invoke-static {v0}, Lhsp;->c(Lhsp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;

    move-result-object v0

    iget-boolean v1, p0, Lhsw;->a:Z

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->setSeguro(Z)V

    .line 188
    iget-object v0, p0, Lhsw;->c:Lhsp;

    invoke-static {v0}, Lhsp;->a(Lhsp;)Lhti;

    move-result-object v0

    iget-object v1, p0, Lhsw;->c:Lhsp;

    invoke-static {v1}, Lhsp;->c(Lhsp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;

    move-result-object v1

    new-instance v2, Lhsx;

    invoke-direct {v2, p0}, Lhsx;-><init>(Lhsw;)V

    invoke-interface {v0, v1, v2}, Lhti;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;Lhtk;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lhsw;->c:Lhsp;

    invoke-static {v0}, Lhsp;->d(Lhsp;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 207
    const-string v0, "CPConsigRepositoryImpl"

    const-string v1, "simularEmprestimo"

    new-instance v2, Lhou;

    invoke-direct {v2}, Lhou;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    invoke-virtual {p0}, Lhsw;->d()V

    .line 225
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lhsw;->c:Lhsp;

    invoke-static {v0}, Lhsp;->d(Lhsp;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;

    move-result-object v0

    iget-boolean v1, p0, Lhsw;->a:Z

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;->setSecureFlag(Z)V

    .line 212
    iget-object v0, p0, Lhsw;->c:Lhsp;

    invoke-static {v0}, Lhsp;->b(Lhsp;)Lhtp;

    move-result-object v0

    iget-object v1, p0, Lhsw;->c:Lhsp;

    invoke-static {v1}, Lhsp;->d(Lhsp;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;

    move-result-object v1

    new-instance v2, Lhsy;

    invoke-direct {v2, p0}, Lhsy;-><init>(Lhsw;)V

    invoke-interface {v0, v1, v2}, Lhtp;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;Lhtm;)V

    goto :goto_0
.end method
