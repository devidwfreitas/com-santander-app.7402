.class public Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private atualizationPercentage:Ljava/lang/String;
    .annotation runtime Leks;
        a = "atualizationPercentage"
    .end annotation
.end field

.field private blockedFlag:Ljava/lang/String;
    .annotation runtime Leks;
        a = "blockedFlag"
    .end annotation
.end field

.field private blockedReason:Ljava/lang/String;
    .annotation runtime Leks;
        a = "blockedReason"
    .end annotation
.end field

.field private clientRegistrationId:Ljava/lang/String;
    .annotation runtime Leks;
        a = "clientRegistrationId"
    .end annotation
.end field

.field private contractDate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "contractDate"
    .end annotation
.end field

.field private debitorValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "debitorValue"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field private installmentValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "installmentValue"
    .end annotation
.end field

.field private installmentsQuantity:Ljava/lang/String;
    .annotation runtime Leks;
        a = "installmentsQuantity"
    .end annotation
.end field

.field private observation:Ljava/lang/String;
    .annotation runtime Leks;
        a = "observation"
    .end annotation
.end field

.field private openInstallmentsQuantity:Ljava/lang/String;
    .annotation runtime Leks;
        a = "openInstallmentsQuantity"
    .end annotation
.end field

.field private overdueInstallmentsQuantity:Ljava/lang/String;
    .annotation runtime Leks;
        a = "overdueInstallmentsQuantity"
    .end annotation
.end field

.field private paidInstallmentsQuantity:Ljava/lang/String;
    .annotation runtime Leks;
        a = "paidInstallmentsQuantity"
    .end annotation
.end field

.field private toOverdueInstallmentsQuantity:Ljava/lang/String;
    .annotation runtime Leks;
        a = "toOverdueInstallmentsQuantity"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAtualizationPercentage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->atualizationPercentage:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockedReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->blockedReason:Ljava/lang/String;

    return-object v0
.end method

.method public getClientRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->clientRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method public getContractDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->contractDate:Ljava/lang/String;

    invoke-static {v0}, Lhyx;->d(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 99
    const-string v1, "dd/MM/yyyy"

    invoke-static {v1}, Lhyx;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 100
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v0, ""

    goto :goto_0
.end method

.method public getDebitorValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->debitorValue:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallmentValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->installmentValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 74
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v0, "0"

    goto :goto_0
.end method

.method public getInstallmentsQuantity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->installmentsQuantity:Ljava/lang/String;

    return-object v0
.end method

.method public getObservation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->observation:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenInstallmentsQuantity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->openInstallmentsQuantity:Ljava/lang/String;

    return-object v0
.end method

.method public getOverdueInstallmentsQuantity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->overdueInstallmentsQuantity:Ljava/lang/String;

    return-object v0
.end method

.method public getPaidInstallmentsQuantity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->paidInstallmentsQuantity:Ljava/lang/String;

    return-object v0
.end method

.method public getToOverdueInstallmentsQuantity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->toOverdueInstallmentsQuantity:Ljava/lang/String;

    return-object v0
.end method

.method public isBlockedFlag()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->blockedFlag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->blockedFlag:Ljava/lang/String;

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
