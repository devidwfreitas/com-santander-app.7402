package com.datami.smi.a;

import com.datami.smi.Analytics;
import com.datami.smi.b.m;
import com.datami.smi.d.c;
import com.datami.smi.d.d;
import java.util.HashMap;
import java.util.Properties;

public class a {
  private static final String a = "[dmi]AnalyticsManager";
  
  private static a e;
  
  private static final byte[] f = new byte[] { 
      62, 38, -14, 120, -18, 23, -47, -20, -13, -22, 
      -4, -2, -30, 18, -31, -27, -13, -3, -19, -12, 
      13, -34, -17, -5, -18, 3, -31, -10, -16, 9, 
      -31, -27, -13, -3, -19, -12, 13, -34, -17, -5, 
      -15, 0, -20, -16, -6, 12, -34, -33, -6, -2, 
      -18, 24, -57, -19, -6, -19, 1, -30, -14, 3, 
      -31, -10, -16, 9, -31, -27, -13, -3, -19, -12, 
      13, -34, -17, -5, 1, -10, -16, 16, -34, -33, 
      -6, -2, -18, 24, -57, -19, -6, -19, -14, 23, 
      -47, -20, -13, -22, -4, -2, -30, 18, -31, -27, 
      -13, -3, -19, -12, 13, -34, -17, -5, 2, 19, 
      -42, -32, 6, -1, -43, 5, -19, -11, -22, -22, 
      -9, -1, 15, -58, 0, -24, -26, -8, -2, -7, 
      -29, 25, -33, -26, 0, -19, -11, -26, -64, 8, 
      -15, -24, -17, -2, -19, -12, 65, -39, 13 };
  
  private static int g = 166;
  
  private b b = null;
  
  private i c = null;
  
  private c d = null;
  
  static {
    e = null;
  }
  
  public a() {
    this.b = new b();
    this.c = new i();
    this.d = new c();
  }
  
  public static a a() {
    // Byte code:
    //   0: ldc com/datami/smi/a/a
    //   2: monitorenter
    //   3: getstatic com/datami/smi/a/a.e : Lcom/datami/smi/a/a;
    //   6: ifnonnull -> 31
    //   9: ldc com/datami/smi/a/a
    //   11: monitorenter
    //   12: getstatic com/datami/smi/a/a.e : Lcom/datami/smi/a/a;
    //   15: ifnonnull -> 28
    //   18: new com/datami/smi/a/a
    //   21: dup
    //   22: invokespecial <init> : ()V
    //   25: putstatic com/datami/smi/a/a.e : Lcom/datami/smi/a/a;
    //   28: ldc com/datami/smi/a/a
    //   30: monitorexit
    //   31: getstatic com/datami/smi/a/a.e : Lcom/datami/smi/a/a;
    //   34: astore_0
    //   35: ldc com/datami/smi/a/a
    //   37: monitorexit
    //   38: aload_0
    //   39: areturn
    //   40: astore_0
    //   41: ldc com/datami/smi/a/a
    //   43: monitorexit
    //   44: aload_0
    //   45: athrow
    //   46: astore_0
    //   47: ldc com/datami/smi/a/a
    //   49: monitorexit
    //   50: aload_0
    //   51: athrow
    // Exception table:
    //   from	to	target	type
    //   3	12	46	finally
    //   12	28	40	finally
    //   28	31	40	finally
    //   31	35	46	finally
    //   41	44	40	finally
    //   44	46	46	finally
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int k;
    int m = paramInt2 + 3;
    paramInt1 += 4;
    int j = paramInt3 + 69;
    byte[] arrayOfByte1 = f;
    byte[] arrayOfByte2 = new byte[m];
    if (arrayOfByte1 == null) {
      paramInt2 = 0;
      paramInt3 = paramInt1;
      k = j;
      j = paramInt1;
    } else {
      paramInt2 = 0;
      paramInt3 = paramInt1;
      paramInt1 = j;
      paramInt3++;
      arrayOfByte2[paramInt2] = (byte)paramInt1;
    } 
    paramInt1 = -j + k - 13;
    paramInt3++;
    arrayOfByte2[paramInt2] = (byte)paramInt1;
  }
  
  public static void b() {
    Properties properties = new Properties();
    byte b1 = f[41];
    properties.put(a(51, b1, b1 | 0x2E), com.datami.smi.d.a.a(c.a));
    properties.put(a(g >>> 1, f[13], -f[47]), Long.valueOf(i.a()));
    properties.put(a(f[113], f[13], -f[130]), Long.valueOf(i.b()));
    properties.put(a(53, -f[2], -f[47]), Long.valueOf(i.c()));
    properties.put(a(f[109], -f[2], -f[130]), Long.valueOf(i.d()));
    b1 = f[139];
    properties.put(a(103, b1, b1 | 0x26), Long.valueOf(b.b()));
    properties.put(a(35, -f[2], 40), Integer.valueOf(c.b()));
    properties.put(a(69, f[45], 50), Integer.valueOf(c.a()));
    m.b(com.datami.smi.d.a.a(d.h), properties);
  }
  
  private void b(boolean paramBoolean1, boolean paramBoolean2) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: iload_2
    //   4: invokestatic c : (ZZ)V
    //   7: aload_0
    //   8: monitorexit
    //   9: return
    //   10: astore_3
    //   11: aload_0
    //   12: monitorexit
    //   13: aload_3
    //   14: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	10	finally
  }
  
  private b d() {
    return this.b;
  }
  
  private i e() {
    return this.c;
  }
  
  private c f() {
    return this.d;
  }
  
  private HashMap g() {
    c();
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put(a(g >>> 1, f[13], -f[47]), String.valueOf(i.a()));
    hashMap.put(a(f[113], f[13], -f[130]), String.valueOf(i.b()));
    hashMap.put(a(53, -f[2], -f[47]), String.valueOf(i.c()));
    hashMap.put(a(f[109], -f[2], -f[130]), String.valueOf(i.d()));
    byte b1 = f[139];
    hashMap.put(a(103, b1, b1 | 0x26), String.valueOf(b.b()));
    hashMap.put(a(35, -f[2], 40), String.valueOf(c.b()));
    hashMap.put(a(69, f[45], 50), String.valueOf(c.a()));
    b1 = f[41];
    hashMap.put(a(51, b1, b1 | 0x2E), String.valueOf(c.a));
    return hashMap;
  }
  
  private static void h() {
    c.c();
  }
  
  private static Analytics i() {
    Analytics analytics = new Analytics();
    analytics.setSdDataUsage(b.b());
    analytics.setCellularSessionTime(i.a());
    analytics.setWifiSessionTime(i.c());
    return analytics;
  }
  
  private Analytics j() {
    c();
    Analytics analytics = new Analytics();
    analytics.setSdDataUsage(b.b());
    analytics.setCellularSessionTime(i.a());
    analytics.setWifiSessionTime(i.c());
    return analytics;
  }
  
  public final void a(boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: invokestatic isForeground : ()Z
    //   6: invokestatic b : (ZZ)V
    //   9: iload_1
    //   10: invokestatic isForeground : ()Z
    //   13: invokestatic b : (ZZ)V
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: astore_2
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_2
    //   23: athrow
    // Exception table:
    //   from	to	target	type
    //   2	16	19	finally
  }
  
  public final void a(boolean paramBoolean1, boolean paramBoolean2) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: iload_2
    //   4: invokestatic c : (ZZ)V
    //   7: aload_0
    //   8: monitorexit
    //   9: return
    //   10: astore_3
    //   11: aload_0
    //   12: monitorexit
    //   13: aload_3
    //   14: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	10	finally
  }
  
  public final void b(boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_0
    //   3: istore_2
    //   4: invokestatic E : ()Z
    //   7: istore_3
    //   8: iload_3
    //   9: istore_2
    //   10: iload_2
    //   11: iload_1
    //   12: invokestatic a : (ZZ)V
    //   15: iload_2
    //   16: iload_1
    //   17: invokestatic a : (ZZ)V
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: astore #4
    //   25: bipush #113
    //   27: getstatic com/datami/smi/a/a.f : [B
    //   30: bipush #13
    //   32: baload
    //   33: getstatic com/datami/smi/a/a.f : [B
    //   36: bipush #9
    //   38: baload
    //   39: ineg
    //   40: invokestatic a : (III)Ljava/lang/String;
    //   43: pop
    //   44: new java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial <init> : ()V
    //   51: sipush #133
    //   54: getstatic com/datami/smi/a/a.f : [B
    //   57: bipush #29
    //   59: baload
    //   60: getstatic com/datami/smi/a/a.f : [B
    //   63: bipush #41
    //   65: baload
    //   66: invokestatic a : (III)Ljava/lang/String;
    //   69: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: aload #4
    //   74: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   77: pop
    //   78: goto -> 10
    //   81: astore #4
    //   83: aload_0
    //   84: monitorexit
    //   85: aload #4
    //   87: athrow
    // Exception table:
    //   from	to	target	type
    //   4	8	23	java/lang/Exception
    //   4	8	81	finally
    //   10	20	81	finally
    //   25	78	81	finally
  }
  
  public final void c() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_0
    //   3: istore_1
    //   4: invokestatic E : ()Z
    //   7: istore_2
    //   8: iload_2
    //   9: istore_1
    //   10: aload_0
    //   11: iload_1
    //   12: invokestatic isForeground : ()Z
    //   15: invokespecial b : (ZZ)V
    //   18: aload_0
    //   19: iload_1
    //   20: invokestatic isForeground : ()Z
    //   23: invokevirtual a : (ZZ)V
    //   26: aload_0
    //   27: monitorexit
    //   28: return
    //   29: astore_3
    //   30: bipush #113
    //   32: getstatic com/datami/smi/a/a.f : [B
    //   35: bipush #13
    //   37: baload
    //   38: getstatic com/datami/smi/a/a.f : [B
    //   41: bipush #9
    //   43: baload
    //   44: ineg
    //   45: invokestatic a : (III)Ljava/lang/String;
    //   48: pop
    //   49: new java/lang/StringBuilder
    //   52: dup
    //   53: invokespecial <init> : ()V
    //   56: sipush #133
    //   59: getstatic com/datami/smi/a/a.f : [B
    //   62: bipush #29
    //   64: baload
    //   65: getstatic com/datami/smi/a/a.f : [B
    //   68: bipush #41
    //   70: baload
    //   71: invokestatic a : (III)Ljava/lang/String;
    //   74: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: aload_3
    //   78: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   81: pop
    //   82: goto -> 10
    //   85: astore_3
    //   86: aload_0
    //   87: monitorexit
    //   88: aload_3
    //   89: athrow
    // Exception table:
    //   from	to	target	type
    //   4	8	29	java/lang/Exception
    //   4	8	85	finally
    //   10	26	85	finally
    //   30	82	85	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */