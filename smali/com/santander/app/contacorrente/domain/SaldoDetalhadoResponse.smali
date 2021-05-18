.class public Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/santander/app/contacorrente/domain/SaldoDetalhado;
.implements Ljava/io/Serializable;


# instance fields
.field private accountingDateBlockedValuesSearch:Ljava/lang/String;
    .annotation runtime Leks;
        a = "accountingDateBlockedValuesSearch"
    .end annotation
.end field

.field private accumulatedCPMFBalanceValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "accumulatedCPMFBalanceValue"
    .end annotation
.end field

.field private accumulatedCPMFValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "accumulatedCPMFValue"
    .end annotation
.end field

.field private accumulatedIOFEndDateValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "accumulatedIOFEndDateValue"
    .end annotation
.end field

.field private accumulatedIOFValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "accumulatedIOFValue"
    .end annotation
.end field

.field private accumulatedInterestedValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "accumulatedInterestedValue"
    .end annotation
.end field

.field private accumulatedInterestedsValues:Ljava/lang/String;
    .annotation runtime Leks;
        a = "accumulatedInterestedsValues"
    .end annotation
.end field

.field private aea:Ljava/lang/String;
    .annotation runtime Leks;
        a = "aea"
    .end annotation
.end field

.field private automaticRedemptionAccountIndicator:Ljava/lang/String;
    .annotation runtime Leks;
        a = "automaticRedemptionAccountIndicator"
    .end annotation
.end field

.field private automaticRedemptionBalanceValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "automaticRedemptionBalanceValue"
    .end annotation
.end field

.field private availableBalanceValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "availableBalanceValue"
    .end annotation
.end field

.field private availableCreditValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "availableCreditValue"
    .end annotation
.end field

.field private availableOverdraftValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "availableOverdraftValue"
    .end annotation
.end field

.field private availableSantanderOverdraftValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "availableSantanderOverdraftValue"
    .end annotation
.end field

.field private balanceSignal:Ljava/lang/String;
    .annotation runtime Leks;
        a = "balanceSignal"
    .end annotation
.end field

.field private bankDestinationAcccount:Ljava/lang/String;
    .annotation runtime Leks;
        a = "bankDestinationAcccount"
    .end annotation
.end field

.field private blockedBalanceTotalValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "blockedBalanceTotalValue"
    .end annotation
.end field

.field private blockedCheckbookIndicator:Ljava/lang/String;
    .annotation runtime Leks;
        a = "blockedCheckbookIndicator"
    .end annotation
.end field

.field private branchDestinationBranch:Ljava/lang/String;
    .annotation runtime Leks;
        a = "branchDestinationBranch"
    .end annotation
.end field

.field private checkingAccountBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "checkingAccountBalance"
    .end annotation
.end field

.field private checkingAccountBalanceAvailableValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "checkingAccountBalanceAvailableValue"
    .end annotation
.end field

.field private checkingAccountBalancePlusMax:Ljava/lang/String;
    .annotation runtime Leks;
        a = "checkingAccountBalancePlusMax"
    .end annotation
.end field

.field private checkingAccountBlockedBalanceValuePlustInvestmentAccountPlusJudicialBlock:Ljava/lang/String;
    .annotation runtime Leks;
        a = "checkingAccountBlockedBalanceValuePlustInvestmentAccountPlusJudicialBlock"
    .end annotation
.end field

.field private checkingAccountJudicialBlockBalanceValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "checkingAccountJudicialBlockBalanceValue"
    .end annotation
.end field

.field private checkingInvestmentAccountBalanceValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "checkingInvestmentAccountBalanceValue"
    .end annotation
.end field

.field private contractDueDate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "contractDueDate"
    .end annotation
.end field

.field private coverageCCIIndicator:Ljava/lang/String;
    .annotation runtime Leks;
        a = "coverageCCIIndicator"
    .end annotation
.end field

.field private cpmfBillingIndicator:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cpmfBillingIndicator"
    .end annotation
.end field

.field private dailyBlockBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "dailyBlockBalance"
    .end annotation
.end field

.field private destinationAccountNumber:Ljava/lang/String;
    .annotation runtime Leks;
        a = "destinationAccountNumber"
    .end annotation
.end field

.field private firstAndSecondOverdraftDescription:Ljava/lang/String;
    .annotation runtime Leks;
        a = "firstAndSecondOverdraftDescription"
    .end annotation
.end field

.field private fundsAccountBalanceIndicator:Ljava/lang/String;
    .annotation runtime Leks;
        a = "fundsAccountBalanceIndicator"
    .end annotation
.end field

.field private hoursBlockValue24:Ljava/lang/String;
    .annotation runtime Leks;
        a = "hoursBlockValue24"
    .end annotation
.end field

.field private hoursBlockValue48:Ljava/lang/String;
    .annotation runtime Leks;
        a = "hoursBlockValue48"
    .end annotation
.end field

.field private interestedBillingDate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "interestedBillingDate"
    .end annotation
.end field

.field private investimentAccountJudicialBlockBalanceValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investimentAccountJudicialBlockBalanceValue"
    .end annotation
.end field

.field private investimentAccountNumber:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investimentAccountNumber"
    .end annotation
.end field

.field private investimentAccountPlustCheckingAccountPlusMaxPlusAutomaticRedemptionValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investimentAccountPlustCheckingAccountPlusMaxPlusAutomaticRedemptionValue"
    .end annotation
.end field

.field private investimentBank:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investimentBank"
    .end annotation
.end field

.field private investimentBranchCode:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investimentBranchCode"
    .end annotation
.end field

.field private investmentAccount24HoursBlockValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investmentAccount24HoursBlockValue"
    .end annotation
.end field

.field private investmentAccount48HoursBlockValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investmentAccount48HoursBlockValue"
    .end annotation
.end field

.field private investmentAccountAvailableBalanceValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investmentAccountAvailableBalanceValue"
    .end annotation
.end field

.field private investmentAccountBalancePlusCheckningAccountPlusMaxValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investmentAccountBalancePlusCheckningAccountPlusMaxValue"
    .end annotation
.end field

.field private investmentAccountPlusCheckingAccountValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investmentAccountPlusCheckingAccountValue"
    .end annotation
.end field

.field private investmentAccountTEDBlockValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investmentAccountTEDBlockValue"
    .end annotation
.end field

.field private investmentAccountTotalBlockValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investmentAccountTotalBlockValue"
    .end annotation
.end field

.field private investmentAccountUnlimitedBlockValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investmentAccountUnlimitedBlockValue"
    .end annotation
.end field

.field private investmentOverdraftAvailableUsed:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investmentOverdraftAvailableUsed"
    .end annotation
.end field

.field private investmentOverdraftAvailableValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investmentOverdraftAvailableValue"
    .end annotation
.end field

.field private investmentOverdraftDueDate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investmentOverdraftDueDate"
    .end annotation
.end field

.field private investmentOverdraftInterestRate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investmentOverdraftInterestRate"
    .end annotation
.end field

.field private investmentOverdraftValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investmentOverdraftValue"
    .end annotation
.end field

.field private iofbillingdate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "iofbillingdate"
    .end annotation
.end field

.field private judicialBlockBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "judicialBlockBalance"
    .end annotation
.end field

.field private lastMoveDate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "lastMoveDate"
    .end annotation
.end field

.field private lastOverdraftUsageDate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "lastOverdraftUsageDate"
    .end annotation
.end field

.field private maxAccountBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maxAccountBalance"
    .end annotation
.end field

.field private maxAccountIndicator:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maxAccountIndicator"
    .end annotation
.end field

.field private monthlyInsolvencyRate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "monthlyInsolvencyRate"
    .end annotation
.end field

.field private monthlyInterestedRate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "monthlyInterestedRate"
    .end annotation
.end field

.field private ndiasDaysQuantity:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ndiasDaysQuantity"
    .end annotation
.end field

.field private notChargedInterestedValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "notChargedInterestedValue"
    .end annotation
.end field

.field private overdraftCheckingAccountValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "overdraftCheckingAccountValue"
    .end annotation
.end field

.field private overdraftLenderInsuranceValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "overdraftLenderInsuranceValue"
    .end annotation
.end field

.field private provisionedCreditPostingValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "provisionedCreditPostingValue"
    .end annotation
.end field

.field private provisionedDebitPostingValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "provisionedDebitPostingValue"
    .end annotation
.end field

.field private provisionedTotalBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "provisionedTotalBalance"
    .end annotation
.end field

.field private santanderDebitDay:Ljava/lang/String;
    .annotation runtime Leks;
        a = "santanderDebitDay"
    .end annotation
.end field

.field private santanderInstallmentsQuantity:Ljava/lang/String;
    .annotation runtime Leks;
        a = "santanderInstallmentsQuantity"
    .end annotation
.end field

.field private savingsBalanceValueInRelease:Ljava/lang/String;
    .annotation runtime Leks;
        a = "savingsBalanceValueInRelease"
    .end annotation
.end field

.field private secondOverdraftDescription:Ljava/lang/String;
    .annotation runtime Leks;
        a = "secondOverdraftDescription"
    .end annotation
.end field

.field private superCheckbookIndicator:Ljava/lang/String;
    .annotation runtime Leks;
        a = "superCheckbookIndicator"
    .end annotation
.end field

.field private tedBlockValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "tedBlockValue"
    .end annotation
.end field

.field private totalAvailableBalanceValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalAvailableBalanceValue"
    .end annotation
.end field

.field private totalBalanceMaxAccount:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalBalanceMaxAccount"
    .end annotation
.end field

.field private totalBlockValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalBlockValue"
    .end annotation
.end field

.field private totalBlockedBalanceValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalBlockedBalanceValue"
    .end annotation
.end field

.field private totalBlockedValuesReleaseDue01Day:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalBlockedValuesReleaseDue01Day"
    .end annotation
.end field

.field private totalBlockedValuesReleaseDue02Day:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalBlockedValuesReleaseDue02Day"
    .end annotation
.end field

.field private totalBlockedValuesReleaseDue03Day:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalBlockedValuesReleaseDue03Day"
    .end annotation
.end field

.field private totalBlockedValuesReleaseDue04Day:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalBlockedValuesReleaseDue04Day"
    .end annotation
.end field

.field private totalBlockedValuesReleaseDue05Day:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalBlockedValuesReleaseDue05Day"
    .end annotation
.end field

.field private totalBlockedValuesReleaseDue06Day:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalBlockedValuesReleaseDue06Day"
    .end annotation
.end field

.field private totalBlockedValuesReleaseDue07Day:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalBlockedValuesReleaseDue07Day"
    .end annotation
.end field

.field private totalBlockedValuesReleaseDue08Day:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalBlockedValuesReleaseDue08Day"
    .end annotation
.end field

.field private unlimitedTimeBlockValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "unlimitedTimeBlockValue"
    .end annotation
.end field

.field private usedOverdraftValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "usedOverdraftValue"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private formatValor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    invoke-static {p1}, Lnaq;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCpmfAcumulado()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->accumulatedCPMFBalanceValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    const-string v0, "0"

    goto :goto_0
.end method

.method public getCpmfProvisionadaSobreSaldo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    const-string v0, "0"

    return-object v0
.end method

.method public getDesbloqueio1Dia()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->hoursBlockValue24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    const-string v0, "0"

    goto :goto_0
.end method

.method public getDesbloqueio2Dias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->hoursBlockValue48:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    const-string v0, "0"

    goto :goto_0
.end method

.method public getDesbloqueioMais2Dias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->unlimitedTimeBlockValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    const-string v0, "0"

    goto :goto_0
.end method

.method public getIofAcumuladosAteData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->accumulatedIOFValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    const-string v0, "0"

    goto :goto_0
.end method

.method public getJurosAcumuladosAteData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->accumulatedInterestedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    const-string v0, "0"

    goto :goto_0
.end method

.method public getLancamentosProvisionadosCredito()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->provisionedCreditPostingValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v0, "0"

    goto :goto_0
.end method

.method public getLancamentosProvisionadosDebito()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->provisionedDebitPostingValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const-string v0, "0"

    goto :goto_0
.end method

.method public getLimiteDescricao1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->firstAndSecondOverdraftDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLimiteDescricao2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->secondOverdraftDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLimiteValor1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->overdraftCheckingAccountValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    const-string v0, "0"

    goto :goto_0
.end method

.method public getLimiteValor2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->investmentOverdraftValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    const-string v0, "0"

    goto :goto_0
.end method

.method public getMensagemErro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    const-string v0, ""

    return-object v0
.end method

.method public getMensagemRetorno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    const-string v0, ""

    return-object v0
.end method

.method public getProvisaoEncargos()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->provisionedTotalBalance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSaldoBloqueado()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->totalBlockValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSaldoBloqueadoJudicial()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->judicialBlockBalance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSaldoBloqueioDia()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->dailyBlockBalance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSaldoContaCorrenteContaMax()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->checkingAccountBalancePlusMax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSaldoDisponivel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->investimentAccountPlustCheckingAccountPlusMaxPlusAutomaticRedemptionValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSaldoDisponivelContaCorrenteContaMax()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->investmentAccountBalancePlusCheckningAccountPlusMaxValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSaldoDisponivelTotal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->totalAvailableBalanceValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSaldoFundosComResgateAutomatico()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->automaticRedemptionBalanceValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSaldoTotalContaCorrenteContaMax()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->totalBalanceMaxAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string v0, "0"

    goto :goto_0
.end method
