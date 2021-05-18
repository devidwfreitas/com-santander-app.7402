package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.zza;

public abstract class DowngradeableSafeParcel extends zza implements ReflectedParcelable {
  private static final Object a = new Object();
  
  private static ClassLoader b = null;
  
  private static Integer c = null;
  
  private boolean d = false;
  
  protected static ClassLoader a() {
    synchronized (a) {
      return null;
    } 
  }
  
  protected static boolean a(String paramString) {
    a();
    return true;
  }
  
  protected static Integer b() {
    synchronized (a) {
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\internal\DowngradeableSafeParcel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */