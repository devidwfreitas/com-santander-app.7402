package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csp;
import dgc;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class zzacw extends zza {
  public static final Parcelable.Creator<zzacw> CREATOR = (Parcelable.Creator<zzacw>)new dgc();
  
  public final int a;
  
  private final HashMap<String, Map<String, zzacs$zza<?, ?>>> b;
  
  private final ArrayList<zzacw$zza> c;
  
  private final String d;
  
  public zzacw(int paramInt, ArrayList<zzacw$zza> paramArrayList, String paramString) {
    this.a = paramInt;
    this.c = null;
    this.b = a(paramArrayList);
    this.d = (String)csp.a(paramString);
    a();
  }
  
  private static HashMap<String, Map<String, zzacs$zza<?, ?>>> a(ArrayList<zzacw$zza> paramArrayList) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    int j = paramArrayList.size();
    for (int i = 0; i < j; i++) {
      zzacw$zza zzacw$zza = paramArrayList.get(i);
      hashMap.put(zzacw$zza.b, zzacw$zza.a());
    } 
    return (HashMap)hashMap;
  }
  
  public Map<String, zzacs$zza<?, ?>> a(String paramString) {
    return this.b.get(paramString);
  }
  
  public void a() {
    for (String str : this.b.keySet()) {
      Map map = this.b.get(str);
      Iterator<String> iterator = map.keySet().iterator();
      while (iterator.hasNext())
        ((zzacs$zza)map.get(iterator.next())).a(this); 
    } 
  }
  
  public ArrayList<zzacw$zza> b() {
    ArrayList<zzacw$zza> arrayList = new ArrayList();
    for (String str : this.b.keySet())
      arrayList.add(new zzacw$zza(str, this.b.get(str))); 
    return arrayList;
  }
  
  public String c() {
    return this.d;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    for (String str : this.b.keySet()) {
      stringBuilder.append(str).append(":\n");
      Map map = this.b.get(str);
      for (String str1 : map.keySet()) {
        stringBuilder.append("  ").append(str1).append(": ");
        stringBuilder.append(map.get(str1));
      } 
    } 
    return stringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dgc.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzacw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */