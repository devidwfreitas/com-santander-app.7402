package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.zza;
import dfx;
import dfz;
import java.util.ArrayList;
import java.util.HashMap;

public final class zzacp extends zza implements dfz<String, Integer> {
  public static final Parcelable.Creator<zzacp> CREATOR = (Parcelable.Creator<zzacp>)new dfx();
  
  public final int a = 1;
  
  private final HashMap<String, Integer> b = new HashMap<String, Integer>();
  
  private final SparseArray<String> c = new SparseArray();
  
  private final ArrayList<zzacp$zza> d = null;
  
  public zzacp() {}
  
  public zzacp(int paramInt, ArrayList<zzacp$zza> paramArrayList) {
    a(paramArrayList);
  }
  
  private void a(ArrayList<zzacp$zza> paramArrayList) {
    for (zzacp$zza zzacp$zza : paramArrayList)
      a(zzacp$zza.b, zzacp$zza.c); 
  }
  
  public zzacp a(String paramString, int paramInt) {
    this.b.put(paramString, Integer.valueOf(paramInt));
    this.c.put(paramInt, paramString);
    return this;
  }
  
  public String a(Integer paramInteger) {
    String str2 = (String)this.c.get(paramInteger.intValue());
    String str1 = str2;
    if (str2 == null) {
      str1 = str2;
      if (this.b.containsKey("gms_unknown"))
        str1 = "gms_unknown"; 
    } 
    return str1;
  }
  
  public ArrayList<zzacp$zza> a() {
    ArrayList<zzacp$zza> arrayList = new ArrayList();
    for (String str : this.b.keySet())
      arrayList.add(new zzacp$zza(str, ((Integer)this.b.get(str)).intValue())); 
    return arrayList;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dfx.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzacp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */