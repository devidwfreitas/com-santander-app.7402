package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import cal;
import can;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class ShareContent<P extends ShareContent, E extends cal> implements ShareModel {
  private final Uri a;
  
  private final List<String> b;
  
  private final String c;
  
  private final String d;
  
  private final ShareHashtag e;
  
  public ShareContent(Parcel paramParcel) {
    this.a = (Uri)paramParcel.readParcelable(Uri.class.getClassLoader());
    this.b = a(paramParcel);
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = (new can()).a(paramParcel).c();
  }
  
  public ShareContent(cal paramcal) {
    this.a = cal.a(paramcal);
    this.b = cal.b(paramcal);
    this.c = cal.c(paramcal);
    this.d = cal.d(paramcal);
    this.e = cal.e(paramcal);
  }
  
  private List<String> a(Parcel paramParcel) {
    ArrayList<? extends String> arrayList = new ArrayList();
    paramParcel.readStringList(arrayList);
    return (arrayList.size() == 0) ? null : Collections.unmodifiableList(arrayList);
  }
  
  public int describeContents() {
    return 0;
  }
  
  @Nullable
  public Uri h() {
    return this.a;
  }
  
  @Nullable
  public List<String> i() {
    return this.b;
  }
  
  @Nullable
  public String j() {
    return this.c;
  }
  
  @Nullable
  public String k() {
    return this.d;
  }
  
  @Nullable
  public ShareHashtag l() {
    return this.e;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeParcelable((Parcelable)this.a, 0);
    paramParcel.writeStringList(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeParcelable(this.e, 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\ShareContent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */