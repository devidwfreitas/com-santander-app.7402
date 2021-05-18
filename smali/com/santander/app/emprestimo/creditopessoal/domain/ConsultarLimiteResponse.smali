.class public Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Lhxv;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private bancoAgenciaContrUG:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoCliente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoEvento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoSubProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoTarifa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private conta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataAprovacaoLimite:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataContabil:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataOferta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataPrimeiroVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataSolicitacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataUltimoVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private horaSolicitacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private idSolicitacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private idTransacaoPositiva:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private idTransacaoVendedora:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private idadeMaxSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private idadeMinSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private indFluxoProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private mensagemRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroControle:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private quantidadePrazoMax:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private quantidadePrazoMin:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaCETAno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaCETMes:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaJurosAno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaJurosMes:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaMora:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoTaxa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorCPMF:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorCoberturaSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorComissaoDisponivelLimite:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorDesejado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorDespesa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorIOF:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorIOFSemSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorLimiteRisco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorMinimoOperacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorMinimoParcela:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorParcelaSemSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorPremioSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorSaldoLiquido:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTME:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTarifaContratacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTotalComEncargos:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTotalFinanciamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTotalFinanciamentoSemSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTroco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTrocoMaximo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTrocoMinimo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public getBancoAgenciaContrUG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->bancoAgenciaContrUG:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->codigoCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoEvento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->codigoEvento:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoProduto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->codigoProduto:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoRetorno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->codigoRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoSubProduto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->codigoSubProduto:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoTarifa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->codigoTarifa:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoTransacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->codigoTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public getConta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->conta:Ljava/lang/String;

    return-object v0
.end method

.method public getDataAprovacaoLimite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->dataAprovacaoLimite:Ljava/lang/String;

    return-object v0
.end method

.method public getDataContabil()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->dataContabil:Ljava/lang/String;

    return-object v0
.end method

.method public getDataOferta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->dataOferta:Ljava/lang/String;

    return-object v0
.end method

.method public getDataPrimeiroVencimento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->dataPrimeiroVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSolicitacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->dataSolicitacao:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUltimoVencimento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->dataUltimoVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public getHoraSolicitacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->horaSolicitacao:Ljava/lang/String;

    return-object v0
.end method

.method public getIdSolicitacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->idSolicitacao:Ljava/lang/String;

    return-object v0
.end method

.method public getIdTransacaoPositiva()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->idTransacaoPositiva:Ljava/lang/String;

    return-object v0
.end method

.method public getIdTransacaoVendedora()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->idTransacaoVendedora:Ljava/lang/String;

    return-object v0
.end method

.method public getIdadeMaxSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->idadeMaxSeguro:Ljava/lang/String;

    return-object v0
.end method

.method public getIdadeMinSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->idadeMinSeguro:Ljava/lang/String;

    return-object v0
.end method

.method public getIndFluxoProduto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->indFluxoProduto:Ljava/lang/String;

    return-object v0
.end method

.method public getMensagemRetorno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->mensagemRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroControle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->numeroControle:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantidadePrazoMax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->quantidadePrazoMax:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantidadePrazoMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->quantidadePrazoMin:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxaCETAno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->taxaCETAno:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxaCETMes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->taxaCETMes:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxaJurosAno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->taxaJurosAno:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxaJurosMes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->taxaJurosMes:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxaMora()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->taxaMora:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoTaxa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->tipoTaxa:Ljava/lang/String;

    return-object v0
.end method

.method public getValorCPMF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorCPMF:Ljava/lang/String;

    return-object v0
.end method

.method public getValorCoberturaSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorCoberturaSeguro:Ljava/lang/String;

    return-object v0
.end method

.method public getValorComissaoDisponivelLimite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorComissaoDisponivelLimite:Ljava/lang/String;

    return-object v0
.end method

.method public getValorDesejado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorDesejado:Ljava/lang/String;

    return-object v0
.end method

.method public getValorDespesa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorDespesa:Ljava/lang/String;

    return-object v0
.end method

.method public getValorIOF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorIOF:Ljava/lang/String;

    return-object v0
.end method

.method public getValorIOFSemSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorIOFSemSeguro:Ljava/lang/String;

    return-object v0
.end method

.method public getValorLimiteRisco()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorLimiteRisco:Ljava/lang/String;

    return-object v0
.end method

.method public getValorMinimoOperacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorMinimoOperacao:Ljava/lang/String;

    return-object v0
.end method

.method public getValorMinimoParcela()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorMinimoParcela:Ljava/lang/String;

    return-object v0
.end method

.method public getValorParcelaSemSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorParcelaSemSeguro:Ljava/lang/String;

    return-object v0
.end method

.method public getValorPremioSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorPremioSeguro:Ljava/lang/String;

    return-object v0
.end method

.method public getValorSaldoLiquido()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorSaldoLiquido:Ljava/lang/String;

    return-object v0
.end method

.method public getValorTME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorTME:Ljava/lang/String;

    return-object v0
.end method

.method public getValorTarifaContratacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorTarifaContratacao:Ljava/lang/String;

    return-object v0
.end method

.method public getValorTotalComEncargos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorTotalComEncargos:Ljava/lang/String;

    return-object v0
.end method

.method public getValorTotalFinanciamento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorTotalFinanciamento:Ljava/lang/String;

    return-object v0
.end method

.method public getValorTotalFinanciamentoSemSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorTotalFinanciamentoSemSeguro:Ljava/lang/String;

    return-object v0
.end method

.method public getValorTroco()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorTroco:Ljava/lang/String;

    return-object v0
.end method

.method public getValorTrocoMaximo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorTrocoMaximo:Ljava/lang/String;

    return-object v0
.end method

.method public getValorTrocoMinimo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultarLimiteResponse;->valorTrocoMinimo:Ljava/lang/String;

    return-object v0
.end method
