package com.datami.smi.h;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.datami.smi.b.m;
import com.datami.smi.d.a;
import com.datami.smi.d.g;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.TimeZone;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class f {
  private static final String a = "yyyy-MM-dd HH:mm:ss";
  
  private static final String b;
  
  private static ScheduledFuture c;
  
  private static ScheduledFuture d;
  
  private static ScheduledFuture e;
  
  private static final byte[] f = new byte[] { 
      64, 16, -53, 106, -77, 10, -14, -2, 9, -2, 
      8, 24, -36, 10, 12, 70, -46, 1, 81, -36, 
      -48, 18, -8, -5, 2, 84, -51, -19, -9, 14, 
      -13, 12, 1, -6, 4, 9, 16, -6, 16, -6, 
      44, -36, -48, 18, -8, -5, 2, 84, -51, -19, 
      -9, 14, -13, 12, 1, -6, 4, 9, -83, 6, 
      5, 7, -8, 79, -68, -16, 18, -8, -5, 49, 
      -32, -14, 20, -7, -2, -6, 84, -16, 18, -8, 
      -5, 49, -32, -14, 20, -7, -2, -6, 1, 1, 
      1, 77, -31, 1, 33, -54, 1, 69, -39, 1, 
      15, -50, 1, 52, -56, 1, 10, -14, -2, 9, 
      -2, 8, 24, -36, 10, 12, -48, 18, -8, -5, 
      85, -68, -16, 18, -8, -5, 39, -18, -11, 9, 
      70, -15, -4, 4, 2, -16, 10, 4, -4, 8, 
      72, -64, -14, 1, 81, -68, -16, 18, -8, -5, 
      85, -83, 12, -3, 9, -12, 83, -86, 15, -10, 
      13, 73, -8, -8, 5, 13, 15, 4, -2, -72, 
      -9, 29, -17, 4, -2, 74, -8, -8, 5, 13, 
      11, -25, 5, 23, -16, -6, 24, -20, -3, 9, 
      -12, 0, 6, 5, 7, -8, 2, 18, -16, 18, 
      -8, -5, 39, -18, -11, 9, -15, -4, 4, 2, 
      -16, 10, 4, -4, 8, 72, -82, 16, -6, 76, 
      -68, -16, 18, -8, -5, 85, -83, 12, -3, 9, 
      -12, 83, -86, 15, -10, 13, 73, -76, 5, -4, 
      65, -8, -8, 5, 13, 25, -48, 18, -8, -5, 
      35, -18, -1, -1, -9, 0, 16, -12, 32, -17, 
      -12, -3, 14, 7, -1, -76, 31, -32, 12, -12, 
      18, -18, 6, -2, 37, -18, -11, 9, 70, -29, 
      -12, 12, -1, -6, 1, 4, -4, 8, 72, -83, 
      13, 4, 70, -50, 16, -6, 44, -36, -48, 18, 
      -8, -5, 2, -15, -4, 4, 2, -16, 10, 4, 
      -4, 8, 72, -82, 16, -6, 76, -50, -17, -14, 
      0, 6, 81, -68, -16, 18, -8, -5, 85, -83, 
      12, -3, 9, -12, 83, -86, 15, -10, 13, 73, 
      -18, 4, 17, -82, 15, 3, -15 };
  
  private static int g = 133;
  
  static {
    StringBuilder stringBuilder = new StringBuilder();
    byte b = f[34];
    b = stringBuilder.append(a(b, b | 0x1A, g | 0x8)).append(f.class.getSimpleName()).toString();
    c = null;
    d = null;
    e = null;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int j;
    int m = paramInt1 + 1;
    int i = 121 - paramInt2;
    byte[] arrayOfByte1 = f;
    paramInt1 = 303 - paramInt3;
    byte[] arrayOfByte2 = new byte[m];
    if (arrayOfByte1 == null) {
      paramInt2 = 0;
      paramInt3 = paramInt1;
      j = paramInt1;
    } else {
      paramInt2 = i;
      paramInt3 = 0;
      arrayOfByte2[paramInt3] = (byte)paramInt2;
      int n = paramInt3 + 1;
    } 
    i = -i + j + 1;
    paramInt1 = paramInt3 + 1;
    paramInt3 = paramInt2;
    paramInt2 = i;
    arrayOfByte2[paramInt3] = (byte)paramInt2;
    int k = paramInt3 + 1;
  }
  
  public static void a() {
    if (c != null) {
      byte b = f[1];
      int i = b | 0xE;
      a(b, i, i | 0x61);
      a(f[11], -f[95], f[11]);
      c.cancel(false);
      c = null;
    } 
  }
  
  public static void a(Context paramContext) {
    if (m.z() && m.C() && c == null) {
      byte b = f[1];
      int i = b | 0xE;
      a(b, i, i | 0x61);
      (new StringBuilder()).append(a(f[266], f[126] - 1, 97)).append(m.x()).append(a(f[34], 89, g >>> 1));
      c = m.a.scheduleWithFixedDelay((Runnable)new g(paramContext), m.x(), m.x(), TimeUnit.MINUTES);
    } 
  }
  
  public static void a(Intent paramIntent, Context paramContext) {
    HashMap hashMap;
    boolean bool1;
    Bundle bundle = paramIntent.getExtras();
    paramIntent = null;
    String str1 = "";
    String str2 = "";
    boolean bool = true;
    String str3 = bundle.getString(a(f[10], f[72], f[3] - 1));
    if (bundle.containsKey(a(f[180], f[72], 226)))
      hashMap = (HashMap)bundle.get(a(f[180], f[72], 226)); 
    byte b1 = f[34];
    byte b2 = f[60];
    if (bundle.containsKey(a(b1, b2, b2 | 0x6A))) {
      b1 = f[34];
      b2 = f[60];
      str1 = bundle.getString(a(b1, b2, b2 | 0x6A));
    } 
    if (bundle.containsKey(a(f[5], f[180], g | 0x40)))
      str2 = bundle.getString(a(f[5], f[180], g | 0x40)); 
    if (bundle.containsKey(a(f[345], f[24], g + 4)))
      bool = bundle.getBoolean(a(f[345], f[24], g + 4)); 
    if (bundle.containsKey(a(f[24], f[59], 267))) {
      bool1 = bundle.getBoolean(a(f[24], f[59], 267));
    } else {
      bool1 = false;
    } 
    (new StringBuilder()).append(a(f[100], f[103], 187)).append(str3).append(a(f[160], 89, g | 0x6A)).append(hashMap).append(a(f[59], 89, g | 0x70)).append(str1).append(a(f[14], 89, 299)).append(str2).append(a(f[29], 89, f[126] - 1)).append("").append(a(f[61], 89, g + 1)).append(bool);
    null = new a(b(), str3, hashMap, str1, str2, bool);
    if (!bool1)
      synchronized (m.h) {
        if (m.h.size() == 1000) {
          b1 = f[11];
          int i = b1 | 0x6;
          a(b1, i, i | 0x20);
          a(f[72], -f[104], 287);
          m.h.poll();
        } 
        m.h.offer(null);
        if (m.A() && (e == null || e.isCancelled() || e.isDone())) {
          b1 = f[1];
          int i = b1 | 0xE;
          a(b1, i, i | 0x61);
          (new StringBuilder()).append(a(f[266], f[126] - 1, 172)).append(m.y()).append(a(f[34], 89, g >>> 1));
          com.datami.smi.d.f f1 = new com.datami.smi.d.f(paramContext);
          e = m.a.schedule((Runnable)f1, m.y(), TimeUnit.MINUTES);
        } 
        return;
      }  
    synchronized (m.i) {
      if (m.i.size() == 1000) {
        b1 = f[11];
        int i = b1 | 0x6;
        a(b1, i, i | 0x20);
        a(f[72], f[126] - 1, 265);
        m.i.poll();
      } 
      m.i.offer(null);
      a(paramContext);
      return;
    } 
  }
  
  public static String b() {
    byte b1 = f[21];
    byte b2 = f[191];
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(a(b1, b2, b2 | 0xD7));
    simpleDateFormat.setTimeZone(TimeZone.getTimeZone(a(f[24], -f[12], f[3] + 1)));
    String str = simpleDateFormat.format(new Date());
    b1 = f[191];
    return str.replace(a(b1, b1 | 0x59, 299), a(f[191], f[274], 265));
  }
  
  public static void b(Context paramContext) {
    if (m.z() && m.C()) {
      byte b = f[1];
      int i = b | 0xE;
      a(b, i, i | 0x61);
      a(f[40], f[126] - 1, f[191]);
      d = m.a.schedule((Runnable)new g(paramContext), 20L, TimeUnit.SECONDS);
    } 
  }
  
  private static void c(Context paramContext) {
    if (m.A() && (e == null || e.isCancelled() || e.isDone())) {
      byte b = f[1];
      int i = b | 0xE;
      a(b, i, i | 0x61);
      (new StringBuilder()).append(a(f[266], f[126] - 1, 172)).append(m.y()).append(a(f[34], 89, g >>> 1));
      com.datami.smi.d.f f1 = new com.datami.smi.d.f(paramContext);
      e = m.a.schedule((Runnable)f1, m.y(), TimeUnit.MINUTES);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\h\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */