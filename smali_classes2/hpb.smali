.class Lhpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhtm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhtm",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lhoz;


# direct methods
.method constructor <init>(Lhoz;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lhpb;->b:Lhoz;

    iput-object p2, p0, Lhpb;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lhpb;->b:Lhoz;

    invoke-static {v0}, Lhoz;->a(Lhoz;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->setCalculateResponse(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V

    .line 165
    invoke-virtual {p2}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->getSeguroPercentageFormatted()Ljava/lang/String;

    move-result-object v0

    .line 166
    if-nez v0, :cond_0

    .line 167
    const-string v0, "NaoElegivel"

    .line 174
    :goto_0
    const-string v1, "CreditoFinanciamento_Emprestimos_Contratacao_SeguroContratado"

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_Valor"

    invoke-virtual {p2}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->getValorEmprestimoFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_ValorParcela"

    invoke-virtual {p2}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->getValorParcelaFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_Consignado_MesPrimeiroVencimento"

    invoke-virtual {p2}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->getVencimentoFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lhpb;->b:Lhoz;

    invoke-static {v0}, Lhoz;->b(Lhoz;)Lhrl;

    move-result-object v0

    iget-object v1, p0, Lhpb;->b:Lhoz;

    invoke-static {v1}, Lhoz;->d(Lhoz;)Lhqg;

    move-result-object v1

    invoke-virtual {v1, p2}, Lhqg;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lhrl;->a(Lgvb;)V

    .line 180
    iget-object v0, p0, Lhpb;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 181
    return-void

    .line 169
    :cond_0
    const-string v1, "0,00%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const-string v0, "Nao"

    goto :goto_0

    .line 172
    :cond_1
    const-string v0, "Sim"

    goto :goto_0
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    check-cast p2, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;

    invoke-virtual {p0, p1, p2}, Lhpb;->a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;)V

    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 3

    .prologue
    .line 185
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->canShowMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;

    invoke-direct {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;-><init>()V

    .line 187
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->setMessageErrorRetorno(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lhpb;->b:Lhoz;

    invoke-static {v1}, Lhoz;->a(Lhoz;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->setCalculateResponse(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V

    .line 189
    iget-object v1, p0, Lhpb;->b:Lhoz;

    invoke-static {v1}, Lhoz;->b(Lhoz;)Lhrl;

    move-result-object v1

    iget-object v2, p0, Lhpb;->b:Lhoz;

    invoke-static {v2}, Lhoz;->d(Lhoz;)Lhqg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lhqg;->b(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Lgvb;

    move-result-object v0

    invoke-interface {v1, v0}, Lhrl;->a(Lgvb;)V

    .line 193
    :goto_0
    iget-object v0, p0, Lhpb;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 194
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lhpb;->b:Lhoz;

    invoke-static {v0}, Lhoz;->b(Lhoz;)Lhrl;

    move-result-object v0

    iget-object v1, p0, Lhpb;->b:Lhoz;

    invoke-static {v1}, Lhoz;->c(Lhoz;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09043f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhrl;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
