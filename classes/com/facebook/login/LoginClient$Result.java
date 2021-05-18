package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import bqq;
import bqx;
import bsf;
import bsj;
import bsk;
import com.facebook.AccessToken;
import java.util.Map;

public class LoginClient$Result implements Parcelable {
  public static final Parcelable.Creator<LoginClient$Result> CREATOR = (Parcelable.Creator<LoginClient$Result>)new bsj();
  
  public final bsk a;
  
  public final AccessToken b;
  
  public final String c;
  
  final String d;
  
  public final LoginClient$Request e;
  
  public Map<String, String> f;
  
  private LoginClient$Result(Parcel paramParcel) {
    this.a = bsk.valueOf(paramParcel.readString());
    this.b = (AccessToken)paramParcel.readParcelable(AccessToken.class.getClassLoader());
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = (LoginClient$Request)paramParcel.readParcelable(LoginClient$Request.class.getClassLoader());
    this.f = bqq.a(paramParcel);
  }
  
  LoginClient$Result(LoginClient$Request paramLoginClient$Request, bsk parambsk, AccessToken paramAccessToken, String paramString1, String paramString2) {
    bqx.a(parambsk, "code");
    this.e = paramLoginClient$Request;
    this.b = paramAccessToken;
    this.c = paramString1;
    this.a = parambsk;
    this.d = paramString2;
  }
  
  static LoginClient$Result a(LoginClient$Request paramLoginClient$Request, AccessToken paramAccessToken) {
    return new LoginClient$Result(paramLoginClient$Request, bsk.SUCCESS, paramAccessToken, null, null);
  }
  
  static LoginClient$Result a(LoginClient$Request paramLoginClient$Request, String paramString) {
    return new LoginClient$Result(paramLoginClient$Request, bsk.CANCEL, null, paramString, null);
  }
  
  public static LoginClient$Result a(LoginClient$Request paramLoginClient$Request, String paramString1, String paramString2) {
    return a(paramLoginClient$Request, paramString1, paramString2, null);
  }
  
  static LoginClient$Result a(LoginClient$Request paramLoginClient$Request, String paramString1, String paramString2, String paramString3) {
    paramString1 = TextUtils.join(": ", bqq.d((Object[])new String[] { paramString1, paramString2 }));
    return new LoginClient$Result(paramLoginClient$Request, bsk.ERROR, null, paramString1, paramString3);
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeString(this.a.name());
    paramParcel.writeParcelable((Parcelable)this.b, paramInt);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeParcelable(this.e, paramInt);
    bqq.a(paramParcel, this.f);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\LoginClient$Result.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */