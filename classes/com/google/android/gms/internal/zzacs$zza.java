package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import csi;
import csp;
import dfz;
import dga;
import java.util.ArrayList;
import java.util.Map;

public class zzacs$zza<I, O> extends zza {
  public static final dga CREATOR = new dga();
  
  protected final int a;
  
  protected final boolean b;
  
  protected final int c;
  
  protected final boolean d;
  
  protected final String e;
  
  protected final int f;
  
  protected final Class<? extends zzacs> g;
  
  protected final String h;
  
  private final int i;
  
  private zzacw j;
  
  private dfz<I, O> k;
  
  public zzacs$zza(int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, int paramInt4, String paramString2, zzacn paramzzacn) {
    this.i = paramInt1;
    this.a = paramInt2;
    this.b = paramBoolean1;
    this.c = paramInt3;
    this.d = paramBoolean2;
    this.e = paramString1;
    this.f = paramInt4;
    if (paramString2 == null) {
      this.g = null;
      this.h = null;
    } else {
      this.g = (Class)zzacz.class;
      this.h = paramString2;
    } 
    if (paramzzacn == null) {
      this.k = null;
      return;
    } 
    this.k = (dfz)paramzzacn.b();
  }
  
  protected zzacs$zza(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, String paramString, int paramInt3, Class<? extends zzacs> paramClass, dfz<I, O> paramdfz) {
    this.i = 1;
    this.a = paramInt1;
    this.b = paramBoolean1;
    this.c = paramInt2;
    this.d = paramBoolean2;
    this.e = paramString;
    this.f = paramInt3;
    this.g = paramClass;
    if (paramClass == null) {
      this.h = null;
    } else {
      this.h = paramClass.getCanonicalName();
    } 
    this.k = paramdfz;
  }
  
  public static zzacs$zza<Integer, Integer> a(String paramString, int paramInt) {
    return new zzacs$zza<Integer, Integer>(0, false, 0, false, paramString, paramInt, null, null);
  }
  
  public static zzacs$zza a(String paramString, int paramInt, dfz<?, ?> paramdfz, boolean paramBoolean) {
    return new zzacs$zza<Object, Object>(7, paramBoolean, 0, false, paramString, paramInt, null, paramdfz);
  }
  
  public static <T extends zzacs> zzacs$zza<T, T> a(String paramString, int paramInt, Class<T> paramClass) {
    return new zzacs$zza<T, T>(11, false, 11, false, paramString, paramInt, paramClass, null);
  }
  
  public static zzacs$zza<Boolean, Boolean> b(String paramString, int paramInt) {
    return new zzacs$zza<Boolean, Boolean>(6, false, 6, false, paramString, paramInt, null, null);
  }
  
  public static <T extends zzacs> zzacs$zza<ArrayList<T>, ArrayList<T>> b(String paramString, int paramInt, Class<T> paramClass) {
    return new zzacs$zza<ArrayList<T>, ArrayList<T>>(11, true, 11, true, paramString, paramInt, paramClass, null);
  }
  
  public static zzacs$zza<String, String> c(String paramString, int paramInt) {
    return new zzacs$zza<String, String>(7, false, 7, false, paramString, paramInt, null, null);
  }
  
  public int a() {
    return this.i;
  }
  
  public I a(O paramO) {
    return (I)this.k.a(paramO);
  }
  
  public void a(zzacw paramzzacw) {
    this.j = paramzzacw;
  }
  
  public int b() {
    return this.a;
  }
  
  public boolean c() {
    return this.b;
  }
  
  public int d() {
    return this.c;
  }
  
  public boolean e() {
    return this.d;
  }
  
  public String f() {
    return this.e;
  }
  
  public int g() {
    return this.f;
  }
  
  public Class<? extends zzacs> h() {
    return this.g;
  }
  
  public String i() {
    return (this.h == null) ? null : this.h;
  }
  
  public boolean j() {
    return (this.k != null);
  }
  
  public zzacn k() {
    return (this.k == null) ? null : zzacn.a(this.k);
  }
  
  public Map<String, zzacs$zza<?, ?>> l() {
    csp.a(this.h);
    csp.a(this.j);
    return this.j.a(this.h);
  }
  
  public String toString() {
    csi csi = csg.a(this).a("versionCode", Integer.valueOf(this.i)).a("typeIn", Integer.valueOf(this.a)).a("typeInArray", Boolean.valueOf(this.b)).a("typeOut", Integer.valueOf(this.c)).a("typeOutArray", Boolean.valueOf(this.d)).a("outputFieldName", this.e).a("safeParcelFieldId", Integer.valueOf(this.f)).a("concreteTypeName", i());
    Class<? extends zzacs> clazz = h();
    if (clazz != null)
      csi.a("concreteType.class", clazz.getCanonicalName()); 
    if (this.k != null)
      csi.a("converterName", this.k.getClass().getCanonicalName()); 
    return csi.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dga.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzacs$zza.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */