package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import bqa;
import bry;

public class FacebookLiteLoginMethodHandler extends NativeAppLoginMethodHandler {
  public static final Parcelable.Creator<FacebookLiteLoginMethodHandler> CREATOR = (Parcelable.Creator<FacebookLiteLoginMethodHandler>)new bry();
  
  public FacebookLiteLoginMethodHandler(Parcel paramParcel) {
    super(paramParcel);
  }
  
  FacebookLiteLoginMethodHandler(LoginClient paramLoginClient) {
    super(paramLoginClient);
  }
  
  String a() {
    return "fb_lite_login";
  }
  
  boolean a(LoginClient$Request paramLoginClient$Request) {
    String str = LoginClient.o();
    Intent intent = bqa.a((Context)this.b.b(), paramLoginClient$Request.d(), paramLoginClient$Request.a(), str, paramLoginClient$Request.f(), paramLoginClient$Request.h(), paramLoginClient$Request.c(), a(paramLoginClient$Request.e()));
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\FacebookLiteLoginMethodHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */