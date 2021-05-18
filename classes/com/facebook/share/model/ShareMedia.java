package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import caq;
import car;

public abstract class ShareMedia implements ShareModel {
  private final Bundle a;
  
  ShareMedia(Parcel paramParcel) {
    this.a = paramParcel.readBundle();
  }
  
  protected ShareMedia(caq paramcaq) {
    this.a = new Bundle(caq.a(paramcaq));
  }
  
  @Deprecated
  public Bundle a() {
    return new Bundle(this.a);
  }
  
  public abstract car b();
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeBundle(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\ShareMedia.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */