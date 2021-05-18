package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.internal.zzasm;
import dto;
import duk;
import java.util.ArrayList;
import java.util.List;

public class GeofencingRequest extends zza {
  public static final Parcelable.Creator<GeofencingRequest> CREATOR = (Parcelable.Creator<GeofencingRequest>)new duk();
  
  public static final int a = 1;
  
  public static final int b = 2;
  
  public static final int c = 4;
  
  private final List<zzasm> d;
  
  private final int e;
  
  private final String f;
  
  public GeofencingRequest(List<zzasm> paramList, int paramInt, String paramString) {
    this.d = paramList;
    this.e = paramInt;
    this.f = paramString;
  }
  
  public List<zzasm> a() {
    return this.d;
  }
  
  public List<dto> b() {
    ArrayList<zzasm> arrayList = new ArrayList();
    arrayList.addAll(this.d);
    return (List)arrayList;
  }
  
  public int c() {
    return this.e;
  }
  
  public String d() {
    return this.f;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    duk.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\GeofencingRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */