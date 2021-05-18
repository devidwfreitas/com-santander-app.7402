package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import caq;
import car;
import cbg;
import cbh;

public final class ShareVideo extends ShareMedia {
  public static final Parcelable.Creator<ShareVideo> CREATOR = (Parcelable.Creator<ShareVideo>)new cbg();
  
  private final Uri a;
  
  public ShareVideo(Parcel paramParcel) {
    super(paramParcel);
    this.a = (Uri)paramParcel.readParcelable(Uri.class.getClassLoader());
  }
  
  private ShareVideo(cbh paramcbh) {
    super((caq)paramcbh);
    this.a = cbh.a(paramcbh);
  }
  
  public car b() {
    return car.VIDEO;
  }
  
  @Nullable
  public Uri c() {
    return this.a;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable((Parcelable)this.a, 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\ShareVideo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */