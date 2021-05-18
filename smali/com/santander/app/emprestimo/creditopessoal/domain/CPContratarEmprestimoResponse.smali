.class public Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private codigoAgencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoAutenticacaoBancaria:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoCliente:Ljava/lang/String;
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

.field private contaCorrente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private cpfCliente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataContratacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataEfetivacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataPrimeiroVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataUltimoVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private encrypt:Lnaf;

.field private horaEfetivacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private horaTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private mensagemRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeCartorioAbreviado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeCliente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroCapitalizacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroContrato:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroRegistroCartorio:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroSeguradora:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private quantidadeParcelas:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private quantidadeSorteios:Ljava/lang/String;
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

.field private taxaInadiplencia:Ljava/lang/String;
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

.field private valorCapitalSegurado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorEmprestimo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorEmprestimoEncargos:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorIOF:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorLancamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorParcela:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorPremioSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorSorteioMilhar:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTarifaContrato:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTotalFinanciado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lgnb;-><init>()V

    .line 29
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->encrypt:Lnaf;

    return-void
.end method

.method private getQuantidadeParcelasFormatted()I
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getQuantidadeParcelas()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAutenticacaoBancaria()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->codigoAutenticacaoBancaria:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoAgencia()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->codigoAgencia:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodigoProduto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->codigoProduto:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoRetorno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->codigoRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoSubProduto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->codigoSubProduto:Ljava/lang/String;

    return-object v0
.end method

.method public getConta()Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContaCorrente()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->contaCorrente:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataContratacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->dataContratacao:Ljava/lang/String;

    return-object v0
.end method

.method public getDataEfetivacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->dataEfetivacao:Ljava/lang/String;

    return-object v0
.end method

.method public getDataHoraSolicitacao()Ljava/lang/String;
    .locals 2

    .prologue
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getDataTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getHoraTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataPrimeiroVencimento()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->dataPrimeiroVencimento:Ljava/lang/String;

    const-string v1, "."

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataTransacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->dataTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUltimoVencimento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->dataUltimoVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public getDiaPagamentoFormatted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getDataPrimeiroVencimento()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dd/MM/yyyy"

    invoke-static {v0, v1}, Lhyx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 452
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 454
    :goto_0
    return-object v0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    const-string v0, "0"

    goto :goto_0
.end method

.method public getFontePagadoraFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHoraTransacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->horaTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public getIofFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getValorIOF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getIofPercentageFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJurosMoratorioFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLiberadoPercentageFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMensagemRetorno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->mensagemRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getMensagemRetorno()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultaMoratorioFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNomeCliente()Ljava/lang/String;
    .locals 3

    .prologue
    .line 265
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->nomeCliente:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumeroContrato()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->numeroContrato:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroContratoFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getNumeroContrato()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParcelaFormatted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getQuantidadeParcelasFormatted()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuantidadeParcelas()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->quantidadeParcelas:Ljava/lang/String;

    return-object v0
.end method

.method public getReferOper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->referOper:Ljava/lang/String;

    return-object v0
.end method

.method public getSeguroPercentageFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaxaCETAno()Ljava/lang/String;
    .locals 5

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->taxaCETAno:Ljava/lang/String;

    invoke-static {v4}, Lhyx;->b(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

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

.method public getTaxaCETBreakLineFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaxaCETFormatted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getTaxaCETMes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a.m "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getTaxaCETAno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a.a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaCETMes()Ljava/lang/String;
    .locals 5

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->taxaCETMes:Ljava/lang/String;

    invoke-static {v4}, Lhyx;->b(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

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

.method public getTaxaJurosAno()Ljava/lang/String;
    .locals 6

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->taxaJurosAno:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-static {v4, v5}, Lhyx;->a(Ljava/lang/String;I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

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

.method public getTaxaJurosBreakLineFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaxaJurosFormatted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getTaxaJurosMes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a.m. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getTaxaJurosAno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a.a."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaJurosFormatted(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    if-eqz p1, :cond_0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getTaxaJurosMes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a.m.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getTaxaJurosAno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a.a."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getTaxaJurosMes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a.m. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getTaxaJurosAno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a.a."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTaxaJurosMes()Ljava/lang/String;
    .locals 6

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->taxaJurosMes:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-static {v4, v5}, Lhyx;->a(Ljava/lang/String;I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

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

.method public getTaxaJurosMesCustomerFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaxaMora()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->taxaMora:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->tipoSeguro:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoTaxa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->tipoTaxa:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPagarFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalPercentageFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 355
    const/16 v0, 0xa

    return v0
.end method

.method public getTypeSecure()I
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public getUltimoVencimentoFormatted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 480
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getDataUltimoVencimento()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dd/MM/yyyy"

    invoke-static {v0, v1}, Lhyx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 481
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 483
    :goto_0
    return-object v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    const-string v0, "0"

    goto :goto_0
.end method

.method public getValorEmprestimo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->valorEmprestimo:Ljava/lang/String;

    return-object v0
.end method

.method public getValorEmprestimoFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getValorEmprestimo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getValorEntregueFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getValorEmprestimo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 511
    :goto_0
    return-object v0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getValorIOF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->valorIOF:Ljava/lang/String;

    return-object v0
.end method

.method public getValorParcela()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->valorParcela:Ljava/lang/String;

    return-object v0
.end method

.method public getValorParcelaFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getValorParcela()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getValorPremioSeguro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->valorPremioSeguro:Ljava/lang/String;

    return-object v0
.end method

.method public getValorPremioSeguroCP()F
    .locals 1

    .prologue
    .line 376
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getValorPremioSeguro()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 378
    :goto_0
    return v0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValorPremioSeguroFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getValorPremioSeguro()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 463
    :goto_0
    return-object v0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getValorPremioSeguroPrestamista()F
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public getValorTotalComEncargosFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValorTotalContractsFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    const-string v0, ""

    return-object v0
.end method

.method public getValorTotalRefinFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    const-string v0, ""

    return-object v0
.end method

.method public getVencimentoFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getDataPrimeiroVencimento()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRefinanciamento()Z
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public setCodigoAgencia(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->codigoAgencia:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setCodigoProduto(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->codigoProduto:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setCodigoRetorno(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->codigoRetorno:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setCodigoSubProduto(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->codigoSubProduto:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setContaCorrente(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->contaCorrente:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setDataContratacao(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->dataContratacao:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setDataEfetivacao(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->dataEfetivacao:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setDataPrimeiroVencimento(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->dataPrimeiroVencimento:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setDataTransacao(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->dataTransacao:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setDataUltimoVencimento(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->dataUltimoVencimento:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setHoraTransacao(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->horaTransacao:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setMensagemRetorno(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->mensagemRetorno:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setNomeCliente(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->nomeCliente:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setReferOper(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->referOper:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setTaxaMora(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->taxaMora:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setTipoSeguro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->tipoSeguro:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setTipoTaxa(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->tipoTaxa:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setValorIOF(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->valorIOF:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setValorParcela(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->valorParcela:Ljava/lang/String;

    .line 338
    return-void
.end method
