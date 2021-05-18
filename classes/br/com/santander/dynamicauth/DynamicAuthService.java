package br.com.santander.dynamicauth;

import android.content.Context;
import android.content.Intent;
import br.com.santander.dynamicauth.a.a;
import br.com.santander.dynamicauth.enums.DynamicAuthEnum;
import br.com.santander.dynamicauth.exception.DynamicAuthException;
import br.com.santander.dynamicauth.features.blink.view.BlinkActivity;
import br.com.santander.dynamicauth.features.error.view.ErrorActivity;
import br.com.santander.dynamicauth.features.main.a.a;
import br.com.santander.dynamicauth.features.main.view.LoadingActivity;
import br.com.santander.dynamicauth.interfaces.DynamicAuthCallBack;
import br.com.santander.dynamicauth.models.DynamicAuthParameters;
import br.com.santander.dynamicauth.models.OSGEntryModel;
import br.com.santander.dynamicauth.models.OSGModel;
import br.com.santander.dynamicauth.models.OSGParametersModel;
import java.io.Serializable;
import kc;

public class DynamicAuthService {
  private static DynamicAuthEnum errorReceived;
  
  private static volatile OSGModel mOSGModel = null;
  
  static {
    errorReceived = null;
  }
  
  static void challenge(Context paramContext, OSGParametersModel paramOSGParametersModel, DynamicAuthCallBack paramDynamicAuthCallBack) {
    setUp(paramContext, paramDynamicAuthCallBack);
    mOSGModel = new OSGModel();
    mOSGModel.setParameters(paramOSGParametersModel);
    identifyChallenge(paramContext);
  }
  
  static void dismissLoading() {
    a.c();
  }
  
  private static String getValueOSGData(DynamicAuthEnum paramDynamicAuthEnum) {
    OSGEntryModel oSGEntryModel = new OSGEntryModel(paramDynamicAuthEnum.toString());
    return !mOSGModel.getParameters().getEntryList().contains(oSGEntryModel) ? null : ((OSGEntryModel)mOSGModel.getParameters().getEntryList().get(mOSGModel.getParameters().getEntryList().indexOf(oSGEntryModel))).getValue();
  }
  
  private static DynamicAuthEnum identifyChallenge() {
    OSGEntryModel oSGEntryModel = new OSGEntryModel(DynamicAuthEnum.CHALLENGE_CODE.toString());
    return !mOSGModel.getParameters().getEntryList().contains(oSGEntryModel) ? null : identifyChallengeType(((OSGEntryModel)mOSGModel.getParameters().getEntryList().get(mOSGModel.getParameters().getEntryList().indexOf(oSGEntryModel))).getValue());
  }
  
  private static void identifyChallenge(Context paramContext) {
    if (mOSGModel == null || mOSGModel.getParameters() == null || mOSGModel.getParameters().getEntryList() == null || mOSGModel.getParameters().getEntryList().isEmpty()) {
      initError(paramContext, null, null, null, DynamicAuthEnum.ERRO_XML_INVALID.toString());
      return;
    } 
    DynamicAuthEnum dynamicAuthEnum1 = identifyChallenge();
    DynamicAuthEnum dynamicAuthEnum2 = identifyOSGResult();
    if (dynamicAuthEnum1 != null) {
      DynamicAuthParameters.getInstance().setChallenge(dynamicAuthEnum1);
      loadChallenge(dynamicAuthEnum1, paramContext, DynamicAuthEnum.FIRST_ATTEMPT);
      return;
    } 
    if (dynamicAuthEnum2 != null) {
      switch (kc.a[dynamicAuthEnum2.ordinal()]) {
        default:
          initError(paramContext, null, null, null, dynamicAuthEnum2.toString());
          return;
        case 2:
          loadChallenge(DynamicAuthParameters.getInstance().getChallenge(), paramContext, DynamicAuthEnum.LAST_ATTEMPT);
          return;
        case 3:
          loadChallenge(DynamicAuthParameters.getInstance().getChallenge(), paramContext, DynamicAuthEnum.NEXT_ATTEMPT);
          return;
        case 4:
          switch (kc.a[DynamicAuthParameters.getInstance().getChallenge().ordinal()]) {
            default:
              initError(paramContext, paramContext.getString(R$string.error_title_blocked_device), paramContext.getString(R$string.error_msg_blocked_device), "Ok, entendi", dynamicAuthEnum2.toString());
              return;
            case 1:
              break;
          } 
          initError(paramContext, paramContext.getString(R$string.error_title_blocked_device_pwd), "", "Fechar", dynamicAuthEnum2.toString());
          return;
        case 5:
          break;
      } 
      initError(paramContext, null, paramContext.getString(R$string.error_msg_transaction_denied), "Ok, entendi", dynamicAuthEnum2.toString());
      return;
    } 
    initError(paramContext, null, null, null, DynamicAuthEnum.ERRO_XML_INVALID.toString());
  }
  
  private static DynamicAuthEnum identifyChallengeType(String paramString) {
    return paramString.equals(DynamicAuthEnum.CODE_CSO.toString()) ? DynamicAuthEnum.CODE_CSO : (paramString.equals(DynamicAuthEnum.CODE_TOKEN_ANTIGO.toString()) ? DynamicAuthEnum.CODE_TOKEN_ANTIGO : (paramString.equals(DynamicAuthEnum.CODE_TOKEN_FISICO.toString()) ? DynamicAuthEnum.CODE_TOKEN_FISICO : (paramString.equals(DynamicAuthEnum.CODE_TOKEN_SMS.toString()) ? DynamicAuthEnum.CODE_TOKEN_SMS : (paramString.equals(DynamicAuthEnum.CODE_IDSANTANDER_OTP.toString()) ? DynamicAuthEnum.CODE_IDSANTANDER_OTP : (paramString.equals(DynamicAuthEnum.CODE_IDSANTANDER_QRCODE.toString()) ? DynamicAuthEnum.CODE_IDSANTANDER_QRCODE : (paramString.equals(DynamicAuthEnum.CODE_CARD_PWD.toString()) ? DynamicAuthEnum.CODE_CARD_PWD : (paramString.equals(DynamicAuthEnum.CODE_TOKEN_OTICO.toString()) ? DynamicAuthEnum.CODE_TOKEN_OTICO : null)))))));
  }
  
  private static DynamicAuthEnum identifyError(String paramString) {
    return paramString.equals(DynamicAuthEnum.SUCCESS_OSG_CODE.toString()) ? DynamicAuthEnum.SUCCESS_OSG_CODE : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_BLOCKED_DEVICE.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_BLOCKED_DEVICE : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_CHANNEL_NOT_FOUND.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_CHANNEL_NOT_FOUND : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_FLOW_NOT_FOUND.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_FLOW_NOT_FOUND : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_IMPLEMENTATION_CONDITION.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_IMPLEMENTATION_CONDITION : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_INVALID_FIELD.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_INVALID_FIELD : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_INVALID_FIELD_TYPE.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_INVALID_FIELD_TYPE : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_INVALID_PAREMETER.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_INVALID_PAREMETER : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_INVALID_REQUISITION.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_INVALID_REQUISITION : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_NO_ACTIVE_DEVICE.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_NO_ACTIVE_DEVICE : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_PARAMETERS_NOT_EQUALS.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_PARAMETERS_NOT_EQUALS : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_REDIS.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_REDIS : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_REQUIRED_FIELD_NOT_FOUND.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_REQUIRED_FIELD_NOT_FOUND : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_TRANSACTION_CONSULTIVE_NOT_FOUND.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_TRANSACTION_CONSULTIVE_NOT_FOUND : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_UNKNOW_AA.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_UNKNOW_AA : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_UNKNOW_EG.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_UNKNOW_EG : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_UNKNOW_WC.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_UNKNOW_WC : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_UNKNOW_SR.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_UNKNOW_SR : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_TRANSACTION_DENIED.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_TRANSACTION_DENIED : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_PENULTIMATE_AUTHENTICATION.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_PENULTIMATE_AUTHENTICATION : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_NO_AUTHORIZED_DEVICE.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_NO_AUTHORIZED_DEVICE : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_SECURITY_ELEVATION.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_SECURITY_ELEVATION : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_TRANSACTION_NOT_FOUND.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_TRANSACTION_NOT_FOUND : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_TRANSACTION_INVALID.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_TRANSACTION_INVALID : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_UNKNOW.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_UNKNOW : (paramString.equals(DynamicAuthEnum.ERRO_OSG_CODE_INVALID_AUTHENTICATION.toString()) ? DynamicAuthEnum.ERRO_OSG_CODE_INVALID_AUTHENTICATION : null)))))))))))))))))))))))));
  }
  
  private static DynamicAuthEnum identifyOSGResult() {
    OSGEntryModel oSGEntryModel = new OSGEntryModel(DynamicAuthEnum.OSG_RESULT_CODE.toString());
    return !mOSGModel.getParameters().getEntryList().contains(oSGEntryModel) ? null : identifyError(((OSGEntryModel)mOSGModel.getParameters().getEntryList().get(mOSGModel.getParameters().getEntryList().indexOf(oSGEntryModel))).getValue());
  }
  
  public static void initError(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4) {
    Intent intent = new Intent(paramContext, ErrorActivity.class);
    intent.setFlags(268435456);
    intent.putExtra("ERROR_TITLE", paramString1);
    intent.putExtra("ERROR_MSG", paramString2);
    intent.putExtra("ERROR_BTN", paramString3);
    intent.putExtra("ERROR_CODE", paramString4);
    paramContext.startActivity(intent);
  }
  
  private static void initLoadingToCardPassword(Context paramContext, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, DynamicAuthEnum paramDynamicAuthEnum) {
    Intent intent = new Intent(paramContext, LoadingActivity.class);
    intent.setFlags(268435456);
    intent.putExtra("CHALLENGE_TYPE", DynamicAuthEnum.CODE_CARD_PWD.getValue());
    intent.putExtra("CARD_CVV", paramBoolean1);
    intent.putExtra("CARD_DOCUMENT", paramBoolean3);
    intent.putExtra("CARD_EXPIRATION", paramBoolean2);
    intent.putExtra("OSG_ERROR", (Serializable)errorReceived);
    intent.putExtra("ATTEMPT", (Serializable)paramDynamicAuthEnum);
    paramContext.startActivity(intent);
  }
  
  private static void initLoadingToCso(Context paramContext, String paramString1, String paramString2, String paramString3) {
    Intent intent = new Intent(paramContext, LoadingActivity.class);
    intent.setFlags(268435456);
    intent.putExtra("CHALLENGE_TYPE", DynamicAuthEnum.CODE_CSO.getValue());
    intent.putExtra("CSO_ID", paramString1);
    intent.putExtra("CSO_POS", paramString2);
    intent.putExtra("CSO_SEQ", paramString3);
    intent.putExtra("OSG_ERROR", (Serializable)errorReceived);
    paramContext.startActivity(intent);
  }
  
  private static void initLoadingToIdSantender(Context paramContext) {
    Intent intent = new Intent(paramContext, LoadingActivity.class);
    intent.setFlags(268435456);
    intent.putExtra("CHALLENGE_TYPE", DynamicAuthEnum.CODE_IDSANTANDER_OTP.getValue());
    intent.putExtra("OSG_ERROR", (Serializable)errorReceived);
    paramContext.startActivity(intent);
  }
  
  private static void initLoadingToIdSantenderUsingQr(Context paramContext, String paramString) {
    Intent intent = new Intent(paramContext, LoadingActivity.class);
    intent.setFlags(268435456);
    intent.putExtra("CHALLENGE_TYPE", DynamicAuthEnum.CODE_IDSANTANDER_QRCODE.getValue());
    intent.putExtra("ID_SANTANDER_QR", paramString);
    intent.putExtra("OSG_ERROR", (Serializable)errorReceived);
    paramContext.startActivity(intent);
  }
  
  private static void initLoadingToSms(Context paramContext, DynamicAuthEnum paramDynamicAuthEnum) {
    Intent intent = new Intent(paramContext, LoadingActivity.class);
    intent.setFlags(268435456);
    intent.putExtra("CHALLENGE_TYPE", DynamicAuthEnum.CODE_TOKEN_SMS.getValue());
    intent.putExtra("OSG_ERROR", (Serializable)errorReceived);
    intent.putExtra("ATTEMPT", (Serializable)paramDynamicAuthEnum);
    paramContext.startActivity(intent);
  }
  
  private static void initOpticalToken(Context paramContext, String paramString1, String paramString2) {
    Intent intent = new Intent(paramContext, BlinkActivity.class);
    intent.setFlags(268435456);
    intent.putExtra("CHALLENGE_TYPE", DynamicAuthEnum.CODE_TOKEN_OTICO.getValue());
    intent.putExtra("TOKEN_OPTOCAL_SERIAL", paramString2);
    intent.putExtra("TOKEN_OPTOCAL_VIDEO", paramString1);
    intent.putExtra("OSG_ERROR", (Serializable)errorReceived);
    paramContext.startActivity(intent);
  }
  
  private static void initToken(Context paramContext, boolean paramBoolean) {
    Intent intent = new Intent(paramContext, LoadingActivity.class);
    intent.setFlags(268435456);
    intent.putExtra("CHALLENGE_TYPE", DynamicAuthEnum.TOKEN_FISICO.getValue());
    intent.putExtra("TOKEN_SHOW_SERIAL", paramBoolean);
    intent.putExtra("OSG_ERROR", (Serializable)errorReceived);
    paramContext.startActivity(intent);
  }
  
  private static void loadChallenge(DynamicAuthEnum paramDynamicAuthEnum1, Context paramContext, DynamicAuthEnum paramDynamicAuthEnum2) {
    String str1;
    String str2;
    String str3;
    if (paramDynamicAuthEnum1 == null);
    switch (kc.a[paramDynamicAuthEnum1.ordinal()]) {
      case 9:
        return;
      default:
        initError(paramContext, null, null, null, paramDynamicAuthEnum1.toString());
        return;
      case 6:
        str1 = getValueOSGData(DynamicAuthEnum.CSO_ID);
        str2 = getValueOSGData(DynamicAuthEnum.CSO_POSICAO);
        str3 = getValueOSGData(DynamicAuthEnum.CSO_SEQUENCIA);
        if (str1 != null && !str1.isEmpty() && str2 != null && !str2.isEmpty() && str3 != null && !str3.isEmpty()) {
          initLoadingToCso(paramContext, str1, str2, str3);
          return;
        } 
        initError(paramContext, null, null, null, DynamicAuthEnum.ERRO_CSO_SEQUENCE.toString());
        return;
      case 7:
        initLoadingToIdSantender(paramContext);
        return;
      case 8:
        str1 = getValueOSGData(DynamicAuthEnum.ID_SANTANDER);
        if (str1 != null && !str1.isEmpty()) {
          initLoadingToIdSantenderUsingQr(paramContext, str1);
          return;
        } 
        initError(paramContext, null, null, null, DynamicAuthEnum.ERRO_ID_SANTANDER.toString());
        return;
      case 10:
        initToken(paramContext, "S".equalsIgnoreCase(getValueOSGData(DynamicAuthEnum.TOKEN_FISICO)));
        return;
      case 11:
        initLoadingToSms(paramContext, (DynamicAuthEnum)str2);
        return;
      case 1:
        initLoadingToCardPassword(paramContext, false, false, false, (DynamicAuthEnum)str2);
        return;
      case 12:
        break;
    } 
    initOpticalToken(paramContext, getValueOSGData(DynamicAuthEnum.TOKEN_OTICO_VIDEO), getValueOSGData(DynamicAuthEnum.TOKEN_OTICO_CODE));
  }
  
  static OSGParametersModel parserChallenge(String paramString) {
    OSGModel oSGModel2 = new OSGModel();
    a a = new a();
    OSGModel oSGModel1 = oSGModel2;
    if (paramString != null) {
      oSGModel1 = oSGModel2;
      if (!paramString.isEmpty())
        oSGModel1 = (OSGModel)a.a(OSGModel.class, paramString); 
    } 
    return (oSGModel1 != null) ? oSGModel1.getParameters() : null;
  }
  
  private static void setUp(Context paramContext, DynamicAuthCallBack paramDynamicAuthCallBack) {
    if (paramDynamicAuthCallBack == null)
      throw new DynamicAuthException("DynamicAuthCallBack null"); 
    if (paramContext == null)
      throw new DynamicAuthException("App context null"); 
    DynamicAuthParameters.getInstance().setCallBack(paramDynamicAuthCallBack);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\DynamicAuthService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */