package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import dhw;

public class zzarw extends zza {
  public static final Parcelable.Creator<zzarw> CREATOR = (Parcelable.Creator<zzarw>)new dhw();
  
  public final int a;
  
  public final String b;
  
  public zzarw(int paramInt, String paramString) {
    this.a = paramInt;
    this.b = paramString;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != this) {
      if (paramObject == null || !(paramObject instanceof zzarw))
        return false; 
      paramObject = paramObject;
      if (((zzarw)paramObject).a != this.a || !csg.a(((zzarw)paramObject).b, this.b))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return this.a;
  }
  
  public String toString() {
    return String.format("%d:%s", new Object[] { Integer.valueOf(this.a), this.b });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dhw.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzarw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */