package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import cal;
import cbd;
import cbh;
import cbi;
import cbj;

public final class ShareVideoContent extends ShareContent<ShareVideoContent, cbj> implements ShareModel {
  public static final Parcelable.Creator<ShareVideoContent> CREATOR = (Parcelable.Creator<ShareVideoContent>)new cbi();
  
  private final String a;
  
  private final String b;
  
  private final SharePhoto c;
  
  private final ShareVideo d;
  
  public ShareVideoContent(Parcel paramParcel) {
    super(paramParcel);
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    cbd cbd = (new cbd()).b(paramParcel);
    if (cbd.b() != null || cbd.c() != null) {
      this.c = cbd.d();
    } else {
      this.c = null;
    } 
    this.d = (new cbh()).b(paramParcel).b();
  }
  
  private ShareVideoContent(cbj paramcbj) {
    super((cal)paramcbj);
    this.a = cbj.a(paramcbj);
    this.b = cbj.b(paramcbj);
    this.c = cbj.c(paramcbj);
    this.d = cbj.d(paramcbj);
  }
  
  @Nullable
  public String a() {
    return this.a;
  }
  
  @Nullable
  public String b() {
    return this.b;
  }
  
  @Nullable
  public SharePhoto c() {
    return this.c;
  }
  
  @Nullable
  public ShareVideo d() {
    return this.d;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeParcelable(this.c, 0);
    paramParcel.writeParcelable(this.d, 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\ShareVideoContent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */