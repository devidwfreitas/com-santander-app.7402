package br.com.santander.dynamicauth.interfaces;

import br.com.santander.dynamicauth.models.DynamicAuthResponse;

public interface DynamicAuthCallBack {
  void onFinish();
  
  void onSuccess(DynamicAuthResponse paramDynamicAuthResponse);
  
  void onTag(String paramString);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\interfaces\DynamicAuthCallBack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */