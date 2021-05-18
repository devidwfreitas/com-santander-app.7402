package br.com.santander.dynamicauth;

import android.content.Context;
import br.com.santander.dynamicauth.enums.DynamicAuthEnum;
import br.com.santander.dynamicauth.interfaces.DynamicAuthCallBack;
import br.com.santander.dynamicauth.models.OSGParametersModel;

public class DynamicAuth {
  public static void challenge(Context paramContext, OSGParametersModel paramOSGParametersModel, DynamicAuthCallBack paramDynamicAuthCallBack) {
    DynamicAuthService.challenge(paramContext, paramOSGParametersModel, paramDynamicAuthCallBack);
  }
  
  public static void challenge(Context paramContext, String paramString, DynamicAuthCallBack paramDynamicAuthCallBack) {
    OSGParametersModel oSGParametersModel = DynamicAuthService.parserChallenge(paramString);
    if (oSGParametersModel == null) {
      DynamicAuthService.initError(paramContext, null, null, null, DynamicAuthEnum.ERRO_XML_PARSER.toString());
      return;
    } 
    DynamicAuthService.challenge(paramContext, oSGParametersModel, paramDynamicAuthCallBack);
  }
  
  public static void dismissLoading() {
    DynamicAuthService.dismissLoading();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\DynamicAuth.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */