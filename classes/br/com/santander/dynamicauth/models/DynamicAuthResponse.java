package br.com.santander.dynamicauth.models;

import br.com.santander.dynamicauth.enums.DynamicAuthEnum;

public class DynamicAuthResponse {
  private DynamicAuthEnum authType;
  
  private Object data;
  
  public DynamicAuthResponse() {}
  
  public DynamicAuthResponse(DynamicAuthEnum paramDynamicAuthEnum, Object paramObject) {
    this.authType = paramDynamicAuthEnum;
    this.data = paramObject;
  }
  
  public DynamicAuthEnum getAuthType() {
    return this.authType;
  }
  
  public Object getData() {
    return this.data;
  }
  
  public void setAuthType(DynamicAuthEnum paramDynamicAuthEnum) {
    this.authType = paramDynamicAuthEnum;
  }
  
  public void setData(Object paramObject) {
    this.data = paramObject;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\models\DynamicAuthResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */