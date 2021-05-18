package br.com.santander.msgsdk.notifications.model;

import android.util.Log;
import br.com.santander.msgsdk.MSGSDK;
import is;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ProviderNotification$1 implements MSGSDK.CallbackRequestNotifications {
  public void onError(is paramis) {
    Log.d(ProviderNotification.access$000(), "PROVIDER onError: " + paramis.a());
    JSONObject jSONObject = paramis.c();
    Log.d(ProviderNotification.access$000(), "PROVIDER onSuccess - jsonObjectResult: " + jSONObject);
    Error error = new Error(paramis.b());
    ProviderNotification.access$200(ProviderNotification.this).getNotificationsResult(null, error);
  }
  
  public void onSuccess(is paramis) {
    JSONObject jSONObject;
    Log.d(ProviderNotification.access$000(), "PROVIDER onSuccess: " + paramis.a());
    if (paramis.c() == null) {
      jSONObject = new JSONObject();
    } else {
      jSONObject = jSONObject.c();
    } 
    Log.d(ProviderNotification.access$000(), "PROVIDER onSuccess - jsonObjectResult: " + jSONObject);
    if (jSONObject == null)
      return; 
    try {
      if (jSONObject.has("notifications")) {
        JSONArray jSONArray = jSONObject.getJSONArray("notifications");
      } else {
        JSONArray jSONArray = new JSONArray();
      } 
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      ProviderNotification.access$200(ProviderNotification.this).getNotificationsResult(ProviderNotification.access$100(ProviderNotification.this), null);
      return;
    } 
    int i = 0;
    while (true) {
      if (i < jSONException.length()) {
        boolean bool;
        String str;
        JSONObject jSONObject1 = jSONException.getJSONObject(i);
        NotificationDetail notificationDetail = new NotificationDetail();
        if (jSONObject1.has("text")) {
          str = jSONObject1.getString("text");
        } else {
          str = "";
        } 
        notificationDetail.setText(str);
        if (jSONObject1.has("category") && jSONObject1.getJSONObject("category").has("name")) {
          str = jSONObject1.getJSONObject("category").getString("name");
        } else {
          str = "";
        } 
        notificationDetail.setTitle(str);
        if (jSONObject1.has("sentDate")) {
          str = jSONObject1.getString("sentDate");
        } else {
          str = "";
        } 
        notificationDetail.setSentDate(str);
        if (jSONObject1.has("expirationDate")) {
          str = jSONObject1.getString("expirationDate");
        } else {
          str = "";
        } 
        notificationDetail.setExpirationDate(str);
        if (jSONObject1.has("uuid")) {
          str = jSONObject1.getString("uuid");
        } else {
          str = "";
        } 
        notificationDetail.setUuid(str);
        if (jSONObject1.has("url")) {
          str = jSONObject1.getString("url");
        } else {
          str = "";
        } 
        notificationDetail.setUrl(str);
        if (jSONObject1.has("stimulum") && jSONObject1.getJSONObject("stimulum").has("type")) {
          str = jSONObject1.getJSONObject("stimulum").getString("type");
        } else {
          str = "";
        } 
        notificationDetail.setStimulumType(str);
        if (jSONObject1.has("stimulum") && jSONObject1.getJSONObject("stimulum").has("id")) {
          str = jSONObject1.getJSONObject("stimulum").getString("id");
        } else {
          str = "";
        } 
        notificationDetail.setStimulumId(str);
        if (jSONObject1.has("timestamp")) {
          str = jSONObject1.getString("timestamp");
        } else {
          str = "";
        } 
        notificationDetail.setTimestamp(str);
        if (jSONObject1.has("status") && jSONObject1.getJSONObject("status").has("read") && Boolean.parseBoolean(jSONObject1.getJSONObject("status").getString("read"))) {
          bool = true;
        } else {
          bool = false;
        } 
        notificationDetail.setStatusRead(bool);
        ProviderNotification.access$100(ProviderNotification.this).add(notificationDetail);
        i++;
        continue;
      } 
      ProviderNotification.access$200(ProviderNotification.this).getNotificationsResult(ProviderNotification.access$100(ProviderNotification.this), null);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\model\ProviderNotification$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */