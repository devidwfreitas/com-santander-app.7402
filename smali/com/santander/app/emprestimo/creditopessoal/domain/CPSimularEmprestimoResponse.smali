.class public Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;
.implements Lhxm;
.implements Lhxv;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field protected bancoAgenciaContrUG:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected codigoCliente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected codigoProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected codigoRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected codigoSubProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected codigoTarifa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected codigoTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected consultarLimiteResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

.field protected conta:Lcom/santander/app/contacorrente/domain/Conta;

.field protected dataAprovacaoLimite:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected dataContabil:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected dataOferta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected dataPrimeiroVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected dataSolicitacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected dataUltimoVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected diaDebitoFinanceiro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected diaPagamentoSelecionado:Ljava/lang/String;

.field protected horaSolicitacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected idSolicitacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected idTransacaoPositiva:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected idTransacaoVendedora:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected idadeMaxSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected idadeMinSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected identificacaoNovoPrazo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected indFluxoProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected mensagemRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected numeroControle:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected porcetPremioSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected porcetValorIof:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected porcetValorLiberado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected porcetValorTotalDevido:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected quantidadeParcelas:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected quantidadePrazoMax:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected quantidadePrazoMin:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected taxaCETAno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected taxaCETMes:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected taxaInadiplencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected taxaJurosAno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected taxaJurosMes:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected taxaMora:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected telaAlternativa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected tipoSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected tipoTaxa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorCPMF:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorCoberturaSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorComissaoDisponivelLimite:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorDesejado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorDespesa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorDisponivel:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorIOF:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorIOFSemSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field valorLimiteRisco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorMinimoOperacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorMinimoParcela:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorParcela:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorParcelaSemSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorPremioSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorSaldoLiquido:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorTME:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorTarifaContratacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorTotalComEncargos:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorTotalFinanciamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorTotalFinanciamentoSemSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorTotalTMESemSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorTroco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorTrocoMaximo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valorTrocoMinimo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method

.method private getTaxaCETFormatted(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getTaxaCETMes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, " a.m. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    if-eqz p1, :cond_0

    .line 535
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getTaxaCETAno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v1, " a.a."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAutenticacaoBancaria()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    const-string v0, ""

    return-object v0
.end method

.method public getCodigoRetorno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->codigoRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public getConta()Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->conta:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method public getDataHoraSolicitacao()Ljava/lang/String;
    .locals 4

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->dataSolicitacao:Ljava/lang/String;

    const-string v2, "."

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->horaSolicitacao:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiaPagamentoFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getDiaPagamentoSelecionado()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiaPagamentoSelecionado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->diaPagamentoSelecionado:Ljava/lang/String;

    return-object v0
.end method

.method public getFontePagadoraFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    const-string v0, ""

    return-object v0
.end method

.method public getIof()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorIOF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIofFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getIof()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIofPercentageFormatted()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->porcetValorIof:Ljava/lang/String;

    invoke-static {v3, v4}, Lhyx;->a(Ljava/lang/String;I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJurosMoratorioFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    const-string v0, ""

    return-object v0
.end method

.method public getLiberadoPercentageFormatted()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->porcetValorLiberado:Ljava/lang/String;

    invoke-static {v3, v4}, Lhyx;->a(Ljava/lang/String;I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMensagemRetorno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->mensagemRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    const-string v0, ""

    return-object v0
.end method

.method public getMultaMoratorioFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    const-string v0, ""

    return-object v0
.end method

.method public getNumeroContratoFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    const-string v0, ""

    return-object v0
.end method

.method public getParcela()I
    .locals 1

    .prologue
    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getQuantidadeParcela()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 284
    :goto_0
    return v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParcelaFormatted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getParcela()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParcelaMax()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getQuantidadePrazoMax()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getParcelaMin()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getQuantidadePrazoMin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSeguroPercentageFormatted()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->porcetPremioSeguro:Ljava/lang/String;

    invoke-static {v3, v4}, Lhyx;->a(Ljava/lang/String;I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaCETAno()Ljava/lang/String;
    .locals 5

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    .line 342
    invoke-virtual {v4}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getTaxaCETAno()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhyx;->b(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    .line 341
    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaCETBreakLineFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getTaxaCETFormatted(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaCETFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getTaxaCETFormatted(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaCETMes()Ljava/lang/String;
    .locals 5

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    .line 335
    invoke-virtual {v4}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getTaxaCETMes()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhyx;->b(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    .line 334
    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaJurosAno()Ljava/lang/String;
    .locals 6

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    .line 356
    invoke-virtual {v4}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getTaxaJurosAno()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v4, v5}, Lhyx;->a(Ljava/lang/String;I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    .line 355
    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaJurosBreakLineFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getTaxaJurosFormatted(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaJurosFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getTaxaJurosFormatted(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaJurosFormatted(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getTaxaJurosMes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v1, " a.m. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    if-eqz p1, :cond_0

    .line 523
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getTaxaJurosAno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string v1, " a.a."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaJurosMes()Ljava/lang/String;
    .locals 6

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    .line 349
    invoke-virtual {v4}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getTaxaJurosMes()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v4, v5}, Lhyx;->a(Ljava/lang/String;I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    .line 348
    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaJurosMesCustomerFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    const-string v0, ""

    return-object v0
.end method

.method public getTipoTaxa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->tipoTaxa:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPagarFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    const-string v0, ""

    return-object v0
.end method

.method public getTotalPercentageFormatted()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->porcetValorTotalDevido:Ljava/lang/String;

    invoke-static {v3, v4}, Lhyx;->a(Ljava/lang/String;I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 380
    const/16 v0, 0xa

    return v0
.end method

.method public getTypeSecure()I
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x2

    return v0
.end method

.method public getUltimoVencimentoFormatted()Ljava/lang/String;
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getDataUltimoVencimento()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorEmprestimo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorEmprestimo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorEmprestimoFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getValorEmprestimo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorEntregueFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getValorEmprestimo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorLimiteMax()F
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->consultarLimiteResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->getValorLimiteMax()F

    move-result v0

    return v0
.end method

.method public getValorLimiteMin()F
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->consultarLimiteResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->getValorLimiteMin()F

    move-result v0

    return v0
.end method

.method public getValorParcela()F
    .locals 1

    .prologue
    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorParcela()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhyx;->b(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 313
    :goto_0
    return v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValorParcelaFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 434
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getValorParcela()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorParcelaSemSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorParcelaSemSeguro()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorPremioSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorPremioSeguro()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorPremioSeguroCP()F
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getValorPremioSeguroFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getValorPremioSeguro()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorPremioSeguroPrestamista()F
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method public getValorTotalComEncargosFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getValorTotalFinanciamento()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValorTotalContractsFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    const-string v0, ""

    return-object v0
.end method

.method public getValorTotalRefinFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    const-string v0, ""

    return-object v0
.end method

.method public getVencimento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->informacaoParcela:Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPInformacaoParcelaResponse;->getDataPrimeiroVencimento()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVencimentoFormatted()Ljava/lang/String;
    .locals 3

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getVencimento()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRefinanciamento()Z
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public isTelaAlternativa()Z
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->telaAlternativa:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->telaAlternativa:Ljava/lang/String;

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConsultarLimiteResponse(Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->consultarLimiteResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    .line 246
    return-object p0
.end method

.method public setConta(Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->conta:Lcom/santander/app/contacorrente/domain/Conta;

    .line 241
    return-object p0
.end method

.method public setDiaPagamentoSelecionado(I)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;
    .locals 1

    .prologue
    .line 250
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->diaPagamentoSelecionado:Ljava/lang/String;

    .line 251
    return-object p0
.end method
