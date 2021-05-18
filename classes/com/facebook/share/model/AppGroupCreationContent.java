package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import cab;
import cac;
import cad;
import java.io.Serializable;

public final class AppGroupCreationContent implements ShareModel {
  public static final Parcelable.Creator<AppGroupCreationContent> CREATOR = (Parcelable.Creator<AppGroupCreationContent>)new cab();
  
  private final String a;
  
  private final String b;
  
  private cac c;
  
  public AppGroupCreationContent(Parcel paramParcel) {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = (cac)paramParcel.readSerializable();
  }
  
  private AppGroupCreationContent(cad paramcad) {
    this.a = cad.a(paramcad);
    this.b = cad.b(paramcad);
    this.c = cad.c(paramcad);
  }
  
  public String a() {
    return this.a;
  }
  
  public String b() {
    return this.b;
  }
  
  public cac c() {
    return this.c;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeSerializable((Serializable)this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\AppGroupCreationContent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */