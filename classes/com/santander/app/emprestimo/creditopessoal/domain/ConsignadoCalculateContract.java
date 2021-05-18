package com.santander.app.emprestimo.creditopessoal.domain;

import eks;
import hyx;
import java.util.Calendar;

public class ConsignadoCalculateContract {
  @eks(a = "atualizationPercentage")
  private String atualizationPercentage;
  
  @eks(a = "blockedFlag")
  private String blockedFlag;
  
  @eks(a = "blockedReason")
  private String blockedReason;
  
  @eks(a = "clientRegistrationId")
  private String clientRegistrationId;
  
  @eks(a = "contractDate")
  private String contractDate;
  
  @eks(a = "debitorValue")
  private String debitorValue;
  
  @eks(a = "id")
  private String id;
  
  @eks(a = "installmentValue")
  private String installmentValue;
  
  @eks(a = "installmentsQuantity")
  private String installmentsQuantity;
  
  @eks(a = "observation")
  private String observation;
  
  @eks(a = "openInstallmentsQuantity")
  private String openInstallmentsQuantity;
  
  @eks(a = "overdueInstallmentsQuantity")
  private String overdueInstallmentsQuantity;
  
  @eks(a = "paidInstallmentsQuantity")
  private String paidInstallmentsQuantity;
  
  @eks(a = "toOverdueInstallmentsQuantity")
  private String toOverdueInstallmentsQuantity;
  
  public String getAtualizationPercentage() {
    return this.atualizationPercentage;
  }
  
  public String getBlockedReason() {
    return this.blockedReason;
  }
  
  public String getClientRegistrationId() {
    return this.clientRegistrationId;
  }
  
  public String getContractDate() {
    try {
      Calendar calendar = hyx.d(this.contractDate);
      return hyx.c("dd/MM/yyyy").format(calendar.getTime());
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public String getDebitorValue() {
    return this.debitorValue;
  }
  
  public String getId() {
    return this.id;
  }
  
  public String getInstallmentValue() {
    try {
      float f = Float.parseFloat(this.installmentValue);
      return hyx.b().format(Float.valueOf(f));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getInstallmentsQuantity() {
    return this.installmentsQuantity;
  }
  
  public String getObservation() {
    return this.observation;
  }
  
  public String getOpenInstallmentsQuantity() {
    return this.openInstallmentsQuantity;
  }
  
  public String getOverdueInstallmentsQuantity() {
    return this.overdueInstallmentsQuantity;
  }
  
  public String getPaidInstallmentsQuantity() {
    return this.paidInstallmentsQuantity;
  }
  
  public String getToOverdueInstallmentsQuantity() {
    return this.toOverdueInstallmentsQuantity;
  }
  
  public boolean isBlockedFlag() {
    return (this.blockedFlag != null && this.blockedFlag.equalsIgnoreCase("true"));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\ConsignadoCalculateContract.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */