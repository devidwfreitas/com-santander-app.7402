package br.com.santander.dynamicauth.models;

import br.com.santander.dynamicauth.enums.DynamicAuthEnum;
import br.com.santander.dynamicauth.interfaces.DynamicAuthCallBack;
import java.io.Serializable;

public class DynamicAuthParameters implements Serializable {
  private static DynamicAuthParameters instance;
  
  private DynamicAuthCallBack callBack;
  
  private DynamicAuthEnum challenge;
  
  public static DynamicAuthParameters getInstance() {
    if (instance == null)
      instance = new DynamicAuthParameters(); 
    return instance;
  }
  
  public DynamicAuthCallBack getCallBack() {
    return this.callBack;
  }
  
  public DynamicAuthEnum getChallenge() {
    return this.challenge;
  }
  
  public void setCallBack(DynamicAuthCallBack paramDynamicAuthCallBack) {
    this.callBack = paramDynamicAuthCallBack;
  }
  
  public void setChallenge(DynamicAuthEnum paramDynamicAuthEnum) {
    this.challenge = paramDynamicAuthEnum;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\models\DynamicAuthParameters.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */