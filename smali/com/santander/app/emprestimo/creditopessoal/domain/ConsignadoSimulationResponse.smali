.class public Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;
.super Lhok;
.source "SourceFile"

# interfaces
.implements Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSetter;
.implements Lhxq;


# instance fields
.field protected averbationCode:Ljava/lang/String;

.field private contract:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "contract"
    .end annotation
.end field

.field protected forceQuente:Z

.field private isEligible:Ljava/lang/String;
    .annotation runtime Leks;
        a = "isEligible"
    .end annotation
.end field

.field private liberationDays:Ljava/lang/String;
    .annotation runtime Leks;
        a = "liberationDays"
    .end annotation
.end field

.field private maxInstalmentQuantity:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maxInstalmentQuantity"
    .end annotation
.end field

.field private maxInstalmentValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maxInstalmentValue"
    .end annotation
.end field

.field private maxOfferValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maxOfferValue"
    .end annotation
.end field

.field private minInstalmentQuantity:Ljava/lang/String;
    .annotation runtime Leks;
        a = "minInstalmentQuantity"
    .end annotation
.end field

.field private minInstalmentValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "minInstalmentValue"
    .end annotation
.end field

.field private minOfferValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "minOfferValue"
    .end annotation
.end field

.field private nameAgreement:Ljava/lang/String;
    .annotation runtime Leks;
        a = "nameAgreement"
    .end annotation
.end field

.field private registrationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoMatricula;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "registrationData"
    .end annotation
.end field

.field private requiredData:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;
    .annotation runtime Leks;
        a = "requiredData"
    .end annotation
.end field

.field private requiredDataFlag:Ljava/lang/String;
    .annotation runtime Leks;
        a = "requiredDataFlag"
    .end annotation
.end field

.field protected requiredDataResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lhok;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->contract:Ljava/util/List;

    .line 47
    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->registrationData:Ljava/util/List;

    return-void
.end method


# virtual methods
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
    .line 194
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->contract:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->contract:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
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
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiasUteis()I
    .locals 1

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->liberationDays:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 117
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDiasUteisFormatted()Ljava/lang/String;
    .locals 6

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->getDiasUteis()I

    move-result v0

    .line 215
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 216
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 217
    if-nez v0, :cond_0

    .line 218
    const v0, 0x7f0902c0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    .line 220
    :cond_0
    const/high16 v2, 0x7f110000

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 221
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 220
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_1
    const-string v0, ""

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
    .line 98
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->registrationData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->registrationData:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getNomeConvenio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->nameAgreement:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParcelaFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParcelaMax()I
    .locals 1

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->maxInstalmentQuantity:Ljava/lang/String;

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

.method public getParcelaMin()I
    .locals 1

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->minInstalmentQuantity:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 145
    :goto_0
    return v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getParcelamentoAdicionalFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequiredData()Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->requiredData:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;

    return-object v0
.end method

.method public getTaxaJurosFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeSecure()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x2

    return v0
.end method

.method public getValorLimiteMax()F
    .locals 1

    .prologue
    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->maxOfferValue:Ljava/lang/String;

    invoke-static {v0}, Lhyx;->f(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 154
    :goto_0
    return v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public getValorLimiteMin()F
    .locals 1

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->minOfferValue:Ljava/lang/String;

    invoke-static {v0}, Lhyx;->f(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 163
    :goto_0
    return v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public getValorParcelaFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValorParcelasOutrosFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEligivel()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->isEligible:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMorno()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->isRequiredDataFlag()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->getMatriculaList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->forceQuente:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRefinanciamento()Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->getContratos()Ljava/util/List;

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
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->requiredDataFlag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->requiredDataFlag:Ljava/lang/String;

    const-string v1, "true"

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

.method public setAverbationCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->averbationCode:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setMorno()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "true"

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->requiredDataFlag:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->forceQuente:Z

    .line 65
    return-void
.end method

.method public setQuente()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "false"

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->requiredDataFlag:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->forceQuente:Z

    .line 71
    return-void
.end method

.method public setSimulation(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V
    .locals 0

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->requiredDataResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    goto :goto_0
.end method

.method public update()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->requiredDataResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->requiredDataResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    iget-object v0, v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->maxInstalmentQuantity:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->maxInstalmentQuantity:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->requiredDataResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    iget-object v0, v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->minInstalmentQuantity:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->minInstalmentQuantity:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->requiredDataResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    iget-object v0, v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->maxOfferValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->maxOfferValue:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->requiredDataResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    iget-object v0, v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->minOfferValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->minOfferValue:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->requiredDataResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    goto :goto_0
.end method
