package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import cal;
import cao;
import cap;

public final class ShareLinkContent extends ShareContent<ShareLinkContent, cap> {
  public static final Parcelable.Creator<ShareLinkContent> CREATOR = (Parcelable.Creator<ShareLinkContent>)new cao();
  
  @Deprecated
  private final String a;
  
  @Deprecated
  private final String b;
  
  @Deprecated
  private final Uri c;
  
  private final String d;
  
  public ShareLinkContent(Parcel paramParcel) {
    super(paramParcel);
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = (Uri)paramParcel.readParcelable(Uri.class.getClassLoader());
    this.d = paramParcel.readString();
  }
  
  private ShareLinkContent(cap paramcap) {
    super((cal)paramcap);
    this.a = cap.a(paramcap);
    this.b = cap.b(paramcap);
    this.c = cap.c(paramcap);
    this.d = cap.d(paramcap);
  }
  
  @Deprecated
  public String a() {
    return this.a;
  }
  
  @Deprecated
  @Nullable
  public String b() {
    return this.b;
  }
  
  @Deprecated
  @Nullable
  public Uri c() {
    return this.c;
  }
  
  @Nullable
  public String d() {
    return this.d;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeParcelable((Parcelable)this.c, 0);
    paramParcel.writeString(this.d);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\ShareLinkContent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */