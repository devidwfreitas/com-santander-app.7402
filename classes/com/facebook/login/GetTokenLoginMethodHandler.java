package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import bgy;
import bql;
import bqq;
import bqt;
import brz;
import bsa;
import bsb;
import bsc;
import com.facebook.AccessToken;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class GetTokenLoginMethodHandler extends LoginMethodHandler {
  public static final Parcelable.Creator<GetTokenLoginMethodHandler> CREATOR = (Parcelable.Creator<GetTokenLoginMethodHandler>)new bsc();
  
  private brz c;
  
  public GetTokenLoginMethodHandler(Parcel paramParcel) {
    super(paramParcel);
  }
  
  GetTokenLoginMethodHandler(LoginClient paramLoginClient) {
    super(paramLoginClient);
  }
  
  String a() {
    return "get_token";
  }
  
  public void a(LoginClient$Request paramLoginClient$Request, Bundle paramBundle) {
    if (this.c != null)
      this.c.a(null); 
    this.c = null;
    this.b.n();
    if (paramBundle != null) {
      ArrayList arrayList = paramBundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
      Set<String> set = paramLoginClient$Request.a();
      if (arrayList != null && (set == null || arrayList.containsAll(set))) {
        c(paramLoginClient$Request, paramBundle);
        return;
      } 
      HashSet<String> hashSet = new HashSet();
      for (String str : set) {
        if (!arrayList.contains(str))
          hashSet.add(str); 
      } 
      if (!hashSet.isEmpty())
        a("new_permissions", TextUtils.join(",", hashSet)); 
      paramLoginClient$Request.a(hashSet);
    } 
    this.b.i();
  }
  
  boolean a(LoginClient$Request paramLoginClient$Request) {
    this.c = new brz((Context)this.b.b(), paramLoginClient$Request.d());
    if (!this.c.b())
      return false; 
    this.b.m();
    bsa bsa = new bsa(this, paramLoginClient$Request);
    this.c.a((bql)bsa);
    return true;
  }
  
  void b() {
    if (this.c != null) {
      this.c.c();
      this.c.a(null);
      this.c = null;
    } 
  }
  
  public void b(LoginClient$Request paramLoginClient$Request, Bundle paramBundle) {
    AccessToken accessToken = a(paramBundle, bgy.FACEBOOK_APPLICATION_SERVICE, paramLoginClient$Request.d());
    LoginClient$Result loginClient$Result = LoginClient$Result.a(this.b.c(), accessToken);
    this.b.a(loginClient$Result);
  }
  
  void c(LoginClient$Request paramLoginClient$Request, Bundle paramBundle) {
    String str = paramBundle.getString("com.facebook.platform.extra.USER_ID");
    if (str == null || str.isEmpty()) {
      this.b.m();
      bqq.a(paramBundle.getString("com.facebook.platform.extra.ACCESS_TOKEN"), (bqt)new bsb(this, paramBundle, paramLoginClient$Request));
      return;
    } 
    b(paramLoginClient$Request, paramBundle);
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\GetTokenLoginMethodHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */