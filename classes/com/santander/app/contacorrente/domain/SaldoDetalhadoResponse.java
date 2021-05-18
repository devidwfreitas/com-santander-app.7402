package com.santander.app.contacorrente.domain;

import eks;
import java.io.Serializable;
import nab;
import naq;

public class SaldoDetalhadoResponse implements SaldoDetalhado, Serializable {
  @eks(a = "accountingDateBlockedValuesSearch")
  private String accountingDateBlockedValuesSearch;
  
  @eks(a = "accumulatedCPMFBalanceValue")
  private String accumulatedCPMFBalanceValue;
  
  @eks(a = "accumulatedCPMFValue")
  private String accumulatedCPMFValue;
  
  @eks(a = "accumulatedIOFEndDateValue")
  private String accumulatedIOFEndDateValue;
  
  @eks(a = "accumulatedIOFValue")
  private String accumulatedIOFValue;
  
  @eks(a = "accumulatedInterestedValue")
  private String accumulatedInterestedValue;
  
  @eks(a = "accumulatedInterestedsValues")
  private String accumulatedInterestedsValues;
  
  @eks(a = "aea")
  private String aea;
  
  @eks(a = "automaticRedemptionAccountIndicator")
  private String automaticRedemptionAccountIndicator;
  
  @eks(a = "automaticRedemptionBalanceValue")
  private String automaticRedemptionBalanceValue;
  
  @eks(a = "availableBalanceValue")
  private String availableBalanceValue;
  
  @eks(a = "availableCreditValue")
  private String availableCreditValue;
  
  @eks(a = "availableOverdraftValue")
  private String availableOverdraftValue;
  
  @eks(a = "availableSantanderOverdraftValue")
  private String availableSantanderOverdraftValue;
  
  @eks(a = "balanceSignal")
  private String balanceSignal;
  
  @eks(a = "bankDestinationAcccount")
  private String bankDestinationAcccount;
  
  @eks(a = "blockedBalanceTotalValue")
  private String blockedBalanceTotalValue;
  
  @eks(a = "blockedCheckbookIndicator")
  private String blockedCheckbookIndicator;
  
  @eks(a = "branchDestinationBranch")
  private String branchDestinationBranch;
  
  @eks(a = "checkingAccountBalance")
  private String checkingAccountBalance;
  
  @eks(a = "checkingAccountBalanceAvailableValue")
  private String checkingAccountBalanceAvailableValue;
  
  @eks(a = "checkingAccountBalancePlusMax")
  private String checkingAccountBalancePlusMax;
  
  @eks(a = "checkingAccountBlockedBalanceValuePlustInvestmentAccountPlusJudicialBlock")
  private String checkingAccountBlockedBalanceValuePlustInvestmentAccountPlusJudicialBlock;
  
  @eks(a = "checkingAccountJudicialBlockBalanceValue")
  private String checkingAccountJudicialBlockBalanceValue;
  
  @eks(a = "checkingInvestmentAccountBalanceValue")
  private String checkingInvestmentAccountBalanceValue;
  
  @eks(a = "contractDueDate")
  private String contractDueDate;
  
  @eks(a = "coverageCCIIndicator")
  private String coverageCCIIndicator;
  
  @eks(a = "cpmfBillingIndicator")
  private String cpmfBillingIndicator;
  
  @eks(a = "dailyBlockBalance")
  private String dailyBlockBalance;
  
  @eks(a = "destinationAccountNumber")
  private String destinationAccountNumber;
  
  @eks(a = "firstAndSecondOverdraftDescription")
  private String firstAndSecondOverdraftDescription;
  
  @eks(a = "fundsAccountBalanceIndicator")
  private String fundsAccountBalanceIndicator;
  
  @eks(a = "hoursBlockValue24")
  private String hoursBlockValue24;
  
  @eks(a = "hoursBlockValue48")
  private String hoursBlockValue48;
  
  @eks(a = "interestedBillingDate")
  private String interestedBillingDate;
  
  @eks(a = "investimentAccountJudicialBlockBalanceValue")
  private String investimentAccountJudicialBlockBalanceValue;
  
  @eks(a = "investimentAccountNumber")
  private String investimentAccountNumber;
  
  @eks(a = "investimentAccountPlustCheckingAccountPlusMaxPlusAutomaticRedemptionValue")
  private String investimentAccountPlustCheckingAccountPlusMaxPlusAutomaticRedemptionValue;
  
  @eks(a = "investimentBank")
  private String investimentBank;
  
  @eks(a = "investimentBranchCode")
  private String investimentBranchCode;
  
  @eks(a = "investmentAccount24HoursBlockValue")
  private String investmentAccount24HoursBlockValue;
  
  @eks(a = "investmentAccount48HoursBlockValue")
  private String investmentAccount48HoursBlockValue;
  
  @eks(a = "investmentAccountAvailableBalanceValue")
  private String investmentAccountAvailableBalanceValue;
  
  @eks(a = "investmentAccountBalancePlusCheckningAccountPlusMaxValue")
  private String investmentAccountBalancePlusCheckningAccountPlusMaxValue;
  
  @eks(a = "investmentAccountPlusCheckingAccountValue")
  private String investmentAccountPlusCheckingAccountValue;
  
  @eks(a = "investmentAccountTEDBlockValue")
  private String investmentAccountTEDBlockValue;
  
  @eks(a = "investmentAccountTotalBlockValue")
  private String investmentAccountTotalBlockValue;
  
  @eks(a = "investmentAccountUnlimitedBlockValue")
  private String investmentAccountUnlimitedBlockValue;
  
  @eks(a = "investmentOverdraftAvailableUsed")
  private String investmentOverdraftAvailableUsed;
  
  @eks(a = "investmentOverdraftAvailableValue")
  private String investmentOverdraftAvailableValue;
  
  @eks(a = "investmentOverdraftDueDate")
  private String investmentOverdraftDueDate;
  
  @eks(a = "investmentOverdraftInterestRate")
  private String investmentOverdraftInterestRate;
  
  @eks(a = "investmentOverdraftValue")
  private String investmentOverdraftValue;
  
  @eks(a = "iofbillingdate")
  private String iofbillingdate;
  
  @eks(a = "judicialBlockBalance")
  private String judicialBlockBalance;
  
  @eks(a = "lastMoveDate")
  private String lastMoveDate;
  
  @eks(a = "lastOverdraftUsageDate")
  private String lastOverdraftUsageDate;
  
  @eks(a = "maxAccountBalance")
  private String maxAccountBalance;
  
  @eks(a = "maxAccountIndicator")
  private String maxAccountIndicator;
  
  @eks(a = "monthlyInsolvencyRate")
  private String monthlyInsolvencyRate;
  
  @eks(a = "monthlyInterestedRate")
  private String monthlyInterestedRate;
  
  @eks(a = "ndiasDaysQuantity")
  private String ndiasDaysQuantity;
  
  @eks(a = "notChargedInterestedValue")
  private String notChargedInterestedValue;
  
  @eks(a = "overdraftCheckingAccountValue")
  private String overdraftCheckingAccountValue;
  
  @eks(a = "overdraftLenderInsuranceValue")
  private String overdraftLenderInsuranceValue;
  
  @eks(a = "provisionedCreditPostingValue")
  private String provisionedCreditPostingValue;
  
  @eks(a = "provisionedDebitPostingValue")
  private String provisionedDebitPostingValue;
  
  @eks(a = "provisionedTotalBalance")
  private String provisionedTotalBalance;
  
  @eks(a = "santanderDebitDay")
  private String santanderDebitDay;
  
  @eks(a = "santanderInstallmentsQuantity")
  private String santanderInstallmentsQuantity;
  
  @eks(a = "savingsBalanceValueInRelease")
  private String savingsBalanceValueInRelease;
  
  @eks(a = "secondOverdraftDescription")
  private String secondOverdraftDescription;
  
  @eks(a = "superCheckbookIndicator")
  private String superCheckbookIndicator;
  
  @eks(a = "tedBlockValue")
  private String tedBlockValue;
  
  @eks(a = "totalAvailableBalanceValue")
  private String totalAvailableBalanceValue;
  
  @eks(a = "totalBalanceMaxAccount")
  private String totalBalanceMaxAccount;
  
  @eks(a = "totalBlockValue")
  private String totalBlockValue;
  
  @eks(a = "totalBlockedBalanceValue")
  private String totalBlockedBalanceValue;
  
  @eks(a = "totalBlockedValuesReleaseDue01Day")
  private String totalBlockedValuesReleaseDue01Day;
  
  @eks(a = "totalBlockedValuesReleaseDue02Day")
  private String totalBlockedValuesReleaseDue02Day;
  
  @eks(a = "totalBlockedValuesReleaseDue03Day")
  private String totalBlockedValuesReleaseDue03Day;
  
  @eks(a = "totalBlockedValuesReleaseDue04Day")
  private String totalBlockedValuesReleaseDue04Day;
  
  @eks(a = "totalBlockedValuesReleaseDue05Day")
  private String totalBlockedValuesReleaseDue05Day;
  
  @eks(a = "totalBlockedValuesReleaseDue06Day")
  private String totalBlockedValuesReleaseDue06Day;
  
  @eks(a = "totalBlockedValuesReleaseDue07Day")
  private String totalBlockedValuesReleaseDue07Day;
  
  @eks(a = "totalBlockedValuesReleaseDue08Day")
  private String totalBlockedValuesReleaseDue08Day;
  
  @eks(a = "unlimitedTimeBlockValue")
  private String unlimitedTimeBlockValue;
  
  @eks(a = "usedOverdraftValue")
  private String usedOverdraftValue;
  
  private String formatValor(String paramString) {
    return naq.n(paramString);
  }
  
  public String getCpmfAcumulado() {
    try {
      return formatValor(nab.a().c(this.accumulatedCPMFBalanceValue));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getCpmfProvisionadaSobreSaldo() {
    return "0";
  }
  
  public String getDesbloqueio1Dia() {
    try {
      return formatValor(nab.a().c(this.hoursBlockValue24));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getDesbloqueio2Dias() {
    try {
      return formatValor(nab.a().c(this.hoursBlockValue48));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getDesbloqueioMais2Dias() {
    try {
      return formatValor(nab.a().c(this.unlimitedTimeBlockValue));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getIofAcumuladosAteData() {
    try {
      return formatValor(nab.a().c(this.accumulatedIOFValue));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getJurosAcumuladosAteData() {
    try {
      return formatValor(nab.a().c(this.accumulatedInterestedValue));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getLancamentosProvisionadosCredito() {
    try {
      return formatValor(nab.a().c(this.provisionedCreditPostingValue));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getLancamentosProvisionadosDebito() {
    try {
      return formatValor(nab.a().c(this.provisionedDebitPostingValue));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getLimiteDescricao1() {
    return this.firstAndSecondOverdraftDescription;
  }
  
  public String getLimiteDescricao2() {
    return this.secondOverdraftDescription;
  }
  
  public String getLimiteValor1() {
    try {
      return formatValor(nab.a().c(this.overdraftCheckingAccountValue));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getLimiteValor2() {
    try {
      return formatValor(nab.a().c(this.investmentOverdraftValue));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getMensagemErro() {
    return "";
  }
  
  public String getMensagemRetorno() {
    return "";
  }
  
  public String getProvisaoEncargos() {
    try {
      return formatValor(nab.a().c(this.provisionedTotalBalance));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getSaldoBloqueado() {
    try {
      return formatValor(nab.a().c(this.totalBlockValue));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getSaldoBloqueadoJudicial() {
    try {
      return formatValor(nab.a().c(this.judicialBlockBalance));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getSaldoBloqueioDia() {
    try {
      return formatValor(nab.a().c(this.dailyBlockBalance));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getSaldoContaCorrenteContaMax() {
    try {
      return formatValor(nab.a().c(this.checkingAccountBalancePlusMax));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getSaldoDisponivel() {
    try {
      return formatValor(nab.a().c(this.investimentAccountPlustCheckingAccountPlusMaxPlusAutomaticRedemptionValue));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getSaldoDisponivelContaCorrenteContaMax() {
    try {
      return formatValor(nab.a().c(this.investmentAccountBalancePlusCheckningAccountPlusMaxValue));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getSaldoDisponivelTotal() {
    try {
      return formatValor(nab.a().c(this.totalAvailableBalanceValue));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getSaldoFundosComResgateAutomatico() {
    try {
      return formatValor(nab.a().c(this.automaticRedemptionBalanceValue));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getSaldoTotalContaCorrenteContaMax() {
    try {
      return formatValor(nab.a().c(this.totalBalanceMaxAccount));
    } catch (Exception exception) {
      return "0";
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\contacorrente\domain\SaldoDetalhadoResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */