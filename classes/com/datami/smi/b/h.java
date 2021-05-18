package com.datami.smi.b;

import java.util.ArrayList;
import java.util.regex.Pattern;

public class h {
  private static String a;
  
  private static long b;
  
  private static long c;
  
  private static ArrayList d;
  
  private static final byte[] e = new byte[] { 
      18, -124, 70, 18, 37, 8, -21, 11, -3, -5, 
      -68, 68, -3, 19, -19, -65, 70, 9, 3, -82, 
      67, -2, 2, 5, 1, 5, -7, -59, -12, 82, 
      -13, 2, -2, 19, -88, 29, -29, 19, -2, 12, 
      3, -14, -68, 68, 1, 7, -7, 15, -15, -1, 
      -68, 70, 9, 3, -82, 84, -5, -4, -6, 9, 
      -52, -26, -12, 68, 1, 14, 1, -44, 39, 4, 
      1, -84, 29, -29, 84, -5, -4, -6, 9, -78, 
      69, 19, -8, -7, 9, 7, -37, 21, 4, -8, 
      -43, -26, 19, -2, 12, 3, -14, -68, 78, 1, 
      5, -84, 70, 9, 6, -7, -10, -68, 70, 9, 
      3, -82, 0, 70, 9, 3, -82, 67, 13, -28, 
      27, -4, -6, 9, -52, -26, 9, 9, -4, -12, 
      -12, 77, -12, 19, -17, 5, -3, -1, -42, -26, 
      84, -5, -4, -6, 9, -78, 73, 10, -83, 86, 
      -21, 11, -3, -5, 19, -2, 12, 3, -14, -68, 
      78, 1, 5, -84, 70, 9, 6, -7, -10, -68, 
      70, 9, 3, -82, 85, -3, -6, -76, 3, 0, 
      -18, 19, -2, 12, 3, -14, -60, 1, -12, 82, 
      -13, 2, -2, 19, -62, -26, 10, -46, 40, 3, 
      4, 5, -81, 1, -9, 26, -26, 65, 13, -10, 
      -68, 85, -3, -6, -50, 1, 7, -7, 15, -15, 
      -19, 19, -2, 12, 3, -14, -60, 1, 19, -2, 
      12, 3, -14, -68, 70, 9, 6, -7, -10, -68, 
      70, 9, 3, -82, 84, -12, -3, -69, 85, -3, 
      -6, -76, 0, 2, 10, -4, -73, 69, 19, -8, 
      4, -11, 4, -8, -69, 29, -29, 65, 13, -10, 
      -68, 67, 18, -3, 0, -13, 9, 6, -84, 84, 
      -11, 4, -8, -43, -26, -3, -6, -50, -26, -12, 
      83, -15, 7, -75, 69, 19, -8, 4, -11, 4, 
      -8, -69, 29, -29, -2, 2, 18, -9, -11, 19, 
      -15, -1, -68, 69, 19, -8, -7, 9, 7, -89, 
      84, -11, 4, -8, -69, 90, -21, 13, -3, -79, 
      13, -13, 78, 1, -79, 67, -2, 2, 5, 1, 
      5, -7, -71, 73, 10, -83, 65, 3, 0, 1, 
      -1, -12, 83, -15, 7, -75, 69, 19, -8, 4, 
      -11, 4, -8, -69, 68, 17, -3, -17, 19, -11, 
      6, -1, -78, 29, -29, 19, -2, 12, 3, -14, 
      -68, 70, 9, 6, -7, -10, -68, 70, 9, 3, 
      -82, 67, 13, -28, 27, -4, -6, 9, -52, -26 };
  
  private static int f = 154;
  
  static {
    a = a(122, e[69], e[205]) + h.class.getSimpleName();
    b = 2L;
    c = 60000L;
    d = null;
  }
  
  private static long a(long paramLong) {
    long l4 = System.currentTimeMillis();
    long l2 = System.currentTimeMillis();
    if (paramLong <= l2) {
      l1 = c + paramLong;
    } else {
      l1 = paramLong;
    } 
    long l3 = (l1 - l2) / b;
    l2 = l3;
    if (l3 <= 0L)
      l2 = c / b; 
    StringBuilder stringBuilder = new StringBuilder();
    byte b = e[47];
    stringBuilder.append(a(248, b, b + 5)).append(l1).append(a(347, 24, e[146])).append(l2);
    long l1 = l4 + l2;
    stringBuilder = new StringBuilder();
    b = e[47];
    stringBuilder.append(a(248, b, b + 5)).append(paramLong).append(a(285, e[47], e[146])).append(l1);
    return l1;
  }
  
  private static i a(String paramString) {
    return b(paramString);
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    byte b;
    int i;
    byte[] arrayOfByte1 = e;
    paramInt1 += 4;
    paramInt3 = 117 - paramInt3;
    int j = paramInt2 + 1;
    byte[] arrayOfByte2 = new byte[j];
    if (arrayOfByte1 == null) {
      paramInt2 = 0;
      b = paramInt1;
      i = paramInt1;
    } else {
      b = 0;
      paramInt2 = paramInt3;
      paramInt3 = b;
      arrayOfByte2[paramInt3] = (byte)paramInt2;
    } 
    i += paramInt3;
    paramInt1 = b + 1;
    paramInt3 = paramInt2;
    paramInt2 = i;
    arrayOfByte2[paramInt3] = (byte)paramInt2;
  }
  
  public static void a() {
    if (d != null)
      d.clear(); 
  }
  
  public static void a(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong, String paramString5, String paramString6, int paramInt1, String paramString7, boolean paramBoolean, int paramInt2) {
    if ((paramString7 == null || paramString7.isEmpty()) && (paramString6 == null || paramString6.isEmpty() || !paramString6.equals(a(224, e[112], -e[293])))) {
      StringBuilder stringBuilder1 = new StringBuilder();
      b = e[112];
      stringBuilder1.append(a(b, b | 0x21, -e[67])).append(paramString7).append(a(58, e[39], e[146])).append(paramString6);
      b = 0;
    } else {
      b = 1;
    } 
    if (!b)
      return; 
    long l4 = System.currentTimeMillis();
    long l2 = System.currentTimeMillis();
    if (paramLong <= l2) {
      l1 = c + paramLong;
    } else {
      l1 = paramLong;
    } 
    long l3 = (l1 - l2) / b;
    l2 = l3;
    if (l3 <= 0L)
      l2 = c / b; 
    StringBuilder stringBuilder = new StringBuilder();
    byte b = e[47];
    stringBuilder.append(a(248, b, b + 5)).append(l1).append(a(347, 24, e[146])).append(l2);
    long l1 = l4 + l2;
    stringBuilder = new StringBuilder();
    b = e[47];
    stringBuilder.append(a(248, b, b + 5)).append(paramLong).append(a(285, e[47], e[146])).append(l1);
    if (l1 == 0L) {
      a(300, 47, e[0]);
      return;
    } 
    i i = new i(paramString1, paramString2, paramString3, paramString4, l1, paramString5, paramString6, paramInt1, paramString7, paramBoolean, paramInt2);
    paramInt1 = e[147];
    a(174, paramInt1, paramInt1 << 1);
    if (d == null)
      d = new ArrayList(); 
    d.add(i);
  }
  
  private static boolean a(i parami) {
    a(211, e[118], e[365]);
    return d.remove(parami);
  }
  
  private static boolean a(String paramString1, String paramString2) {
    if ((paramString1 == null || paramString1.isEmpty()) && (paramString2 == null || paramString2.isEmpty() || !paramString2.equals(a(224, e[112], -e[293])))) {
      StringBuilder stringBuilder = new StringBuilder();
      byte b = e[112];
      stringBuilder.append(a(b, b | 0x21, -e[67])).append(paramString1).append(a(58, e[39], e[146])).append(paramString2);
      return false;
    } 
    return true;
  }
  
  private static long b(long paramLong) {
    long l2 = System.currentTimeMillis();
    long l1 = paramLong;
    if (paramLong <= l2)
      l1 = paramLong + c; 
    l2 = (l1 - l2) / b;
    paramLong = l2;
    if (l2 <= 0L)
      paramLong = c / b; 
    StringBuilder stringBuilder = new StringBuilder();
    byte b = e[47];
    stringBuilder.append(a(248, b, b + 5)).append(l1).append(a(347, 24, e[146])).append(paramLong);
    return paramLong;
  }
  
  private static i b(String paramString) {
    synchronized (d) {
      for (i i : d) {
        if (b(i) && e(paramString, i.g())) {
          (new StringBuilder()).append(a(224, f & 0x7C, 35)).append(paramString);
          return i;
        } 
      } 
      (new StringBuilder()).append(a(f - 4, f & 0x7C, 35)).append(paramString);
      return null;
    } 
  }
  
  private static i b(String paramString1, String paramString2) {
    return c(paramString1, paramString2);
  }
  
  private static i b(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong, String paramString5, String paramString6, int paramInt1, String paramString7, boolean paramBoolean, int paramInt2) {
    return new i(paramString1, paramString2, paramString3, paramString4, paramLong, paramString5, paramString6, paramInt1, paramString7, paramBoolean, paramInt2);
  }
  
  private static boolean b() {
    boolean bool = false;
    StringBuilder stringBuilder = (new StringBuilder()).append(a(192, e[7], e[39]));
    if (d == null || d.isEmpty()) {
      null = true;
    } else {
      null = false;
    } 
    stringBuilder.append(null);
    if (d != null) {
      null = bool;
      return d.isEmpty() ? true : null;
    } 
    return true;
  }
  
  private static boolean b(i parami) {
    boolean bool = false;
    String str = parami.a();
    (new StringBuilder()).append(str).append(a(e[2], e[0], e[174])).append(parami.c()).append(a(263, e[0], e[174])).append(System.currentTimeMillis());
    if (parami.c() >= System.currentTimeMillis()) {
      (new StringBuilder()).append(str).append(a(f & 0x3EC, e[65], e[174]));
      return true;
    } 
    if (a(parami)) {
      (new StringBuilder()).append(a(33, e[205] - 1, 35)).append(str);
      return false;
    } 
    return bool;
  }
  
  private static i c(String paramString1, String paramString2) {
    synchronized (d) {
      for (i i : d) {
        if (paramString1.equals(i.b()) && b(i) && e(paramString2, i.g())) {
          (new StringBuilder()).append(a(371, e[205] - 1, 35)).append(paramString1).append(a(203, e[5], e[174])).append(paramString2);
          return i;
        } 
      } 
      (new StringBuilder()).append(a(-e[34], 34, 35)).append(paramString1).append(a(203, e[5], e[174])).append(paramString2);
      return null;
    } 
  }
  
  private static boolean d(String paramString1, String paramString2) {
    return Pattern.compile(paramString2).matcher(paramString1).find();
  }
  
  private static boolean e(String paramString1, String paramString2) {
    boolean bool = false;
    if (!paramString1.equals(a(224, e[112], -e[293]))) {
      boolean bool1;
      if (Pattern.compile(paramString2).matcher(paramString1).find()) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (bool1)
        bool = true; 
    } 
    (new StringBuilder()).append(a(281, e[69], e[112])).append(paramString1).append(a(184, e[5], e[146])).append(paramString2).append(a(126, e[147], e[146])).append(bool);
    return bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */