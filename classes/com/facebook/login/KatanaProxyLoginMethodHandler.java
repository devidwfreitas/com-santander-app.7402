package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import bqa;
import bsd;

public class KatanaProxyLoginMethodHandler extends NativeAppLoginMethodHandler {
  public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = (Parcelable.Creator<KatanaProxyLoginMethodHandler>)new bsd();
  
  public KatanaProxyLoginMethodHandler(Parcel paramParcel) {
    super(paramParcel);
  }
  
  KatanaProxyLoginMethodHandler(LoginClient paramLoginClient) {
    super(paramLoginClient);
  }
  
  String a() {
    return "katana_proxy_auth";
  }
  
  boolean a(LoginClient$Request paramLoginClient$Request) {
    String str = LoginClient.o();
    Intent intent = bqa.b((Context)this.b.b(), paramLoginClient$Request.d(), paramLoginClient$Request.a(), str, paramLoginClient$Request.f(), paramLoginClient$Request.h(), paramLoginClient$Request.c(), a(paramLoginClient$Request.e()));
    a("e2e", str);
    return a(intent, LoginClient.d());
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\KatanaProxyLoginMethodHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */