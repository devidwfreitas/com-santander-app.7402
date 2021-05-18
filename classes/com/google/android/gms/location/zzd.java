package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import dug;

public class zzd extends zza {
  public static final Parcelable.Creator<zzd> CREATOR = (Parcelable.Creator<zzd>)new dug();
  
  private final int a;
  
  private final int b;
  
  public zzd(int paramInt1, int paramInt2) {
    this.a = paramInt1;
    this.b = paramInt2;
  }
  
  public int a() {
    return this.a;
  }
  
  public int b() {
    return this.b;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof zzd))
        return false; 
      paramObject = paramObject;
      if (this.a != ((zzd)paramObject).a || this.b != ((zzd)paramObject).b)
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { Integer.valueOf(this.a), Integer.valueOf(this.b) });
  }
  
  public String toString() {
    int i = this.a;
    int j = this.b;
    return (new StringBuilder(75)).append("ActivityTransition [mActivityType=").append(i).append(", mTransitionType=").append(j).append("]").toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dug.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\zzd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */