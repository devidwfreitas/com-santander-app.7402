.class public Ljuz;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Ljuz;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lamx;)V
    .locals 0

    .prologue
    .line 204
    check-cast p1, Lgmw;

    invoke-virtual {p0, p1}, Ljuz;->a(Lgmw;)V

    return-void
.end method

.method public bridge synthetic a(Land;)V
    .locals 0

    .prologue
    .line 204
    check-cast p1, Lgmx;

    invoke-virtual {p0, p1}, Ljuz;->a(Lgmx;)V

    return-void
.end method

.method public a(Lgmw;)V
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p1}, Lgmw;->e()Lghu;

    move-result-object v0

    .line 216
    iget-object v1, p0, Ljuz;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Ljvz;

    move-result-object v1

    invoke-interface {v1, v0}, Ljvz;->a(Lghu;)V

    .line 217
    iget-object v0, p0, Ljuz;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Ljvz;

    move-result-object v0

    invoke-interface {v0, p1}, Ljvz;->a(Ljava/lang/Object;)V

    .line 218
    const-string v0, "Pagamentos_Pagamento_Acao"

    const-string v1, "SelecionarContaOrigem"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public a(Lgmx;)V
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p1}, Lgmx;->f()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v0

    .line 208
    iget-object v1, p0, Ljuz;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Ljvz;

    move-result-object v1

    invoke-interface {v1, v0}, Ljvz;->a(Lcom/santander/app/contacorrente/domain/Conta;)V

    .line 209
    iget-object v0, p0, Ljuz;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Ljvz;

    move-result-object v0

    invoke-interface {v0, p1}, Ljvz;->a(Ljava/lang/Object;)V

    .line 210
    const-string v0, "Pagamentos_Pagamento_Acao"

    const-string v1, "SelecionarContaOrigem"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method
