package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import djn;
import dto;
import java.util.Locale;

public class zzasm extends zza implements dto {
  public static final Parcelable.Creator<zzasm> CREATOR = (Parcelable.Creator<zzasm>)new djn();
  
  private final String e;
  
  private final long f;
  
  private final short g;
  
  private final double h;
  
  private final double i;
  
  private final float j;
  
  private final int k;
  
  private final int l;
  
  private final int m;
  
  public zzasm(String paramString, int paramInt1, short paramShort, double paramDouble1, double paramDouble2, float paramFloat, long paramLong, int paramInt2, int paramInt3) {
    a(paramString);
    a(paramFloat);
    a(paramDouble1, paramDouble2);
    paramInt1 = a(paramInt1);
    this.g = paramShort;
    this.e = paramString;
    this.h = paramDouble1;
    this.i = paramDouble2;
    this.j = paramFloat;
    this.f = paramLong;
    this.k = paramInt1;
    this.l = paramInt2;
    this.m = paramInt3;
  }
  
  private static int a(int paramInt) {
    int i = paramInt & 0x7;
    if (i == 0)
      throw new IllegalArgumentException((new StringBuilder(46)).append("No supported transition specified: ").append(paramInt).toString()); 
    return i;
  }
  
  public static zzasm a(byte[] paramArrayOfbyte) {
    Parcel parcel = Parcel.obtain();
    parcel.unmarshall(paramArrayOfbyte, 0, paramArrayOfbyte.length);
    parcel.setDataPosition(0);
    zzasm zzasm1 = (zzasm)CREATOR.createFromParcel(parcel);
    parcel.recycle();
    return zzasm1;
  }
  
  private static void a(double paramDouble1, double paramDouble2) {
    if (paramDouble1 > 90.0D || paramDouble1 < -90.0D)
      throw new IllegalArgumentException((new StringBuilder(42)).append("invalid latitude: ").append(paramDouble1).toString()); 
    if (paramDouble2 > 180.0D || paramDouble2 < -180.0D)
      throw new IllegalArgumentException((new StringBuilder(43)).append("invalid longitude: ").append(paramDouble2).toString()); 
  }
  
  private static void a(float paramFloat) {
    if (paramFloat <= 0.0F)
      throw new IllegalArgumentException((new StringBuilder(31)).append("invalid radius: ").append(paramFloat).toString()); 
  }
  
  private static void a(String paramString) {
    if (paramString == null || paramString.length() > 100) {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {
        paramString = "requestId is null or too long: ".concat(paramString);
        throw new IllegalArgumentException(paramString);
      } 
      paramString = new String("requestId is null or too long: ");
      throw new IllegalArgumentException(paramString);
    } 
  }
  
  @SuppressLint({"DefaultLocale"})
  private static String b(int paramInt) {
    switch (paramInt) {
      default:
        return null;
      case 1:
        break;
    } 
    return "CIRCLE";
  }
  
  public short a() {
    return this.g;
  }
  
  public double b() {
    return this.h;
  }
  
  public double c() {
    return this.i;
  }
  
  public float d() {
    return this.j;
  }
  
  public String e() {
    return this.e;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null)
        return false; 
      if (!(paramObject instanceof zzasm))
        return false; 
      paramObject = paramObject;
      if (this.j != ((zzasm)paramObject).j)
        return false; 
      if (this.h != ((zzasm)paramObject).h)
        return false; 
      if (this.i != ((zzasm)paramObject).i)
        return false; 
      if (this.g != ((zzasm)paramObject).g)
        return false; 
    } 
    return true;
  }
  
  public long f() {
    return this.f;
  }
  
  public int g() {
    return this.k;
  }
  
  public int h() {
    return this.l;
  }
  
  public int hashCode() {
    long l = Double.doubleToLongBits(this.h);
    int i = (int)(l ^ l >>> 32L);
    l = Double.doubleToLongBits(this.i);
    return ((((i + 31) * 31 + (int)(l ^ l >>> 32L)) * 31 + Float.floatToIntBits(this.j)) * 31 + this.g) * 31 + this.k;
  }
  
  public int i() {
    return this.m;
  }
  
  public String toString() {
    return String.format(Locale.US, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", new Object[] { b(this.g), this.e, Integer.valueOf(this.k), Double.valueOf(this.h), Double.valueOf(this.i), Float.valueOf(this.j), Integer.valueOf(this.l / 1000), Integer.valueOf(this.m), Long.valueOf(this.f) });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    djn.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzasm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */