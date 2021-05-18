.class public Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private codigoAgencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoAgenciaUG:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoBancoUG:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoCliente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoCondalte:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoContratoUG:Ljava/lang/String;
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

.field private codigoRenegociacao:Ljava/lang/String;
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

.field private diaDebitoParcela:Ljava/lang/String;
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

.field private identNovoPrazo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private indFluxoProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroControle:Ljava/lang/String;
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

.field private referOper:Ljava/lang/String;
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

.field private tipoSeguro:Ljava/lang/String;
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
.method public constructor <init>(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V
    .locals 4

    .prologue
    .line 153
    move-object v0, p1

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    invoke-direct {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;-><init>(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;)V

    .line 154
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 155
    new-instance v1, Lnaf;

    invoke-direct {v1}, Lnaf;-><init>()V

    .line 157
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getConta()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->setConta(Ljava/lang/String;)V

    .line 159
    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->setTokenSessao(Ljava/lang/String;)V

    .line 160
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->setTokenTransacao(Ljava/lang/String;)V

    .line 161
    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->setConnUuid(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->codigoAgencia:Ljava/lang/String;

    .line 163
    return-void
.end method

.method private constructor <init>(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 166
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->consultarLimiteResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    iget-object v0, v0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->bancoAgenciaContrUG:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->codigoAgenciaUG:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->consultarLimiteResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    iget-object v0, v0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->bancoAgenciaContrUG:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->codigoBancoUG:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->codigoCliente:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->codigoCliente:Ljava/lang/String;

    .line 169
    iput-object v3, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->codigoCondalte:Ljava/lang/String;

    .line 170
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->consultarLimiteResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    iget-object v0, v0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->bancoAgenciaContrUG:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->codigoContratoUG:Ljava/lang/String;

    .line 171
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getCodigoEvento()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->codigoEvento:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->codigoProduto:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->codigoProduto:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->codigoProduto:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->codigoRenegociacao:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->codigoSubProduto:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->codigoSubProduto:Ljava/lang/String;

    .line 175
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getCodigoTarifa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->codigoTarifa:Ljava/lang/String;

    .line 176
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->codigoTransacao:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->codigoTransacao:Ljava/lang/String;

    .line 177
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->dataAprovacaoLimite:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->dataAprovacaoLimite:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->dataContabil:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->dataContabil:Ljava/lang/String;

    .line 179
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->dataOferta:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->dataOferta:Ljava/lang/String;

    .line 180
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getDataPrimeiroVencimento()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->dataPrimeiroVencimento:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->dataSolicitacao:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->dataSolicitacao:Ljava/lang/String;

    .line 182
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getDataUltimoVencimento()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->dataUltimoVencimento:Ljava/lang/String;

    .line 183
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getDataPrimeiroVencimento()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->diaDebitoParcela:Ljava/lang/String;

    .line 184
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->horaSolicitacao:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->horaSolicitacao:Ljava/lang/String;

    .line 185
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->idSolicitacao:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->idSolicitacao:Ljava/lang/String;

    .line 186
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->idTransacaoPositiva:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->idTransacaoPositiva:Ljava/lang/String;

    .line 187
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->idTransacaoVendedora:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->idTransacaoVendedora:Ljava/lang/String;

    .line 188
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->idadeMaxSeguro:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->idadeMaxSeguro:Ljava/lang/String;

    .line 189
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->idadeMinSeguro:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->idadeMinSeguro:Ljava/lang/String;

    .line 190
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->indFluxoProduto:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->identNovoPrazo:Ljava/lang/String;

    .line 191
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->indFluxoProduto:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->indFluxoProduto:Ljava/lang/String;

    .line 192
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->numeroControle:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->numeroControle:Ljava/lang/String;

    .line 193
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getQuantidadeParcela()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->quantidadeParcela:Ljava/lang/String;

    .line 194
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getQuantidadePrazoMax()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->quantidadePrazoMax:Ljava/lang/String;

    .line 195
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getQuantidadePrazoMin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->quantidadePrazoMin:Ljava/lang/String;

    .line 196
    iput-object v3, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->referOper:Ljava/lang/String;

    .line 197
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getTaxaCETAno()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->taxaCETAno:Ljava/lang/String;

    .line 198
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getTaxaCETMes()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->taxaCETMes:Ljava/lang/String;

    .line 199
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getTaxaInadimplencia()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->taxaInadimplencia:Ljava/lang/String;

    .line 200
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getTaxaJurosAno()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->taxaJurosAno:Ljava/lang/String;

    .line 201
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getTaxaJurosMes()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->taxaJurosMes:Ljava/lang/String;

    .line 202
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getTaxaMora()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->taxaMora:Ljava/lang/String;

    .line 203
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->tipoSeguro:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->tipoSeguro:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getTipoTaxa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->tipoTaxa:Ljava/lang/String;

    .line 205
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorCPMF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorCPMF:Ljava/lang/String;

    .line 206
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->valorCoberturaSeguro:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorCoberturaSeguro:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorComissaoDisponivelLimite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorComissaoDisponivelLimite:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->valorDesejado:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorDesejado:Ljava/lang/String;

    .line 209
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorDespesa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorDespesa:Ljava/lang/String;

    .line 210
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorEmprestimo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorEmprestimo:Ljava/lang/String;

    .line 211
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorIOF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorIOF:Ljava/lang/String;

    .line 212
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorIOFSemSeguro()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorIOFSemSeguro:Ljava/lang/String;

    .line 213
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->valorLimiteRisco:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorLimiteRisco:Ljava/lang/String;

    .line 214
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->valorMinimoOperacao:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorMinimoOperacao:Ljava/lang/String;

    .line 215
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->valorMinimoParcela:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorMinimoParcela:Ljava/lang/String;

    .line 216
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorParcela()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorParcela:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorParcelaSemSeguro()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorParcelaSemSeguro:Ljava/lang/String;

    .line 218
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorPremioSeguro()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorPremioSeguro:Ljava/lang/String;

    .line 219
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->valorSaldoLiquido:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorSaldoLiquido:Ljava/lang/String;

    .line 220
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorTME()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorTME:Ljava/lang/String;

    .line 221
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorTMESemSeguro()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorTMESemSeguro:Ljava/lang/String;

    .line 222
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorTarifaContratacao()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorTarifaContratacao:Ljava/lang/String;

    .line 223
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorTotalComEncargos()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorTotalComEncargos:Ljava/lang/String;

    .line 224
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorTotalFinanciamento()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorTotalFinanciamento:Ljava/lang/String;

    .line 225
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorTotalFinanciamentoSemSeguro()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorTotalFinanciamentoSemSeguro:Ljava/lang/String;

    .line 226
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->valorTroco:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorTroco:Ljava/lang/String;

    .line 227
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->valorTrocoMaximo:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorTrocoMaximo:Ljava/lang/String;

    .line 228
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->valorTrocoMinimo:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;->valorTrocoMinimo:Ljava/lang/String;

    .line 229
    return-void
.end method
