.class public Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private codigoEvento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoTarifa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataPrimeiroVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataUltimoVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private quantidadeParcela:Ljava/lang/String;
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

.field private taxaInadimplencia:Ljava/lang/String;
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

.field private valorComissaoDisponivelLimite:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorDespesa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorEmprestimo:Ljava/lang/String;
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

.field private valorParcela:Ljava/lang/String;
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

.field private valorTME:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTMESemSeguro:Ljava/lang/String;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodigoEvento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->codigoEvento:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoTarifa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->codigoTarifa:Ljava/lang/String;

    return-object v0
.end method

.method public getDataPrimeiroVencimento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->dataPrimeiroVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUltimoVencimento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->dataUltimoVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantidadeParcela()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->quantidadeParcela:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantidadePrazoMax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->quantidadePrazoMax:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantidadePrazoMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->quantidadePrazoMin:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxaCETAno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->taxaCETAno:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxaCETMes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->taxaCETMes:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxaInadimplencia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->taxaInadimplencia:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxaJurosAno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->taxaJurosAno:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxaJurosMes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->taxaJurosMes:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxaMora()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->taxaMora:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoTaxa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->tipoTaxa:Ljava/lang/String;

    return-object v0
.end method

.method public getValorCPMF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorCPMF:Ljava/lang/String;

    return-object v0
.end method

.method public getValorComissaoDisponivelLimite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorComissaoDisponivelLimite:Ljava/lang/String;

    return-object v0
.end method

.method public getValorDespesa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorDespesa:Ljava/lang/String;

    return-object v0
.end method

.method public getValorEmprestimo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorEmprestimo:Ljava/lang/String;

    return-object v0
.end method

.method public getValorIOF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorIOF:Ljava/lang/String;

    return-object v0
.end method

.method public getValorIOFSemSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorIOFSemSeguro:Ljava/lang/String;

    return-object v0
.end method

.method public getValorParcela()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorParcela:Ljava/lang/String;

    return-object v0
.end method

.method public getValorParcelaSemSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorParcelaSemSeguro:Ljava/lang/String;

    return-object v0
.end method

.method public getValorPremioSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorPremioSeguro:Ljava/lang/String;

    return-object v0
.end method

.method public getValorTME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorTME:Ljava/lang/String;

    return-object v0
.end method

.method public getValorTMESemSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorTMESemSeguro:Ljava/lang/String;

    return-object v0
.end method

.method public getValorTarifaContratacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorTarifaContratacao:Ljava/lang/String;

    return-object v0
.end method

.method public getValorTotalComEncargos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorTotalComEncargos:Ljava/lang/String;

    return-object v0
.end method

.method public getValorTotalFinanciamento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorTotalFinanciamento:Ljava/lang/String;

    return-object v0
.end method

.method public getValorTotalFinanciamentoSemSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->valorTotalFinanciamentoSemSeguro:Ljava/lang/String;

    return-object v0
.end method
