package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import bhv;
import bie;
import bir;

public class GraphRequest$ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
  public static final Parcelable.Creator<GraphRequest$ParcelableResourceWithMimeType> CREATOR = (Parcelable.Creator<GraphRequest$ParcelableResourceWithMimeType>)new bir();
  
  private final String a;
  
  private final RESOURCE b;
  
  private GraphRequest$ParcelableResourceWithMimeType(Parcel paramParcel) {
    this.a = paramParcel.readString();
    this.b = (RESOURCE)paramParcel.readParcelable(bhv.h().getClassLoader());
  }
  
  public GraphRequest$ParcelableResourceWithMimeType(RESOURCE paramRESOURCE, String paramString) {
    this.a = paramString;
    this.b = paramRESOURCE;
  }
  
  public String a() {
    return this.a;
  }
  
  public RESOURCE b() {
    return this.b;
  }
  
  public int describeContents() {
    return 1;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeString(this.a);
    paramParcel.writeParcelable((Parcelable)this.b, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\GraphRequest$ParcelableResourceWithMimeType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */