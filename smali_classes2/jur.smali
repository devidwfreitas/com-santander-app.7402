.class public Ljur;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Ljur;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lamx;)V
    .locals 0

    .prologue
    .line 178
    check-cast p1, Lgmw;

    invoke-virtual {p0, p1}, Ljur;->a(Lgmw;)V

    return-void
.end method

.method public bridge synthetic a(Land;)V
    .locals 0

    .prologue
    .line 178
    check-cast p1, Lgmx;

    invoke-virtual {p0, p1}, Ljur;->a(Lgmx;)V

    return-void
.end method

.method public a(Lgmw;)V
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p1}, Lgmw;->e()Lghu;

    move-result-object v0

    .line 189
    iget-object v1, p0, Ljur;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-static {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->d(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Ljwb;

    move-result-object v1

    invoke-interface {v1, v0}, Ljwb;->a(Lghu;)V

    .line 190
    const-string v0, "Pagamentos_Pagamento_Acao"

    const-string v1, "SelecionarContaOrigem"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public a(Lgmx;)V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p1}, Lgmx;->f()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v0

    .line 182
    iget-object v1, p0, Ljur;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-static {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->d(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Ljwb;

    move-result-object v1

    invoke-interface {v1, v0}, Ljwb;->a(Lcom/santander/app/contacorrente/domain/Conta;)V

    .line 183
    const-string v0, "Pagamentos_Pagamento_Acao"

    const-string v1, "SelecionarContaOrigem"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method
