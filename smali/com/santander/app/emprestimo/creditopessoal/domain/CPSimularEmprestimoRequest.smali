.class public Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;
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

.field private tipoCondalte:Ljava/lang/String;
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
.method public constructor <init>(Lcom/santander/app/contacorrente/domain/Conta;FIILcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;)V
    .locals 2

    .prologue
    .line 157
    invoke-direct {p0, p5}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;-><init>(Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;)V

    .line 159
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 160
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->setConta(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->codigoAgencia:Ljava/lang/String;

    .line 162
    if-lez p4, :cond_0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->diaDebitoParcela:Ljava/lang/String;

    .line 163
    if-lez p3, :cond_1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->quantidadeParcela:Ljava/lang/String;

    .line 164
    invoke-static {p2}, Lhyx;->a(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorEmprestimo:Ljava/lang/String;

    .line 165
    invoke-static {p2}, Lhyx;->a(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorDesejado:Ljava/lang/String;

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->setSeguro(Z)V

    .line 168
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->setConnUuid(Ljava/lang/String;)V

    .line 170
    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->setTokenSessao(Ljava/lang/String;)V

    .line 171
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->setTokenTransacao(Ljava/lang/String;)V

    .line 172
    return-void

    .line 162
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 163
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private constructor <init>(Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 175
    iput-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->codigoAgenciaUG:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->codigoBancoUG:Ljava/lang/String;

    .line 177
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->codigoCliente:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->codigoCliente:Ljava/lang/String;

    .line 178
    iput-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->codigoCondalte:Ljava/lang/String;

    .line 179
    iput-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->codigoContratoUG:Ljava/lang/String;

    .line 180
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->codigoEvento:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->codigoEvento:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->codigoProduto:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->codigoProduto:Ljava/lang/String;

    .line 182
    iput-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->codigoRenegociacao:Ljava/lang/String;

    .line 183
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->codigoSubProduto:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->codigoSubProduto:Ljava/lang/String;

    .line 184
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->codigoTarifa:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->codigoTarifa:Ljava/lang/String;

    .line 185
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->codigoTransacao:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->codigoTransacao:Ljava/lang/String;

    .line 186
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->dataAprovacaoLimite:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->dataAprovacaoLimite:Ljava/lang/String;

    .line 187
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->dataContabil:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->dataContabil:Ljava/lang/String;

    .line 188
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->dataOferta:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->dataOferta:Ljava/lang/String;

    .line 189
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->dataPrimeiroVencimento:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->dataPrimeiroVencimento:Ljava/lang/String;

    .line 190
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->dataSolicitacao:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->dataSolicitacao:Ljava/lang/String;

    .line 191
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->dataUltimoVencimento:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->dataUltimoVencimento:Ljava/lang/String;

    .line 192
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->horaSolicitacao:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->horaSolicitacao:Ljava/lang/String;

    .line 193
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->idSolicitacao:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->idSolicitacao:Ljava/lang/String;

    .line 194
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->idTransacaoPositiva:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->idTransacaoPositiva:Ljava/lang/String;

    .line 195
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->idTransacaoVendedora:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->idTransacaoVendedora:Ljava/lang/String;

    .line 196
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->idadeMaxSeguro:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->idadeMaxSeguro:Ljava/lang/String;

    .line 197
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->idadeMinSeguro:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->idadeMinSeguro:Ljava/lang/String;

    .line 198
    iput-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->identNovoPrazo:Ljava/lang/String;

    .line 199
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->indFluxoProduto:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->indFluxoProduto:Ljava/lang/String;

    .line 200
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->numeroControle:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->numeroControle:Ljava/lang/String;

    .line 201
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->quantidadePrazoMax:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->quantidadePrazoMax:Ljava/lang/String;

    .line 202
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->quantidadePrazoMin:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->quantidadePrazoMin:Ljava/lang/String;

    .line 203
    iput-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->referOper:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->taxaCETAno:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->taxaCETAno:Ljava/lang/String;

    .line 205
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->taxaCETMes:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->taxaCETMes:Ljava/lang/String;

    .line 206
    iput-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->taxaInadimplencia:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->taxaJurosAno:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->taxaJurosAno:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->taxaJurosMes:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->taxaJurosMes:Ljava/lang/String;

    .line 209
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->taxaMora:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->taxaMora:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->tipoCondalte:Ljava/lang/String;

    .line 211
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->tipoTaxa:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->tipoTaxa:Ljava/lang/String;

    .line 212
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorCPMF:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorCPMF:Ljava/lang/String;

    .line 213
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorCoberturaSeguro:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorCoberturaSeguro:Ljava/lang/String;

    .line 214
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorComissaoDisponivelLimite:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorComissaoDisponivelLimite:Ljava/lang/String;

    .line 215
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorDesejado:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorDesejado:Ljava/lang/String;

    .line 216
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorDespesa:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorDespesa:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorIOF:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorIOF:Ljava/lang/String;

    .line 218
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorIOFSemSeguro:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorIOFSemSeguro:Ljava/lang/String;

    .line 219
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorLimiteRisco:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorLimiteRisco:Ljava/lang/String;

    .line 220
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorMinimoOperacao:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorMinimoOperacao:Ljava/lang/String;

    .line 221
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorMinimoParcela:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorMinimoParcela:Ljava/lang/String;

    .line 222
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorParcela:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorParcela:Ljava/lang/String;

    .line 223
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorParcelaSemSeguro:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorParcelaSemSeguro:Ljava/lang/String;

    .line 224
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorPremioSeguro:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorPremioSeguro:Ljava/lang/String;

    .line 225
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorSaldoLiquido:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorSaldoLiquido:Ljava/lang/String;

    .line 226
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorTME:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorTME:Ljava/lang/String;

    .line 227
    iput-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorTMESemSeguro:Ljava/lang/String;

    .line 228
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorTarifaContratacao:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorTarifaContratacao:Ljava/lang/String;

    .line 229
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorTotalComEncargos:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorTotalComEncargos:Ljava/lang/String;

    .line 230
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorTotalFinanciamento:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorTotalFinanciamento:Ljava/lang/String;

    .line 231
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorTotalFinanciamentoSemSeguro:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorTotalFinanciamentoSemSeguro:Ljava/lang/String;

    .line 232
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorTroco:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorTroco:Ljava/lang/String;

    .line 233
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorTrocoMaximo:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorTrocoMaximo:Ljava/lang/String;

    .line 234
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->valorTrocoMinimo:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->valorTrocoMinimo:Ljava/lang/String;

    .line 235
    return-void
.end method


# virtual methods
.method public setSeguro(Z)V
    .locals 1

    .prologue
    .line 238
    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;->tipoSeguro:Ljava/lang/String;

    .line 239
    return-void

    .line 238
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
