package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import cvi;
import java.util.List;

public final class WakeLockEvent extends StatsEvent {
  public static final Parcelable.Creator<WakeLockEvent> CREATOR = (Parcelable.Creator<WakeLockEvent>)new cvi();
  
  public final int a;
  
  private final long b;
  
  private int c;
  
  private final String d;
  
  private final String e;
  
  private final String f;
  
  private final int g;
  
  private final List<String> h;
  
  private final String i;
  
  private final long j;
  
  private int k;
  
  private final String l;
  
  private final float m;
  
  private final long n;
  
  private long o;
  
  public WakeLockEvent(int paramInt1, long paramLong1, int paramInt2, String paramString1, int paramInt3, List<String> paramList, String paramString2, long paramLong2, int paramInt4, String paramString3, String paramString4, float paramFloat, long paramLong3, String paramString5) {
    this.a = paramInt1;
    this.b = paramLong1;
    this.c = paramInt2;
    this.d = paramString1;
    this.e = paramString3;
    this.f = paramString5;
    this.g = paramInt3;
    this.o = -1L;
    this.h = paramList;
    this.i = paramString2;
    this.j = paramLong2;
    this.k = paramInt4;
    this.l = paramString4;
    this.m = paramFloat;
    this.n = paramLong3;
  }
  
  public WakeLockEvent(long paramLong1, int paramInt1, String paramString1, int paramInt2, List<String> paramList, String paramString2, long paramLong2, int paramInt3, String paramString3, String paramString4, float paramFloat, long paramLong3, String paramString5) {
    this(2, paramLong1, paramInt1, paramString1, paramInt2, paramList, paramString2, paramLong2, paramInt3, paramString3, paramString4, paramFloat, paramLong3, paramString5);
  }
  
  public long a() {
    return this.b;
  }
  
  public int b() {
    return this.c;
  }
  
  public long c() {
    return this.o;
  }
  
  public String d() {
    String str1;
    String str2;
    String str3;
    String str5 = String.valueOf("\t");
    String str6 = String.valueOf(e());
    String str7 = String.valueOf("\t");
    int i = h();
    String str8 = String.valueOf("\t");
    if (i() == null) {
      str1 = "";
    } else {
      str1 = TextUtils.join(",", i());
    } 
    String str9 = String.valueOf("\t");
    int j = l();
    String str10 = String.valueOf("\t");
    if (f() == null) {
      str2 = "";
    } else {
      str2 = f();
    } 
    String str11 = String.valueOf("\t");
    if (m() == null) {
      str3 = "";
    } else {
      str3 = m();
    } 
    String str12 = String.valueOf("\t");
    float f = n();
    String str13 = String.valueOf("\t");
    if (g() == null) {
      String str = "";
      return (new StringBuilder(String.valueOf(str5).length() + 37 + String.valueOf(str6).length() + String.valueOf(str7).length() + String.valueOf(str8).length() + String.valueOf(str1).length() + String.valueOf(str9).length() + String.valueOf(str10).length() + String.valueOf(str2).length() + String.valueOf(str11).length() + String.valueOf(str3).length() + String.valueOf(str12).length() + String.valueOf(str13).length() + String.valueOf(str).length())).append(str5).append(str6).append(str7).append(i).append(str8).append(str1).append(str9).append(j).append(str10).append(str2).append(str11).append(str3).append(str12).append(f).append(str13).append(str).toString();
    } 
    String str4 = g();
    return (new StringBuilder(String.valueOf(str5).length() + 37 + String.valueOf(str6).length() + String.valueOf(str7).length() + String.valueOf(str8).length() + String.valueOf(str1).length() + String.valueOf(str9).length() + String.valueOf(str10).length() + String.valueOf(str2).length() + String.valueOf(str11).length() + String.valueOf(str3).length() + String.valueOf(str12).length() + String.valueOf(str13).length() + String.valueOf(str4).length())).append(str5).append(str6).append(str7).append(i).append(str8).append(str1).append(str9).append(j).append(str10).append(str2).append(str11).append(str3).append(str12).append(f).append(str13).append(str4).toString();
  }
  
  public String e() {
    return this.d;
  }
  
  public String f() {
    return this.e;
  }
  
  public String g() {
    return this.f;
  }
  
  public int h() {
    return this.g;
  }
  
  public List<String> i() {
    return this.h;
  }
  
  public String j() {
    return this.i;
  }
  
  public long k() {
    return this.j;
  }
  
  public int l() {
    return this.k;
  }
  
  public String m() {
    return this.l;
  }
  
  public float n() {
    return this.m;
  }
  
  public long o() {
    return this.n;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    cvi.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\stats\WakeLockEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */