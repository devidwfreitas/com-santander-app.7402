package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import byd;
import bye;
import com.facebook.share.model.ShareModel;

public class LikeContent implements ShareModel {
  public static final Parcelable.Creator<LikeContent> CREATOR = (Parcelable.Creator<LikeContent>)new byd();
  
  private final String a;
  
  private final String b;
  
  public LikeContent(Parcel paramParcel) {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
  }
  
  private LikeContent(bye parambye) {
    this.a = bye.a(parambye);
    this.b = bye.b(parambye);
  }
  
  public String a() {
    return this.a;
  }
  
  public String b() {
    return this.b;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\internal\LikeContent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */