.class Lhsq;
.super Lhsz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/contacorrente/domain/Conta;

.field final synthetic b:Lhso;

.field final synthetic c:Lhsp;


# direct methods
.method constructor <init>(Lhsp;Lhso;Lcom/santander/app/contacorrente/domain/Conta;Lhso;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lhsq;->c:Lhsp;

    iput-object p3, p0, Lhsq;->a:Lcom/santander/app/contacorrente/domain/Conta;

    iput-object p4, p0, Lhsq;->b:Lhso;

    invoke-direct {p0, p2}, Lhsz;-><init>(Lhso;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 61
    :try_start_0
    new-instance v0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteRequest;

    iget-object v1, p0, Lhsq;->a:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteRequest;-><init>(Lcom/santander/app/contacorrente/domain/Conta;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    iget-object v1, p0, Lhsq;->c:Lhsp;

    invoke-static {v1}, Lhsp;->a(Lhsp;)Lhti;

    move-result-object v1

    new-instance v2, Lhsr;

    invoke-direct {v2, p0}, Lhsr;-><init>(Lhsq;)V

    invoke-interface {v1, v0, v2}, Lhti;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteRequest;Lhtk;)V

    .line 82
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v1, "CPConsigRepositoryImpl"

    const-string v2, "consultarLimite"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    invoke-virtual {p0}, Lhsq;->d()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lhsq;->c:Lhsp;

    invoke-static {v0}, Lhsp;->b(Lhsp;)Lhtp;

    move-result-object v0

    new-instance v1, Lhss;

    invoke-direct {v1, p0}, Lhss;-><init>(Lhsq;)V

    invoke-interface {v0, v1}, Lhtp;->a(Lgkw;)V

    .line 114
    return-void
.end method
