package com.santander.app.emprestimo.creditopessoal.domain;

import eks;
import java.util.List;

public class ConsignadoCalculateRequest {
  @eks(a = "contracts")
  protected List<ConsignadoContract> contracts;
  
  @eks(a = "installmentsQuantity")
  protected String installmentsQuantity;
  
  @eks(a = "installmentsValue")
  protected String installmentsValue = "0";
  
  @eks(a = "requestedValue")
  protected String requestedValue;
  
  @eks(a = "secureFlag")
  protected String secureFlag;
  
  public ConsignadoCalculateRequest(float paramFloat, int paramInt) {
    this.requestedValue = String.valueOf(paramFloat);
    this.installmentsQuantity = String.valueOf(paramInt);
    setSecureFlag(true);
  }
  
  public void setSecureFlag(boolean paramBoolean) {
    String str;
    if (paramBoolean) {
      str = "true";
    } else {
      str = "false";
    } 
    this.secureFlag = str;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\ConsignadoCalculateRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */