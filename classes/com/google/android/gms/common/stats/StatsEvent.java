package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

public abstract class StatsEvent extends zza implements ReflectedParcelable {
  public abstract long a();
  
  public abstract int b();
  
  public abstract long c();
  
  public abstract String d();
  
  public String toString() {
    long l1 = a();
    String str1 = String.valueOf("\t");
    int i = b();
    String str2 = String.valueOf("\t");
    long l2 = c();
    String str3 = String.valueOf(d());
    return (new StringBuilder(String.valueOf(str1).length() + 51 + String.valueOf(str2).length() + String.valueOf(str3).length())).append(l1).append(str1).append(i).append(str2).append(l2).append(str3).toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\stats\StatsEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */