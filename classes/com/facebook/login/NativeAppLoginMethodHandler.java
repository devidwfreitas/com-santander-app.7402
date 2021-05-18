package com.facebook.login;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import bgy;
import bhp;
import bqn;
import bqq;

abstract class NativeAppLoginMethodHandler extends LoginMethodHandler {
  NativeAppLoginMethodHandler(Parcel paramParcel) {
    super(paramParcel);
  }
  
  NativeAppLoginMethodHandler(LoginClient paramLoginClient) {
    super(paramLoginClient);
  }
  
  private LoginClient$Result a(LoginClient$Request paramLoginClient$Request, Intent paramIntent) {
    Bundle bundle2 = null;
    Bundle bundle1 = paramIntent.getExtras();
    String str1 = a(bundle1);
    String str2 = bundle1.getString("error_code");
    String str3 = b(bundle1);
    String str4 = bundle1.getString("e2e");
    if (!bqq.a(str4))
      b(str4); 
    if (str1 == null && str2 == null && str3 == null)
      try {
        return LoginClient$Result.a(paramLoginClient$Request, a(paramLoginClient$Request.a(), bundle1, bgy.FACEBOOK_APPLICATION_WEB, paramLoginClient$Request.d()));
      } catch (bhp bhp) {
        return LoginClient$Result.a(paramLoginClient$Request, null, bhp.getMessage());
      }  
    bundle1 = bundle2;
    return (LoginClient$Result)(!bqn.D.contains(str1) ? (bqn.E.contains(str1) ? LoginClient$Result.a(paramLoginClient$Request, (String)null) : LoginClient$Result.a(paramLoginClient$Request, str1, str3, str2)) : bundle1);
  }
  
  private String a(Bundle paramBundle) {
    String str2 = paramBundle.getString("error");
    String str1 = str2;
    if (str2 == null)
      str1 = paramBundle.getString("error_type"); 
    return str1;
  }
  
  private LoginClient$Result b(LoginClient$Request paramLoginClient$Request, Intent paramIntent) {
    Bundle bundle = paramIntent.getExtras();
    String str1 = a(bundle);
    String str2 = bundle.getString("error_code");
    return "CONNECTION_FAILURE".equals(str2) ? LoginClient$Result.a(paramLoginClient$Request, str1, b(bundle), str2) : LoginClient$Result.a(paramLoginClient$Request, str1);
  }
  
  private String b(Bundle paramBundle) {
    String str2 = paramBundle.getString("error_message");
    String str1 = str2;
    if (str2 == null)
      str1 = paramBundle.getString("error_description"); 
    return str1;
  }
  
  boolean a(int paramInt1, int paramInt2, Intent paramIntent) {
    LoginClient$Result loginClient$Result;
    LoginClient$Request loginClient$Request = this.b.c();
    if (paramIntent == null) {
      loginClient$Result = LoginClient$Result.a(loginClient$Request, "Operation canceled");
    } else if (paramInt2 == 0) {
      loginClient$Result = b(loginClient$Request, (Intent)loginClient$Result);
    } else if (paramInt2 != -1) {
      loginClient$Result = LoginClient$Result.a(loginClient$Request, "Unexpected resultCode from authorization.", null);
    } else {
      loginClient$Result = a(loginClient$Request, (Intent)loginClient$Result);
    } 
    if (loginClient$Result != null) {
      this.b.a(loginClient$Result);
      return true;
    } 
    this.b.i();
    return true;
  }
  
  protected boolean a(Intent paramIntent, int paramInt) {
    if (paramIntent == null)
      return false; 
    try {
      this.b.a().startActivityForResult(paramIntent, paramInt);
      return true;
    } catch (ActivityNotFoundException activityNotFoundException) {
      return false;
    } 
  }
  
  abstract boolean a(LoginClient$Request paramLoginClient$Request);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\NativeAppLoginMethodHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */