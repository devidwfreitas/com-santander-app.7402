.class public Ljdx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljdx;",
        ">;"
    }
.end annotation


# instance fields
.field private agencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private aplicacaoAdicional:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private aplicacaoMinima:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private botaoFundoEnumSelected:Ljdk;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codFundoLamina:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoContaCorrente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoCor:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoFundo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaFundo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaFundoAdapter:Ljdu;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaSelecionada:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private cotaFechamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataAplicar:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataCota:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoCotaAplicacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoCotaResgate:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoCreditoEmConta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagAgendamento:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagAplicar:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagCancelar:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagExtrato:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagIOF:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagIR:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagReaplicar:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagResgatar:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private horarioLimite:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private isDesenquadramento:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private labelAplicacaoMinimaAdicional:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private labelTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private legendaCotasAplicacao:Ljeb;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private legendaCotasFechamento:Ljec;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private legendaCotasResgate:Ljed;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private legendaCreditoEmConta:Ljee;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private legendaRentabilidade12:Ljef;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private legendaTaxaAdm:Ljeg;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private legendaTaxaPerformance:Ljeh;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private legendaUltimoMes:Ljei;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeFamilia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeReduzidoIb:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private rentabilidade12:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private rentabilidade24:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private rentabilidade36:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private rentabilidadeAno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private rentabilidadeUltimoMes:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private risco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private saldoBruto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private saldoMinimoPermanencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaAdm:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaPerformance:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoFamilia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorAplicar:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorDisponivelRegaste:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorMaximoResgate:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorMinimoResgate:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Ljdx;->flagIOF:Ljava/lang/String;

    return-object v0
.end method

.method public A(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Ljdx;->saldoMinimoPermanencia:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Ljdx;->flagIR:Ljava/lang/String;

    return-object v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Ljdx;->taxaAdm:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Ljdx;->horarioLimite:Ljava/lang/String;

    return-object v0
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Ljdx;->taxaPerformance:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public D()Ljeb;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Ljdx;->legendaCotasAplicacao:Ljeb;

    return-object v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Ljdx;->tipoFamilia:Ljava/lang/String;

    .line 558
    return-void
.end method

.method public E()Ljec;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Ljdx;->legendaCotasFechamento:Ljec;

    return-object v0
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Ljdx;->dataCota:Ljava/lang/String;

    .line 566
    return-void
.end method

.method public F()Ljed;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Ljdx;->legendaCotasResgate:Ljed;

    return-object v0
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Ljdx;->saldoBruto:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public G()Ljee;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Ljdx;->legendaCreditoEmConta:Ljee;

    return-object v0
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Ljdx;->valorDisponivelRegaste:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public H()Ljef;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Ljdx;->legendaRentabilidade12:Ljef;

    return-object v0
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Ljdx;->agencia:Ljava/lang/String;

    .line 590
    return-void
.end method

.method public I()Ljeg;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Ljdx;->legendaTaxaAdm:Ljeg;

    return-object v0
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Ljdx;->descricaoCotaResgate:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public J()Ljeh;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Ljdx;->legendaTaxaPerformance:Ljeh;

    return-object v0
.end method

.method public J(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Ljdx;->descricaoCreditoEmConta:Ljava/lang/String;

    .line 622
    return-void
.end method

.method public K()Ljei;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Ljdx;->legendaUltimoMes:Ljei;

    return-object v0
.end method

.method public K(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Ljdx;->descricaoCotaAplicacao:Ljava/lang/String;

    .line 630
    return-void
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Ljdx;->nomeFamilia:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Ljdx;->nomeReduzidoIb:Ljava/lang/String;

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Ljdx;->rentabilidade12:Ljava/lang/String;

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Ljdx;->rentabilidade24:Ljava/lang/String;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Ljdx;->rentabilidade36:Ljava/lang/String;

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Ljdx;->rentabilidadeAno:Ljava/lang/String;

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Ljdx;->rentabilidadeUltimoMes:Ljava/lang/String;

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Ljdx;->saldoMinimoPermanencia:Ljava/lang/String;

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Ljdx;->taxaAdm:Ljava/lang/String;

    return-object v0
.end method

.method public U()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Ljdx;->taxaPerformance:Ljava/lang/String;

    return-object v0
.end method

.method public V()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Ljdx;->tipoFamilia:Ljava/lang/String;

    return-object v0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Ljdx;->dataCota:Ljava/lang/String;

    return-object v0
.end method

.method public X()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Ljdx;->saldoBruto:Ljava/lang/String;

    return-object v0
.end method

.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Ljdx;->valorDisponivelRegaste:Ljava/lang/String;

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Ljdx;->agencia:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljdx;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 595
    :try_start_0
    iget-object v1, p0, Ljdx;->contaFundo:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljdx;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 596
    const/4 v0, -0x1

    .line 604
    :cond_0
    :goto_0
    return v0

    .line 598
    :cond_1
    iget-object v1, p0, Ljdx;->contaFundo:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljdx;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-le v1, v2, :cond_0

    .line 599
    const/4 v0, 0x1

    goto :goto_0

    .line 603
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a()Ljdx;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdx;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Ljdx;->labelAplicacaoMinimaAdicional:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public a(Ljdk;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Ljdx;->botaoFundoEnumSelected:Ljdk;

    .line 334
    return-void
.end method

.method public a(Ljdu;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Ljdx;->contaFundoAdapter:Ljdu;

    .line 233
    return-void
.end method

.method public a(Ljeb;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Ljdx;->legendaCotasAplicacao:Ljeb;

    .line 414
    return-void
.end method

.method public a(Ljec;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Ljdx;->legendaCotasFechamento:Ljec;

    .line 422
    return-void
.end method

.method public a(Ljed;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Ljdx;->legendaCotasResgate:Ljed;

    .line 430
    return-void
.end method

.method public a(Ljee;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Ljdx;->legendaCreditoEmConta:Ljee;

    .line 438
    return-void
.end method

.method public a(Ljef;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Ljdx;->legendaRentabilidade12:Ljef;

    .line 446
    return-void
.end method

.method public a(Ljeg;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Ljdx;->legendaTaxaAdm:Ljeg;

    .line 454
    return-void
.end method

.method public a(Ljeh;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Ljdx;->legendaTaxaPerformance:Ljeh;

    .line 462
    return-void
.end method

.method public a(Ljei;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Ljdx;->legendaUltimoMes:Ljei;

    .line 470
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 256
    iput-boolean p1, p0, Ljdx;->isDesenquadramento:Z

    .line 257
    return-void
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Ljdx;->descricaoCotaResgate:Ljava/lang/String;

    return-object v0
.end method

.method public ab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Ljdx;->descricaoCreditoEmConta:Ljava/lang/String;

    return-object v0
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Ljdx;->descricaoCotaAplicacao:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ljdx;->labelAplicacaoMinimaAdicional:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Ljdx;->contaFundo:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 264
    iput-boolean p1, p0, Ljdx;->flagAgendamento:Z

    .line 265
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ljdx;->contaFundo:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Ljdx;->valorMinimoResgate:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 293
    iput-boolean p1, p0, Ljdx;->flagResgatar:Z

    .line 294
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Ljdx;->a()Ljdx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Ljdx;

    invoke-virtual {p0, p1}, Ljdx;->a(Ljdx;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Ljdx;->valorMinimoResgate:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Ljdx;->valorMaximoResgate:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 301
    iput-boolean p1, p0, Ljdx;->flagAplicar:Z

    .line 302
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Ljdx;->valorMaximoResgate:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Ljdx;->labelTransacao:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 309
    iput-boolean p1, p0, Ljdx;->flagCancelar:Z

    .line 310
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Ljdx;->labelTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Ljdx;->risco:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 317
    iput-boolean p1, p0, Ljdx;->flagReaplicar:Z

    .line 318
    return-void
.end method

.method public g()Ljdu;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Ljdx;->contaFundoAdapter:Ljdu;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Ljdx;->codigoContaCorrente:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 325
    iput-boolean p1, p0, Ljdx;->flagExtrato:Z

    .line 326
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Ljdx;->risco:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Ljdx;->valorAplicar:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Ljdx;->codigoContaCorrente:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Ljdx;->dataAplicar:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Ljdx;->contaSelecionada:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Ljdx;->flagAgendamento:Z

    return v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Ljdx;->aplicacaoAdicional:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Ljdx;->isDesenquadramento:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Ljdx;->valorAplicar:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Ljdx;->aplicacaoMinima:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Ljdx;->dataAplicar:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Ljdx;->codFundoLamina:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Ljdx;->contaSelecionada:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Ljdx;->codigoCor:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Ljdx;->codigoFundo:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Ljdx;->flagResgatar:Z

    return v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Ljdx;->cotaFechamento:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Ljdx;->flagAplicar:Z

    return v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Ljdx;->flagIOF:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Ljdx;->flagCancelar:Z

    return v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Ljdx;->flagIR:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Ljdx;->flagReaplicar:Z

    return v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Ljdx;->horarioLimite:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Ljdx;->flagExtrato:Z

    return v0
.end method

.method public t()Ljdk;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Ljdx;->botaoFundoEnumSelected:Ljdk;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Ljdx;->nomeFamilia:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Ljdx;->aplicacaoAdicional:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Ljdx;->nomeReduzidoIb:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Ljdx;->aplicacaoMinima:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Ljdx;->rentabilidade12:Ljava/lang/String;

    .line 494
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Ljdx;->codFundoLamina:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Ljdx;->rentabilidade24:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Ljdx;->codigoCor:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Ljdx;->rentabilidade36:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Ljdx;->codigoFundo:Ljava/lang/String;

    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Ljdx;->rentabilidadeAno:Ljava/lang/String;

    .line 518
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Ljdx;->cotaFechamento:Ljava/lang/String;

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Ljdx;->rentabilidadeUltimoMes:Ljava/lang/String;

    .line 526
    return-void
.end method
