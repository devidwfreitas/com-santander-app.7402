package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import bzc;
import bzd;
import cal;
import com.facebook.share.model.ShareContent;

public class ShareFeedContent extends ShareContent<ShareFeedContent, bzd> {
  public static final Parcelable.Creator<ShareFeedContent> CREATOR = (Parcelable.Creator<ShareFeedContent>)new bzc();
  
  private final String a;
  
  private final String b;
  
  private final String c;
  
  private final String d;
  
  private final String e;
  
  private final String f;
  
  private final String g;
  
  public ShareFeedContent(Parcel paramParcel) {
    super(paramParcel);
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
    this.g = paramParcel.readString();
  }
  
  private ShareFeedContent(bzd parambzd) {
    super((cal)parambzd);
    this.a = bzd.a(parambzd);
    this.b = bzd.b(parambzd);
    this.c = bzd.c(parambzd);
    this.d = bzd.d(parambzd);
    this.e = bzd.e(parambzd);
    this.f = bzd.f(parambzd);
    this.g = bzd.g(parambzd);
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
  
  public String e() {
    return this.e;
  }
  
  public String f() {
    return this.f;
  }
  
  public String g() {
    return this.g;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\internal\ShareFeedContent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */