.class public Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;


# instance fields
.field private bankAutentication:Ljava/lang/String;
    .annotation runtime Leks;
        a = "bankAutentication"
    .end annotation
.end field

.field private contractDate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "contractDate"
    .end annotation
.end field

.field private contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

.field private id:Ljava/lang/String;
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field private messageErrorRetorno:Ljava/lang/String;
    .annotation runtime Leks;
        a = "messageErrorRetorno"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMessageErrorRetorno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->messageErrorRetorno:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAutenticacaoBancaria()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->bankAutentication:Ljava/lang/String;

    return-object v0
.end method

.method public getConta()Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getConta()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v0

    return-object v0
.end method

.method public getDataHoraSolicitacao()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contractDate:Ljava/lang/String;

    invoke-static {v0}, Lhyx;->d(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 127
    const-string v1, "dd/MM/yyyy - HH:mm"

    invoke-static {v1}, Lhyx;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v0, ""

    goto :goto_0
.end method

.method public getDiaPagamentoFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getDiaPagamentoFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontePagadoraFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getFontePagadoraFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIofFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getIofFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIofPercentageFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getIofPercentageFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJurosMoratorioFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getJurosMoratorioFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLiberadoPercentageFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getLiberadoPercentageFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->getMessageErrorRetorno()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultaMoratorioFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getMultaMoratorioFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumeroContratoFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelaFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getParcelaFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeguroPercentageFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getSeguroPercentageFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaCETBreakLineFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaCETBreakLineFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaCETFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaCETFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaJurosBreakLineFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaJurosBreakLineFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaJurosFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaJurosFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaJurosFormatted(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0, p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaJurosFormatted(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaJurosMesCustomerFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaJurosMesCustomerFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPagarFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTotalPagarFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPercentageFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTotalPercentageFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getType()I

    move-result v0

    return v0
.end method

.method public getTypeSecure()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTypeSecure()I

    move-result v0

    return v0
.end method

.method public getUltimoVencimentoFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getUltimoVencimentoFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorEmprestimoFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorEmprestimoFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorEntregueFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorEntregueFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorParcelaFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorParcelaFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorPremioSeguroCP()F
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorPremioSeguroCP()F

    move-result v0

    return v0
.end method

.method public getValorPremioSeguroFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorPremioSeguroFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorPremioSeguroPrestamista()F
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorPremioSeguroPrestamista()F

    move-result v0

    return v0
.end method

.method public getValorTotalComEncargosFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorTotalComEncargosFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorTotalContractsFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const-string v0, ""

    return-object v0
.end method

.method public getValorTotalRefinFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-string v0, ""

    return-object v0
.end method

.method public getVencimentoFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getVencimentoFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRefinanciamento()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->isRefinanciamento()Z

    move-result v0

    return v0
.end method

.method public setCalculateResponse(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->contratacao:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    .line 41
    return-void
.end method

.method public setMessageErrorRetorno(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;->messageErrorRetorno:Ljava/lang/String;

    .line 37
    return-void
.end method
