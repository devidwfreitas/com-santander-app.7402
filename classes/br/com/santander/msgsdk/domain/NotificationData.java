package br.com.santander.msgsdk.domain;

import android.os.Bundle;
import android.util.Log;
import br.com.santander.msgsdk.util.Utils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class NotificationData {
  public static final String ACTION_SPLITTER = ";";
  
  public static final int CONTEXTO = 1;
  
  public static final int INTERATIVO = 3;
  
  public static final String IN_ACTION_SPLITTER = "\\|";
  
  private static final String KEY = "metadata";
  
  private static final String TAG = NotificationData.class.getSimpleName();
  
  public static final int URL = 2;
  
  private boolean callbackEnabled;
  
  private List<InterAcao> interAcaoList;
  
  private String message;
  
  private String metadata;
  
  private String msgPushId;
  
  private String msgPushInterativo;
  
  private String msgPushValue;
  
  private String pushId;
  
  private boolean sandboxEnable;
  
  private String stimulumId;
  
  private String title;
  
  private String userData;
  
  private String userId;
  
  private String uuid;
  
  public NotificationData() {}
  
  public NotificationData(Bundle paramBundle) {
    String str;
    Log.d(TAG, "BUNDLE:" + paramBundle);
    if (!Utils.isNullOrEmpty(paramBundle.getString("title"))) {
      str = paramBundle.getString("title");
    } else {
      str = "";
    } 
    this.title = str;
    if (!Utils.isNullOrEmpty(paramBundle.getString("message"))) {
      str = paramBundle.getString("message");
    } else {
      str = "";
    } 
    this.message = str;
    this.metadata = paramBundle.getString("metadata");
    Log.d(TAG, "METADATA:" + this.metadata);
    try {
      String str1;
      JSONObject jSONObject = new JSONObject(this.metadata);
      if (jSONObject.has("userData")) {
        str1 = jSONObject.getJSONObject("userData").toString();
      } else {
        str1 = "";
      } 
      this.userData = str1;
      if (jSONObject.has("pushId")) {
        str1 = jSONObject.getString("pushId");
      } else {
        str1 = "";
      } 
      this.pushId = str1;
      if (jSONObject.has("userId")) {
        str1 = jSONObject.getString("userId");
      } else {
        str1 = "";
      } 
      this.userId = str1;
      if (jSONObject.has("userData")) {
        if (jSONObject.getJSONObject("userData").has("msgPushValue")) {
          str1 = jSONObject.getJSONObject("userData").getString("msgPushValue");
        } else {
          str1 = "";
        } 
      } else {
        str1 = "";
      } 
      this.msgPushValue = str1;
      if (jSONObject.has("userData")) {
        if (jSONObject.getJSONObject("userData").has("msgPushId")) {
          str1 = jSONObject.getJSONObject("userData").getString("msgPushId");
        } else {
          str1 = "";
        } 
      } else {
        str1 = "";
      } 
      this.msgPushId = str1;
      if (jSONObject.has("userData")) {
        if (jSONObject.getJSONObject("userData").has("stimulumId")) {
          str1 = jSONObject.getJSONObject("userData").getString("stimulumId");
        } else {
          str1 = "";
        } 
      } else {
        str1 = "";
      } 
      this.stimulumId = str1;
      if (jSONObject.has("userData")) {
        if (jSONObject.getJSONObject("userData").has("msgPushInterativo")) {
          str1 = jSONObject.getJSONObject("userData").getString("msgPushInterativo");
        } else {
          str1 = "";
        } 
      } else {
        str1 = "";
      } 
      this.msgPushInterativo = str1;
      return;
    } catch (JSONException jSONException) {
      Log.d(TAG, "Notification Parse - JSONException");
      return;
    } 
  }
  
  private void loadInterAcaoList() {
    this.interAcaoList = new ArrayList<InterAcao>();
    if (this.msgPushInterativo != null && !"".equals(this.msgPushInterativo)) {
      String[] arrayOfString = this.msgPushInterativo.split(";");
      int j = arrayOfString.length;
      for (int i = 0; i < j; i++) {
        String[] arrayOfString1 = arrayOfString[i].split("\\|");
        InterAcao interAcao = new InterAcao(arrayOfString1[0], arrayOfString1[1]);
        int k = -1;
        try {
          int m = Integer.parseInt(arrayOfString1[2]);
          k = m;
        } catch (Exception exception) {
          Log.e(TAG, exception.getMessage(), exception);
        } 
        interAcao.setIcon(k);
        this.interAcaoList.add(interAcao);
      } 
    } 
  }
  
  public List<InterAcao> getInterAcaoList() {
    if (this.interAcaoList == null && this.msgPushInterativo != null)
      loadInterAcaoList(); 
    return this.interAcaoList;
  }
  
  public String getMessage() {
    return this.message;
  }
  
  public String getMsgPushId() {
    return this.msgPushId;
  }
  
  public String getMsgPushInterativo() {
    return this.msgPushInterativo;
  }
  
  public String getMsgPushValue() {
    return this.msgPushValue;
  }
  
  public String getPushId() {
    return this.pushId;
  }
  
  public String getStimulumId() {
    return this.stimulumId;
  }
  
  public String getTitle() {
    return this.title;
  }
  
  public String getUserId() {
    return this.userId;
  }
  
  public String getUuid() {
    return this.uuid;
  }
  
  public boolean isCallbackEnabled() {
    return this.callbackEnabled;
  }
  
  public boolean isSandboxEnable() {
    return this.sandboxEnable;
  }
  
  public void setCallbackEnabled(boolean paramBoolean) {
    this.callbackEnabled = paramBoolean;
  }
  
  public void setInterAcaoList(List<InterAcao> paramList) {
    this.interAcaoList = paramList;
  }
  
  public void setMessage(String paramString) {
    this.message = paramString;
  }
  
  public void setMsgPushId(String paramString) {
    this.msgPushId = paramString;
  }
  
  public void setMsgPushInterativo(String paramString) {
    this.msgPushInterativo = paramString;
  }
  
  public void setMsgPushValue(String paramString) {
    this.msgPushValue = paramString;
  }
  
  public void setPushId(String paramString) {
    this.pushId = paramString;
  }
  
  public void setSandboxEnable(boolean paramBoolean) {
    this.sandboxEnable = paramBoolean;
  }
  
  public void setStimulumId(String paramString) {
    this.stimulumId = paramString;
  }
  
  public void setTitle(String paramString) {
    this.title = paramString;
  }
  
  public void setUserId(String paramString) {
    this.userId = paramString;
  }
  
  public void setUuid(String paramString) {
    this.uuid = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\domain\NotificationData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */