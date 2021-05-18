package com.facebook.login;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import bgy;
import bhp;
import boa;
import bqy;
import brf;
import bta;
import btb;
import btc;

public class WebViewLoginMethodHandler extends WebLoginMethodHandler {
  public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = (Parcelable.Creator<WebViewLoginMethodHandler>)new btb();
  
  private bqy c;
  
  private String d;
  
  public WebViewLoginMethodHandler(Parcel paramParcel) {
    super(paramParcel);
    this.d = paramParcel.readString();
  }
  
  WebViewLoginMethodHandler(LoginClient paramLoginClient) {
    super(paramLoginClient);
  }
  
  String a() {
    return "web_view";
  }
  
  boolean a(LoginClient$Request paramLoginClient$Request) {
    Bundle bundle = b(paramLoginClient$Request);
    bta bta = new bta(this, paramLoginClient$Request);
    this.d = LoginClient.o();
    a("e2e", this.d);
    FragmentActivity fragmentActivity = this.b.b();
    this.c = (new btc((Context)fragmentActivity, paramLoginClient$Request.d(), bundle)).a(this.d).a(paramLoginClient$Request.f()).a((brf)bta).a();
    boa boa = new boa();
    boa.setRetainInstance(true);
    boa.a((Dialog)this.c);
    boa.show(fragmentActivity.getSupportFragmentManager(), "FacebookDialogFragment");
    return true;
  }
  
  void b() {
    if (this.c != null) {
      this.c.cancel();
      this.c = null;
    } 
  }
  
  public void b(LoginClient$Request paramLoginClient$Request, Bundle paramBundle, bhp parambhp) {
    a(paramLoginClient$Request, paramBundle, parambhp);
  }
  
  bgy b_() {
    return bgy.WEB_VIEW;
  }
  
  boolean d() {
    return true;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.d);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\WebViewLoginMethodHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */