package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import cam;
import can;

public class ShareHashtag implements ShareModel {
  public static final Parcelable.Creator<ShareHashtag> CREATOR = (Parcelable.Creator<ShareHashtag>)new cam();
  
  private final String a;
  
  public ShareHashtag(Parcel paramParcel) {
    this.a = paramParcel.readString();
  }
  
  private ShareHashtag(can paramcan) {
    this.a = can.a(paramcan);
  }
  
  public String a() {
    return this.a;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeString(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\ShareHashtag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */