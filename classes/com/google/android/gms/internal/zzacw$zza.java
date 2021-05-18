package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import dgd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class zzacw$zza extends zza {
  public static final Parcelable.Creator<zzacw$zza> CREATOR = (Parcelable.Creator<zzacw$zza>)new dgd();
  
  public final int a;
  
  public final String b;
  
  public final ArrayList<zzacw$zzb> c;
  
  public zzacw$zza(int paramInt, String paramString, ArrayList<zzacw$zzb> paramArrayList) {
    this.a = paramInt;
    this.b = paramString;
    this.c = paramArrayList;
  }
  
  zzacw$zza(String paramString, Map<String, zzacs$zza<?, ?>> paramMap) {
    this.a = 1;
    this.b = paramString;
    this.c = a(paramMap);
  }
  
  private static ArrayList<zzacw$zzb> a(Map<String, zzacs$zza<?, ?>> paramMap) {
    if (paramMap == null)
      return null; 
    ArrayList<zzacw$zzb> arrayList = new ArrayList();
    for (String str : paramMap.keySet())
      arrayList.add(new zzacw$zzb(str, paramMap.get(str))); 
    return arrayList;
  }
  
  HashMap<String, zzacs$zza<?, ?>> a() {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    int j = this.c.size();
    for (int i = 0; i < j; i++) {
      zzacw$zzb zzacw$zzb = this.c.get(i);
      hashMap.put(zzacw$zzb.b, zzacw$zzb.c);
    } 
    return (HashMap)hashMap;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dgd.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzacw$zza.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */