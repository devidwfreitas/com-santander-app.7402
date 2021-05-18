package com.santander.app.emprestimo.creditopessoal.domain;

import eks;

public class ConsignadoContract {
  @eks(a = "contractDate")
  private String contractDate;
  
  @eks(a = "debtorBalance")
  private String debtorBalance;
  
  @eks(a = "descriptionBlock")
  private String descriptionBlock;
  
  @eks(a = "flagLock")
  private String flagLock;
  
  @eks(a = "note")
  private String note;
  
  @eks(a = "number")
  private String number;
  
  @eks(a = "openPortionAmount")
  private String openPortionAmount;
  
  @eks(a = "parcelAmountPaid")
  private String parcelAmountPaid;
  
  @eks(a = "pastDueAmount")
  private String pastDueAmount;
  
  @eks(a = "percentageRefinancing")
  private String percentageRefinancing;
  
  @eks(a = "plotValue")
  private String plotValue;
  
  @eks(a = "portionWinAmount")
  private String portionWinAmount;
  
  @eks(a = "registration")
  private String registration;
  
  @eks(a = "totalInstallmentAmount")
  private String totalInstallmentAmount;
  
  public String getContractDate() {
    try {
      return this.contractDate;
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public String getDebtorBalance() {
    try {
      return this.debtorBalance;
    } catch (Exception exception) {
      return "0,00 N/A";
    } 
  }
  
  public String getNumber() {
    try {
      return this.number;
    } catch (Exception exception) {
      return "0,00 N/A";
    } 
  }
  
  public String getParcelAmountPaid() {
    try {
      return this.parcelAmountPaid;
    } catch (Exception exception) {
      return "0,00 N/A";
    } 
  }
  
  public String getPlotValue() {
    try {
      return this.plotValue;
    } catch (Exception exception) {
      return "0,00 N/A";
    } 
  }
  
  public String getTotalInstallmentAmount() {
    try {
      return this.totalInstallmentAmount;
    } catch (Exception exception) {
      return "0,00 N/A";
    } 
  }
  
  public void setNumber(String paramString) {
    this.number = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\ConsignadoContract.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */