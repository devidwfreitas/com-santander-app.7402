package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.ReflectedParcelable;
import czk;
import czq;
import java.util.Iterator;

public abstract class Task implements ReflectedParcelable {
  public static final int c = 0;
  
  public static final int d = 1;
  
  public static final int e = 2;
  
  public static final int f = 10240;
  
  protected static final long g = -1L;
  
  private final String a;
  
  private final String b;
  
  private final boolean h;
  
  private final boolean i;
  
  private final int j;
  
  private final boolean k;
  
  private final boolean l;
  
  private final czq m;
  
  private final Bundle n;
  
  @Deprecated
  Task(Parcel paramParcel) {
    boolean bool1;
    Log.e("Task", "Constructing a Task object using a parcel.");
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    if (paramParcel.readInt() == 1) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    this.h = bool1;
    if (paramParcel.readInt() == 1) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    this.i = bool1;
    this.j = 2;
    this.k = false;
    this.l = false;
    this.m = czq.a;
    this.n = null;
  }
  
  Task(czk paramczk) {
    czq czq1;
    this.a = paramczk.b;
    this.b = paramczk.c;
    this.h = paramczk.d;
    this.i = paramczk.e;
    this.j = paramczk.a;
    this.k = paramczk.f;
    this.l = false;
    this.n = paramczk.h;
    if (paramczk.g != null) {
      czq1 = paramczk.g;
    } else {
      czq1 = czq.a;
    } 
    this.m = czq1;
  }
  
  public static void a(czq paramczq) {
    if (paramczq != null) {
      int i = paramczq.a();
      if (i != 1 && i != 0)
        throw new IllegalArgumentException((new StringBuilder(45)).append("Must provide a valid RetryPolicy: ").append(i).toString()); 
      int j = paramczq.b();
      int k = paramczq.c();
      if (i == 0 && j < 0)
        throw new IllegalArgumentException((new StringBuilder(52)).append("InitialBackoffSeconds can't be negative: ").append(j).toString()); 
      if (i == 1 && j < 10)
        throw new IllegalArgumentException("RETRY_POLICY_LINEAR must have an initial backoff at least 10 seconds."); 
      if (k < j) {
        i = paramczq.c();
        throw new IllegalArgumentException((new StringBuilder(77)).append("MaximumBackoffSeconds must be greater than InitialBackoffSeconds: ").append(i).toString());
      } 
    } 
  }
  
  private static boolean a(Object paramObject) {
    return (paramObject instanceof Integer || paramObject instanceof Long || paramObject instanceof Double || paramObject instanceof String || paramObject instanceof Boolean);
  }
  
  public static void b(Bundle paramBundle) {
    if (paramBundle != null) {
      String str;
      Parcel parcel = Parcel.obtain();
      paramBundle.writeToParcel(parcel, 0);
      int i = parcel.dataSize();
      if (i > 10240) {
        parcel.recycle();
        str = String.valueOf("Extras exceeding maximum size(10240 bytes): ");
        throw new IllegalArgumentException((new StringBuilder(String.valueOf(str).length() + 11)).append(str).append(i).toString());
      } 
      parcel.recycle();
      Iterator<String> iterator = str.keySet().iterator();
      while (iterator.hasNext()) {
        Object object = str.get(iterator.next());
        if (!a(object)) {
          if (object instanceof Bundle) {
            b((Bundle)object);
            continue;
          } 
          throw new IllegalArgumentException("Only the following extra parameter types are supported: Integer, Long, Double, String, Boolean, and nested Bundles with the same restrictions.");
        } 
      } 
    } 
  }
  
  public void a(Bundle paramBundle) {
    paramBundle.putString("tag", this.b);
    paramBundle.putBoolean("update_current", this.h);
    paramBundle.putBoolean("persisted", this.i);
    paramBundle.putString("service", this.a);
    paramBundle.putInt("requiredNetwork", this.j);
    paramBundle.putBoolean("requiresCharging", this.k);
    paramBundle.putBoolean("requiresIdle", false);
    paramBundle.putBundle("retryStrategy", this.m.a(new Bundle()));
    paramBundle.putBundle("extras", this.n);
  }
  
  public String c() {
    return this.a;
  }
  
  public String d() {
    return this.b;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public boolean e() {
    return this.h;
  }
  
  public boolean f() {
    return this.i;
  }
  
  public int g() {
    return this.j;
  }
  
  public boolean h() {
    return this.k;
  }
  
  public Bundle i() {
    return this.n;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    boolean bool = true;
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    if (this.h) {
      paramInt = 1;
    } else {
      paramInt = 0;
    } 
    paramParcel.writeInt(paramInt);
    if (this.i) {
      paramInt = bool;
    } else {
      paramInt = 0;
    } 
    paramParcel.writeInt(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\gcm\Task.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */