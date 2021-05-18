package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import bgy;
import bhp;
import bhv;
import bid;
import bqq;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import java.util.Locale;

abstract class WebLoginMethodHandler extends LoginMethodHandler {
  private static final String c = "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY";
  
  private static final String d = "TOKEN";
  
  private String e;
  
  WebLoginMethodHandler(Parcel paramParcel) {
    super(paramParcel);
  }
  
  WebLoginMethodHandler(LoginClient paramLoginClient) {
    super(paramLoginClient);
  }
  
  private void d(String paramString) {
    this.b.b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", paramString).apply();
  }
  
  private static final String e() {
    return "fb" + bhv.l() + "://authorize";
  }
  
  private String f() {
    return this.b.b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
  }
  
  protected Bundle a(Bundle paramBundle, LoginClient$Request paramLoginClient$Request) {
    paramBundle.putString("redirect_uri", e());
    paramBundle.putString("client_id", paramLoginClient$Request.d());
    LoginClient loginClient = this.b;
    paramBundle.putString("e2e", LoginClient.o());
    paramBundle.putString("response_type", "token,signed_request");
    paramBundle.putString("return_scopes", "true");
    paramBundle.putString("auth_type", "rerequest");
    if (c() != null)
      paramBundle.putString("sso", c()); 
    return paramBundle;
  }
  
  protected void a(LoginClient$Request paramLoginClient$Request, Bundle paramBundle, bhp parambhp) {
    LoginClient$Result loginClient$Result;
    this.e = null;
    if (paramBundle != null) {
      if (paramBundle.containsKey("e2e"))
        this.e = paramBundle.getString("e2e"); 
      try {
        AccessToken accessToken = a(paramLoginClient$Request.a(), paramBundle, b_(), paramLoginClient$Request.d());
        loginClient$Result = LoginClient$Result.a(this.b.c(), accessToken);
        CookieSyncManager.createInstance((Context)this.b.b()).sync();
        d(accessToken.c());
      } catch (bhp bhp1) {
        loginClient$Result = LoginClient$Result.a(this.b.c(), null, bhp1.getMessage());
      } 
    } else if (parambhp instanceof bhr) {
      loginClient$Result = LoginClient$Result.a(this.b.c(), "User canceled log in.");
    } else {
      this.e = null;
      String str = parambhp.getMessage();
      if (parambhp instanceof bid) {
        FacebookRequestError facebookRequestError = ((bid)parambhp).a();
        String str1 = String.format(Locale.ROOT, "%d", new Object[] { Integer.valueOf(facebookRequestError.c()) });
        str = facebookRequestError.toString();
      } else {
        paramBundle = null;
      } 
      loginClient$Result = LoginClient$Result.a(this.b.c(), null, str, (String)paramBundle);
    } 
    if (!bqq.a(this.e))
      b(this.e); 
    this.b.a(loginClient$Result);
  }
  
  protected Bundle b(LoginClient$Request paramLoginClient$Request) {
    Bundle bundle = new Bundle();
    if (!bqq.a(paramLoginClient$Request.a())) {
      String str = TextUtils.join(",", paramLoginClient$Request.a());
      bundle.putString("scope", str);
      a("scope", str);
    } 
    bundle.putString("default_audience", paramLoginClient$Request.c().getNativeProtocolAudience());
    bundle.putString("state", a(paramLoginClient$Request.e()));
    AccessToken accessToken = AccessToken.a();
    if (accessToken != null) {
      String str = accessToken.c();
    } else {
      accessToken = null;
    } 
    if (accessToken != null && accessToken.equals(f())) {
      bundle.putString("access_token", (String)accessToken);
      a("access_token", "1");
      return bundle;
    } 
    bqq.b((Context)this.b.b());
    a("access_token", "0");
    return bundle;
  }
  
  abstract bgy b_();
  
  protected String c() {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\WebLoginMethodHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */