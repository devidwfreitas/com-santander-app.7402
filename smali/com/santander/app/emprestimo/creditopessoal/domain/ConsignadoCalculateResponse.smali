.class public Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;
.super Lhok;
.source "SourceFile"

# interfaces
.implements Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;
.implements Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSetter;
.implements Lhxq;


# instance fields
.field protected consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

.field protected conta:Lcom/santander/app/contacorrente/domain/Conta;

.field protected contracts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "contracts"
    .end annotation
.end field

.field protected contractsTotalValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "contractsTotalValue"
    .end annotation
.end field

.field protected dateOccurrence:Ljava/lang/String;
    .annotation runtime Leks;
        a = "dateOccurrence"
    .end annotation
.end field

.field protected dateSystem:Ljava/lang/String;
    .annotation runtime Leks;
        a = "dateSystem"
    .end annotation
.end field

.field protected liberationDays:Ljava/lang/String;
    .annotation runtime Leks;
        a = "liberationDays"
    .end annotation
.end field

.field protected maxInstallmentsQuantity:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maxInstallmentsQuantity"
    .end annotation
.end field

.field protected minInstallmentsQuantity:Ljava/lang/String;
    .annotation runtime Leks;
        a = "minInstallmentsQuantity"
    .end annotation
.end field

.field protected nameAgreement:Ljava/lang/String;
    .annotation runtime Leks;
        a = "nameAgreement"
    .end annotation
.end field

.field protected promoterName:Ljava/lang/String;
    .annotation runtime Leks;
        a = "promoterName"
    .end annotation
.end field

.field protected secureCode:Ljava/lang/String;
    .annotation runtime Leks;
        a = "secureCode"
    .end annotation
.end field

.field protected simulation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhol;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "simulation"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lhok;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->contracts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAutenticacaoBancaria()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    const-string v0, ""

    return-object v0
.end method

.method public getConsignadoSimulationResponse()Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    return-object v0
.end method

.method public getConta()Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->conta:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method public getContratos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->getContratos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContratosCalculate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->contracts:Ljava/util/List;

    return-object v0
.end method

.method public getDataHoraSolicitacao()Ljava/lang/String;
    .locals 2

    .prologue
    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->dateSystem:Ljava/lang/String;

    invoke-static {v0}, Lhyx;->d(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 564
    const-string v1, "dd/MM/yyyy - HH:mm"

    invoke-static {v1}, Lhyx;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 565
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    const-string v0, ""

    goto :goto_0
.end method

.method public getDiaPagamentoFormatted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->g:Lhom;

    invoke-virtual {v0}, Lhom;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 512
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 514
    :goto_0
    return-object v0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    const-string v0, "0"

    goto :goto_0
.end method

.method public getDiasUteis()I
    .locals 1

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->liberationDays:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 103
    :goto_0
    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDiasUteisFormatted()Ljava/lang/String;
    .locals 6

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getDiasUteis()I

    move-result v0

    .line 720
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 721
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 722
    if-nez v0, :cond_0

    .line 723
    const v0, 0x7f0902c0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 729
    :goto_0
    return-object v0

    .line 725
    :cond_0
    const/high16 v2, 0x7f110000

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 726
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 725
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 729
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getFontePagadora()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->nameAgreement:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string v0, ""

    goto :goto_0
.end method

.method public getFontePagadoraFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getFontePagadora()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInsurancePercentage()F
    .locals 2

    .prologue
    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->h:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculatePercentages;

    iget-object v0, v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculatePercentages;->insurance:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 337
    :goto_0
    return v0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIof()F
    .locals 2

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->e:Lhoo;

    iget-object v0, v0, Lhoo;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 230
    :goto_0
    return v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIofFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 469
    :try_start_0
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getIof()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getIofPercentage()F
    .locals 2

    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->h:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculatePercentages;

    iget-object v0, v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculatePercentages;->iof:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 329
    :goto_0
    return v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIofPercentageFormatted()Ljava/lang/String;
    .locals 5

    .prologue
    .line 690
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getIofPercentage()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 693
    :goto_0
    return-object v0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    const-string v0, "0.00"

    goto :goto_0
.end method

.method public getJurosMoratorioFormatted()Ljava/lang/String;
    .locals 5

    .prologue
    .line 630
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getJurosMoratorios()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 633
    :goto_0
    return-object v0

    .line 632
    :catch_0
    move-exception v0

    .line 633
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getJurosMoratorios()F
    .locals 2

    .prologue
    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->f:Lhon;

    iget-object v0, v0, Lhon;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 305
    :goto_0
    return v0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLiberadoPercentageFormatted()Ljava/lang/String;
    .locals 5

    .prologue
    .line 710
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getRequestedPercentage()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 713
    :goto_0
    return-object v0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    const-string v0, "0.00"

    goto :goto_0
.end method

.method public getMatriculaList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoMatricula;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->getMatriculaList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMesPagamento()Ljava/lang/String;
    .locals 4

    .prologue
    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->g:Lhom;

    invoke-virtual {v0}, Lhom;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 352
    const-string v1, "MMMM"

    invoke-static {v1}, Lhyx;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 353
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    const-string v0, ""

    goto :goto_0
.end method

.method public getMessageError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    const-string v0, ""

    return-object v0
.end method

.method public getMultaMoratorioFormatted()Ljava/lang/String;
    .locals 5

    .prologue
    .line 620
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getMultaMoratorios()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 623
    :goto_0
    return-object v0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getMultaMoratorios()F
    .locals 2

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->f:Lhon;

    iget-object v0, v0, Lhon;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 296
    :goto_0
    return v0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNomeConvenio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->getNomeConvenio()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumeroContratoFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    const-string v0, ""

    return-object v0
.end method

.method public getOperationPercentage()F
    .locals 2

    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->h:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculatePercentages;

    iget-object v0, v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculatePercentages;->operation:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 321
    :goto_0
    return v0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParcela()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 174
    :goto_0
    return v0

    .line 173
    :catch_0
    move-exception v0

    move v0, v1

    .line 174
    goto :goto_0
.end method

.method public getParcelaFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 432
    :try_start_0
    const-string v0, "%sx"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getParcela()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 434
    :goto_0
    return-object v0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    const-string v0, "0x"

    goto :goto_0
.end method

.method public getParcelaMax()I
    .locals 1

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->maxInstallmentsQuantity:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 127
    :goto_0
    return v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getParcelaMin()I
    .locals 1

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->minInstallmentsQuantity:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 136
    :goto_0
    return v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getParcelamentoAdicionalFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 497
    :try_start_0
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getValorParcelamentoAdicional()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 499
    :goto_0
    return-object v0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getRequestedPercentage()F
    .locals 2

    .prologue
    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->h:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculatePercentages;

    iget-object v0, v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculatePercentages;->requested:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 345
    :goto_0
    return v0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequiredData()Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->getRequiredData()Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;

    move-result-object v0

    return-object v0
.end method

.method public getSeguroPercentageFormatted()Ljava/lang/String;
    .locals 5

    .prologue
    .line 700
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getInsurancePercentage()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 703
    :goto_0
    return-object v0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    const-string v0, "0.00"

    goto :goto_0
.end method

.method public getTaxaCETAno()F
    .locals 2

    .prologue
    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->f:Lhon;

    iget-object v0, v0, Lhon;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 222
    :goto_0
    return v0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTaxaCETBreakLineFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getTaxaCETFormatted(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaCETFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getTaxaCETFormatted(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTaxaCETFormatted(Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    const-string v1, "%.2f"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getTaxaCETMes()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string v1, "% a.m. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    if-eqz p1, :cond_0

    .line 660
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :cond_0
    const-string v1, "%.2f"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getTaxaCETAno()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const-string v1, "% a.a."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaCETMes()F
    .locals 2

    .prologue
    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->f:Lhon;

    iget-object v0, v0, Lhon;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 214
    :goto_0
    return v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTaxaJurosAno()F
    .locals 2

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->f:Lhon;

    iget-object v0, v0, Lhon;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 264
    :goto_0
    return v0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTaxaJurosBreakLineFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getTaxaJurosFormatted(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaJurosFormatted()Ljava/lang/String;
    .locals 5

    .prologue
    .line 478
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getTaxaJurosMes()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 481
    :goto_0
    return-object v0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getTaxaJurosFormatted(Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    const-string v1, "%.2f"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getTaxaJurosMes()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const-string v1, "% a.m. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    if-eqz p1, :cond_0

    .line 648
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :cond_0
    const-string v1, "%.2f"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getTaxaJurosAno()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const-string v1, "% a.a."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxaJurosMes()F
    .locals 2

    .prologue
    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->f:Lhon;

    iget-object v0, v0, Lhon;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 256
    :goto_0
    return v0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTaxaJurosMesCustomer()F
    .locals 2

    .prologue
    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->f:Lhon;

    iget-object v0, v0, Lhon;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 288
    :goto_0
    return v0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTaxaJurosMesCustomerFormatted()Ljava/lang/String;
    .locals 5

    .prologue
    .line 610
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getTaxaJurosMesCustomer()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 613
    :goto_0
    return-object v0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getTotalPagar()F
    .locals 2

    .prologue
    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->e:Lhoo;

    iget-object v0, v0, Lhoo;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 280
    :goto_0
    return v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalPagarFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 601
    :try_start_0
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getTotalPagar()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 603
    :goto_0
    return-object v0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getTotalPercentageFormatted()Ljava/lang/String;
    .locals 5

    .prologue
    .line 680
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getOperationPercentage()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 683
    :goto_0
    return-object v0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    const-string v0, "0.00"

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 400
    const/16 v0, 0xb

    return v0
.end method

.method public getTypeSecure()I
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 412
    :try_start_0
    iget-object v3, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->secureCode:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 416
    if-ne v3, v0, :cond_0

    .line 421
    :goto_0
    return v0

    .line 413
    :catch_0
    move-exception v0

    move v0, v2

    .line 414
    goto :goto_0

    .line 418
    :cond_0
    if-ne v3, v1, :cond_1

    move v0, v1

    .line 419
    goto :goto_0

    :cond_1
    move v0, v2

    .line 421
    goto :goto_0
.end method

.method public getUltimoVencimentoFormatted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->g:Lhom;

    invoke-virtual {v0}, Lhom;->b()Ljava/util/Calendar;

    move-result-object v0

    .line 548
    const-string v1, "dd/MM/yyyy"

    invoke-static {v1}, Lhyx;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 549
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    const-string v0, ""

    goto :goto_0
.end method

.method public getValorAlteradoRefin()F
    .locals 2

    .prologue
    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->e:Lhoo;

    iget-object v0, v0, Lhoo;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 380
    :goto_0
    return v0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValorEmprestimo()F
    .locals 2

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->e:Lhoo;

    iget-object v0, v0, Lhoo;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 206
    :goto_0
    return v0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValorEmprestimoFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 450
    :try_start_0
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getValorEmprestimo()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getValorEntregue()F
    .locals 2

    .prologue
    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->e:Lhoo;

    iget-object v0, v0, Lhoo;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 272
    :goto_0
    return v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValorEntregueFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 592
    :try_start_0
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getValorEntregue()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 594
    :goto_0
    return-object v0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getValorLimiteMax()F
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->getValorLimiteMax()F

    move-result v0

    return v0
.end method

.method public getValorLimiteMin()F
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->getValorLimiteMin()F

    move-result v0

    return v0
.end method

.method public getValorParcela()F
    .locals 2

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->e:Lhoo;

    iget-object v0, v0, Lhoo;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 190
    :goto_0
    return v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValorParcelaFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 441
    :try_start_0
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getValorParcela()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getValorParcelaOutros()F
    .locals 2

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->e:Lhoo;

    iget-object v0, v0, Lhoo;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 198
    :goto_0
    return v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValorParcelamentoAdicional()F
    .locals 2

    .prologue
    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->e:Lhoo;

    iget-object v0, v0, Lhoo;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValorParcelasOutrosFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 488
    :try_start_0
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getValorParcelaOutros()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 490
    :goto_0
    return-object v0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getValorPremioSeguroCP()F
    .locals 2

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->e:Lhoo;

    iget-object v0, v0, Lhoo;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 239
    :goto_0
    return v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValorPremioSeguroFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 521
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getTypeSecure()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 522
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getValorPremioSeguroCP()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 529
    :goto_0
    return-object v0

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getTypeSecure()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 524
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getValorPremioSeguroCP()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 526
    :cond_1
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getValorPremioSeguroCP()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getValorPremioSeguroPrestamista()F
    .locals 2

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->e:Lhoo;

    iget-object v0, v0, Lhoo;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 248
    :goto_0
    return v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValorTotalComEncargosFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    const-string v0, ""

    return-object v0
.end method

.method public getValorTotalContracts()F
    .locals 1

    .prologue
    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->contractsTotalValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 372
    :goto_0
    return v0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValorTotalContractsFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 583
    :try_start_0
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getValorTotalContracts()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 585
    :goto_0
    return-object v0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getValorTotalRefin()F
    .locals 2

    .prologue
    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->e:Lhoo;

    iget-object v0, v0, Lhoo;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 364
    :goto_0
    return v0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValorTotalRefinFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 574
    :try_start_0
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getValorTotalRefin()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 576
    :goto_0
    return-object v0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    const-string v0, "0,00"

    goto :goto_0
.end method

.method public getVencimentoFormatted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->g:Lhom;

    invoke-virtual {v0}, Lhom;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 537
    const-string v1, "dd/MM/yyyy"

    invoke-static {v1}, Lhyx;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 538
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 540
    :goto_0
    return-object v0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    const-string v0, ""

    goto :goto_0
.end method

.method public isEligivel()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public isMorno()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->isMorno()Z

    move-result v0

    return v0
.end method

.method public isRefinanciamento()Z
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getContratos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequiredDataFlag()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->isRequiredDataFlag()Z

    move-result v0

    return v0
.end method

.method public setAverbationCode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {v0, p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->setAverbationCode(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setConsignadoSimulationResponse(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    .line 61
    return-object p0
.end method

.method public setConta(Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->conta:Lcom/santander/app/contacorrente/domain/Conta;

    .line 56
    return-object p0
.end method

.method public setMorno()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->setMorno()V

    .line 81
    return-void
.end method

.method public setQuente()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->setQuente()V

    .line 86
    return-void
.end method

.method public setSimulation(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {v0, p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->setSimulation(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V

    .line 71
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->update()V

    .line 76
    return-void
.end method
