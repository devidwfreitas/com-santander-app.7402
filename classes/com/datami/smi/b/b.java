package com.datami.smi.b;

import android.content.Context;
import android.content.SharedPreferences;
import com.datami.smi.c.a;
import org.json.JSONObject;

public class b {
  private static b a;
  
  private static final byte[] b = new byte[] { 
      21, 37, 104, 108, -10, -9, -11, 4, -20, 1, 
      14, -13, -12, 4, 2, -31, 16, -16, -1, -13, 
      -11, 7, -11, 15, -8, 14, -24, 7, -9, -65, 
      65, -19, -7, 13, -8, -18, -61, 57, -11, 15, 
      -10, -9, -11, 4, -20, 14, -18, 6, -6, -6, 
      0, -19, -11, 7, -11, 15 };
  
  private static int c = 31;
  
  static {
    a = null;
  }
  
  private static b a() {
    // Byte code:
    //   0: ldc com/datami/smi/b/b
    //   2: monitorenter
    //   3: getstatic com/datami/smi/b/b.a : Lcom/datami/smi/b/b;
    //   6: ifnonnull -> 31
    //   9: ldc com/datami/smi/b/b
    //   11: monitorenter
    //   12: getstatic com/datami/smi/b/b.a : Lcom/datami/smi/b/b;
    //   15: ifnonnull -> 28
    //   18: new com/datami/smi/b/b
    //   21: dup
    //   22: invokespecial <init> : ()V
    //   25: putstatic com/datami/smi/b/b.a : Lcom/datami/smi/b/b;
    //   28: ldc com/datami/smi/b/b
    //   30: monitorexit
    //   31: getstatic com/datami/smi/b/b.a : Lcom/datami/smi/b/b;
    //   34: astore_0
    //   35: ldc com/datami/smi/b/b
    //   37: monitorexit
    //   38: aload_0
    //   39: areturn
    //   40: astore_0
    //   41: ldc com/datami/smi/b/b
    //   43: monitorexit
    //   44: aload_0
    //   45: athrow
    //   46: astore_0
    //   47: ldc com/datami/smi/b/b
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
    int i = paramInt2 * 16 + 100;
    int j = paramInt3 * 4 + 17;
    paramInt1 = paramInt1 * 4 + 4;
    byte[] arrayOfByte2 = b;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      paramInt3 = j;
    } else {
      paramInt2 = i;
      paramInt3 = 0;
      int m = paramInt3 + 1;
      arrayOfByte1[paramInt3] = (byte)paramInt2;
    } 
    i = i + paramInt3 + 5;
    paramInt1++;
    paramInt3 = paramInt2;
    paramInt2 = i;
    int k = paramInt3 + 1;
    arrayOfByte1[paramInt3] = (byte)paramInt2;
  }
  
  private static boolean a(Context paramContext) {
    SharedPreferences sharedPreferences = k.a(paramContext);
    byte b1 = b[50];
    byte b2 = b[9];
    if (sharedPreferences.contains(a(b1, b2, b2))) {
      b1 = b[50];
      b2 = b[9];
      long l = sharedPreferences.getLong(a(b1, b2, b2), -1L);
      if (sharedPreferences.contains(a(-b[5], b[9], b[50])) && l > System.currentTimeMillis())
        return true; 
    } 
    return false;
  }
  
  private static m b(Context paramContext) {
    SharedPreferences sharedPreferences = k.a(paramContext);
    int i = c;
    byte b1 = b[50];
    a a = new a(a(i & 0x5, b1, b1));
    String str = sharedPreferences.getString(a(-b[5], b[9], b[50]), null);
    if (str != null)
      try {
        JSONObject jSONObject = new JSONObject(a.b(str));
        m m = new m();
        m.a(jSONObject);
        return m;
      } catch (Exception exception) {
        exception.printStackTrace();
      }  
    return null;
  }
  
  private static void b() {}
  
  private static void c() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */