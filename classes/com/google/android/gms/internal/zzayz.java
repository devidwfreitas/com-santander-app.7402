package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import dpp;
import dpq;
import java.nio.charset.Charset;
import java.util.Arrays;

public class zzayz extends zza implements Comparable<zzayz> {
  public static final Parcelable.Creator<zzayz> CREATOR = (Parcelable.Creator<zzayz>)new dpq();
  
  public static final dpp i;
  
  private static final Charset j = Charset.forName("UTF-8");
  
  public final String a;
  
  public final long b;
  
  public final boolean c;
  
  public final double d;
  
  public final String e;
  
  public final byte[] f;
  
  public final int g;
  
  public final int h;
  
  static {
    i = new dpp();
  }
  
  public zzayz(String paramString1, long paramLong, boolean paramBoolean, double paramDouble, String paramString2, byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    this.a = paramString1;
    this.b = paramLong;
    this.c = paramBoolean;
    this.d = paramDouble;
    this.e = paramString2;
    this.f = paramArrayOfbyte;
    this.g = paramInt1;
    this.h = paramInt2;
  }
  
  private static int a(byte paramByte1, byte paramByte2) {
    return paramByte1 - paramByte2;
  }
  
  private static int a(int paramInt1, int paramInt2) {
    return (paramInt1 < paramInt2) ? -1 : ((paramInt1 == paramInt2) ? 0 : 1);
  }
  
  private static int a(long paramLong1, long paramLong2) {
    return (paramLong1 < paramLong2) ? -1 : ((paramLong1 == paramLong2) ? 0 : 1);
  }
  
  private static int a(String paramString1, String paramString2) {
    return (paramString1 == paramString2) ? 0 : ((paramString1 == null) ? -1 : ((paramString2 == null) ? 1 : paramString1.compareTo(paramString2)));
  }
  
  private static int a(boolean paramBoolean1, boolean paramBoolean2) {
    return (paramBoolean1 == paramBoolean2) ? 0 : (paramBoolean1 ? 1 : -1);
  }
  
  public int a(zzayz paramzzayz) {
    int j = 0;
    int i = 0;
    int k = this.a.compareTo(paramzzayz.a);
    if (k != 0)
      return k; 
    k = a(this.g, paramzzayz.g);
    if (k != 0)
      return k; 
    switch (this.g) {
      default:
        i = this.g;
        throw new AssertionError((new StringBuilder(31)).append("Invalid enum value: ").append(i).toString());
      case 1:
        return a(this.b, paramzzayz.b);
      case 2:
        return a(this.c, paramzzayz.c);
      case 3:
        return Double.compare(this.d, paramzzayz.d);
      case 4:
        return a(this.e, paramzzayz.e);
      case 5:
        break;
    } 
    if (this.f != paramzzayz.f) {
      if (this.f == null)
        return -1; 
      i = j;
      if (paramzzayz.f == null)
        return 1; 
      while (i < Math.min(this.f.length, paramzzayz.f.length)) {
        j = a(this.f[i], paramzzayz.f[i]);
        if (j != 0)
          return j; 
        i++;
      } 
      return a(this.f.length, paramzzayz.f.length);
    } 
    return i;
  }
  
  public String a(StringBuilder paramStringBuilder) {
    String str;
    int i;
    paramStringBuilder.append("Flag(");
    paramStringBuilder.append(this.a);
    paramStringBuilder.append(", ");
    switch (this.g) {
      default:
        str = this.a;
        i = this.g;
        throw new AssertionError((new StringBuilder(String.valueOf(str).length() + 27)).append("Invalid type: ").append(str).append(", ").append(i).toString());
      case 1:
        str.append(this.b);
        str.append(", ");
        str.append(this.g);
        str.append(", ");
        str.append(this.h);
        str.append(")");
        return str.toString();
      case 2:
        str.append(this.c);
        str.append(", ");
        str.append(this.g);
        str.append(", ");
        str.append(this.h);
        str.append(")");
        return str.toString();
      case 3:
        str.append(this.d);
        str.append(", ");
        str.append(this.g);
        str.append(", ");
        str.append(this.h);
        str.append(")");
        return str.toString();
      case 4:
        str.append("'");
        str.append(this.e);
        str.append("'");
        str.append(", ");
        str.append(this.g);
        str.append(", ");
        str.append(this.h);
        str.append(")");
        return str.toString();
      case 5:
        break;
    } 
    if (this.f == null) {
      str.append("null");
      str.append(", ");
      str.append(this.g);
      str.append(", ");
      str.append(this.h);
      str.append(")");
      return str.toString();
    } 
    str.append("'");
    str.append(new String(this.f, j));
    str.append("'");
    str.append(", ");
    str.append(this.g);
    str.append(", ");
    str.append(this.h);
    str.append(")");
    return str.toString();
  }
  
  public boolean equals(Object paramObject) {
    boolean bool = true;
    if (paramObject != null && paramObject instanceof zzayz) {
      int i;
      paramObject = paramObject;
      if (!csg.a(this.a, ((zzayz)paramObject).a) || this.g != ((zzayz)paramObject).g || this.h != ((zzayz)paramObject).h)
        return false; 
      switch (this.g) {
        default:
          i = this.g;
          throw new AssertionError((new StringBuilder(31)).append("Invalid enum value: ").append(i).toString());
        case 1:
          return (this.b != ((zzayz)paramObject).b) ? false : bool;
        case 2:
          return (this.c != ((zzayz)paramObject).c) ? false : bool;
        case 3:
          return (this.d != ((zzayz)paramObject).d) ? false : bool;
        case 4:
          return csg.a(this.e, ((zzayz)paramObject).e);
        case 5:
          break;
      } 
      return Arrays.equals(this.f, ((zzayz)paramObject).f);
    } 
    return false;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    a(stringBuilder);
    return stringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dpq.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzayz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */