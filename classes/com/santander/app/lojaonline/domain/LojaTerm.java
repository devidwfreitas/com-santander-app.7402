package com.santander.app.lojaonline.domain;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import eks;
import jnf;
import jou;

public class LojaTerm implements Parcelable {
  public static final Parcelable.Creator<LojaTerm> CREATOR = (Parcelable.Creator<LojaTerm>)new jnf();
  
  @eks(a = "id")
  protected String a;
  
  @eks(a = "navigationBarText")
  protected String b;
  
  @eks(a = "titleText")
  protected String c;
  
  @eks(a = "bodyText")
  protected String d;
  
  @eks(a = "textColor")
  protected String e;
  
  @eks(a = "backgroundColor")
  protected String f;
  
  public LojaTerm() {}
  
  public LojaTerm(Parcel paramParcel) {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
  }
  
  public String a() {
    return this.a;
  }
  
  public String b() {
    return this.b;
  }
  
  public String c() {
    return this.c;
  }
  
  public String d() {
    return this.d;
  }
  
  public int describeContents() {
    return 0;
  }
  
  @ColorInt
  public int e() {
    return jou.a(this.e, -16777216);
  }
  
  @ColorInt
  public int f() {
    return jou.a(this.f, -1);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\lojaonline\domain\LojaTerm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */