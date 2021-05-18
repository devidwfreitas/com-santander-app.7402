package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import dpo;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

public class zzayx extends zza implements Comparable<zzayx> {
  public static final Parcelable.Creator<zzayx> CREATOR = (Parcelable.Creator<zzayx>)new dpo();
  
  public final int a;
  
  public final zzayz[] b;
  
  public final String[] c;
  
  public final Map<String, zzayz> d;
  
  public zzayx(int paramInt, zzayz[] paramArrayOfzzayz, String[] paramArrayOfString) {
    this.a = paramInt;
    this.b = paramArrayOfzzayz;
    this.d = new TreeMap<String, zzayz>();
    int i = paramArrayOfzzayz.length;
    for (paramInt = 0; paramInt < i; paramInt++) {
      zzayz zzayz1 = paramArrayOfzzayz[paramInt];
      this.d.put(zzayz1.a, zzayz1);
    } 
    this.c = paramArrayOfString;
    if (this.c != null)
      Arrays.sort((Object[])this.c); 
  }
  
  public int a(zzayx paramzzayx) {
    return this.a - paramzzayx.a;
  }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject != null) {
      bool1 = bool2;
      if (paramObject instanceof zzayx) {
        paramObject = paramObject;
        bool1 = bool2;
        if (this.a == ((zzayx)paramObject).a) {
          bool1 = bool2;
          if (csg.a(this.d, ((zzayx)paramObject).d)) {
            bool1 = bool2;
            if (Arrays.equals((Object[])this.c, (Object[])((zzayx)paramObject).c))
              bool1 = true; 
          } 
        } 
      } 
    } 
    return bool1;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder("Configuration(");
    stringBuilder.append(this.a);
    stringBuilder.append(", ");
    stringBuilder.append("(");
    Iterator<zzayz> iterator = this.d.values().iterator();
    while (iterator.hasNext()) {
      stringBuilder.append(iterator.next());
      stringBuilder.append(", ");
    } 
    stringBuilder.append(")");
    stringBuilder.append(", ");
    stringBuilder.append("(");
    if (this.c != null) {
      String[] arrayOfString = this.c;
      int j = arrayOfString.length;
      for (int i = 0; i < j; i++) {
        stringBuilder.append(arrayOfString[i]);
        stringBuilder.append(", ");
      } 
    } else {
      stringBuilder.append("null");
    } 
    stringBuilder.append(")");
    stringBuilder.append(")");
    return stringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dpo.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzayx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */