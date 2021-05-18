package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import bgy;
import bhp;
import bla;
import bqq;
import com.facebook.AccessToken;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class LoginMethodHandler implements Parcelable {
  Map<String, String> a;
  
  public LoginClient b;
  
  LoginMethodHandler(Parcel paramParcel) {
    this.a = bqq.a(paramParcel);
  }
  
  LoginMethodHandler(LoginClient paramLoginClient) {
    this.b = paramLoginClient;
  }
  
  static AccessToken a(Bundle paramBundle, bgy parambgy, String paramString) {
    Date date = bqq.a(paramBundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
    ArrayList arrayList = paramBundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
    String str = paramBundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
    return bqq.a(str) ? null : new AccessToken(str, paramString, paramBundle.getString("com.facebook.platform.extra.USER_ID"), arrayList, null, parambgy, date, new Date());
  }
  
  public static AccessToken a(Collection<String> paramCollection, Bundle paramBundle, bgy parambgy, String paramString) {
    Date date = bqq.a(paramBundle, "expires_in", new Date());
    String str2 = paramBundle.getString("access_token");
    String str1 = paramBundle.getString("granted_scopes");
    if (!bqq.a(str1))
      paramCollection = new ArrayList<String>(Arrays.asList(str1.split(","))); 
    str1 = paramBundle.getString("denied_scopes");
    if (!bqq.a(str1)) {
      ArrayList arrayList = new ArrayList(Arrays.asList((Object[])str1.split(",")));
    } else {
      str1 = null;
    } 
    return bqq.a(str2) ? null : new AccessToken(str2, paramString, c(paramBundle.getString("signed_request")), paramCollection, (Collection)str1, parambgy, date, new Date());
  }
  
  public static String c(String paramString) {
    if (paramString == null || paramString.isEmpty())
      throw new bhp("Authorization response does not contain the signed_request"); 
    try {
      String[] arrayOfString = paramString.split("\\.");
      if (arrayOfString.length == 2)
        return (new JSONObject(new String(Base64.decode(arrayOfString[1], 0), "UTF-8"))).getString("user_id"); 
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
    
    } catch (JSONException jSONException) {}
    throw new bhp("Failed to retrieve user_id from signed_request");
  }
  
  abstract String a();
  
  protected String a(String paramString) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("0_auth_logger_id", paramString);
      jSONObject.put("3_method", a());
      a(jSONObject);
    } catch (JSONException jSONException) {
      Log.w("LoginMethodHandler", "Error creating client state json: " + jSONException.getMessage());
    } 
    return jSONObject.toString();
  }
  
  void a(LoginClient paramLoginClient) {
    if (this.b != null)
      throw new bhp("Can't set LoginClient if it is already set."); 
    this.b = paramLoginClient;
  }
  
  protected void a(String paramString, Object paramObject) {
    if (this.a == null)
      this.a = new HashMap<String, String>(); 
    Map<String, String> map = this.a;
    if (paramObject == null) {
      paramObject = null;
    } else {
      paramObject = paramObject.toString();
    } 
    map.put(paramString, paramObject);
  }
  
  void a(JSONObject paramJSONObject) {}
  
  boolean a(int paramInt1, int paramInt2, Intent paramIntent) {
    return false;
  }
  
  abstract boolean a(LoginClient$Request paramLoginClient$Request);
  
  void b() {}
  
  protected void b(String paramString) {
    String str = this.b.c().d();
    bla bla = bla.c((Context)this.b.b(), str);
    Bundle bundle = new Bundle();
    bundle.putString("fb_web_login_e2e", paramString);
    bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
    bundle.putString("app_id", str);
    bla.a("fb_dialogs_web_login_dialog_complete", null, bundle);
  }
  
  boolean d() {
    return false;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    bqq.a(paramParcel, this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\LoginMethodHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */