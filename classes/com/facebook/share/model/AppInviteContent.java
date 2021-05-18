package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import cae;
import caf;
import cag;

public final class AppInviteContent implements ShareModel {
  public static final Parcelable.Creator<AppInviteContent> CREATOR = (Parcelable.Creator<AppInviteContent>)new cae();
  
  private final String a;
  
  private final String b;
  
  private final String c;
  
  private final String d;
  
  private final cag e;
  
  public AppInviteContent(Parcel paramParcel) {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.d = paramParcel.readString();
    this.c = paramParcel.readString();
    String str = paramParcel.readString();
    if (str.length() > 0) {
      this.e = cag.valueOf(str);
      return;
    } 
    this.e = cag.FACEBOOK;
  }
  
  private AppInviteContent(caf paramcaf) {
    this.a = caf.a(paramcaf);
    this.b = caf.b(paramcaf);
    this.c = caf.c(paramcaf);
    this.d = caf.d(paramcaf);
    this.e = caf.e(paramcaf);
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
  
  public cag e() {
    return (this.e != null) ? this.e : cag.FACEBOOK;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.e.toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\AppInviteContent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */