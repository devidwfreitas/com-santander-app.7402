package com.datami.smi.d;

import android.content.Context;
import com.datami.smi.b.m;
import com.datami.smi.c.c;
import com.datami.smi.g.c;
import java.util.Properties;
import java.util.TimerTask;
import org.json.JSONObject;

public final class f extends TimerTask {
  private static Context a;
  
  private static final byte[] b = new byte[] { 
      36, -104, 42, -43, -13, -4, 18, -4, -1, 51, 
      -21, 2, 11, 4, -11, 6, -1, -78, 73, 5, 
      -78, 83, -14, 9, -10, 5, 5, -7, -71, 69, 
      17, -17, 9, 6, -1, -83, 68, -3, 19, -19, 
      -65, -14, 17, 26, -4, -36, 49, -17, 9, 6, 
      -36, 34, -3, -12, 2, 14, 0, -4, 3, -30, 
      13, 18, -8, -75, 84, -11, 4, -8, 13, -82, 
      70, 3, 9, -13, -1, 9, -4, -1, -46, 51, 
      33, -2, -9, 5, -7, -71, 33, -79, 37, 49, 
      -17, 9, 6, -1, -83, 84, -5, -79, 80, 2, 
      -3, -12, 2, 14, 0, 9, 9, -4, -12, -10, 
      26, -4, -22, 17, 7, -23, 21, 4, -8, 13, 
      1, 44, -3, 0, -7, -2, 17, -5, 3, -82, 
      53, -3, -6, -44, 33, -79, 35, 44, -3, 0, 
      -7, -2, 17, -5, 3, -82, 70, 9, 6, -7, 
      -10, -68, 73, 5, -78, 84, -12, -3, -69, 68, 
      1, 11, -4, 3, 10, -12, -8, 9, 6, 9, 
      9, -4, -12, -24, 49, -17, 9, 6, -34, 19, 
      2, 2, 10, 1, -15, 13, -31, 18, 13, 4, 
      -13, -6, 2, 44, -3, 0, -7, -2, 17, -5, 
      3, -82, 82, -13, 14, -3, -1, -1, 5, -14, 
      -69 };
  
  private static int c = 213;
  
  public f(Context paramContext) {
    a = paramContext;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i;
    paramInt3 += 3;
    byte[] arrayOfByte2 = b;
    paramInt2 = 192 - paramInt2;
    byte[] arrayOfByte1 = new byte[paramInt3];
    int j = paramInt3 - 1;
    if (arrayOfByte2 == null) {
      byte b = -1;
      paramInt1 = paramInt2;
      i = paramInt2;
      paramInt3 = j;
      paramInt2 = paramInt1;
      paramInt1 = b;
    } else {
      paramInt1 = 115 - paramInt1;
      paramInt3 = -1;
      int m = paramInt3 + 1;
      arrayOfByte1[m] = (byte)paramInt1;
      paramInt2++;
    } 
    i += paramInt3;
    paramInt3 = paramInt1;
    paramInt1 = i;
    int k = paramInt3 + 1;
    arrayOfByte1[k] = (byte)paramInt1;
    paramInt2++;
  }
  
  public final void run() {
    boolean bool = false;
    byte b = -b[173];
    a(b, b | 0x40, b[55]);
    a(b[80] - 1, 150, -b[59]);
    synchronized (m.h) {
      boolean bool1 = m.h.isEmpty();
      if (!bool1) {
        StringBuilder stringBuilder1;
        try {
          JSONObject jSONObject = a.b();
          b = -b[173];
          a(b, b, -b[112]);
          (new StringBuilder()).append(a(b[2] - 1, 118, b[23])).append(jSONObject.toString());
          String str1 = m.F();
          if (c.a != null)
            bool = c.a.e(); 
          if (str1.isEmpty())
            throw new Exception(a(b[88], 59, b[80])); 
        } catch (Exception exception) {
          Class<?> clazz;
          Properties properties = new Properties();
          b = b[120];
          String str1 = a(b, b | 0xBC, b[58]);
          if (exception.getMessage() != null) {
            String str2 = exception.getMessage();
          } else {
            clazz = exception.getClass();
          } 
          properties.put(str1, clazz);
          b = b[56];
          properties.put(a(b, b | 0x98, b[56]), a.a(c.c));
          m.b(a.a(d.d), properties);
          b = -b[173];
          a(b, b, -b[112]);
          stringBuilder1 = new StringBuilder();
          b = -b[78];
          stringBuilder1.append(a(b, b << 2, -b[59])).append(exception.getMessage());
          return;
        } 
        b = -b[173];
        a(b, b, -b[112]);
        (new StringBuilder()).append(a(b[46] - 1, b[18] - 1, b[12])).append((String)exception);
        String str = c.a(a, (String)exception, stringBuilder1.toString(), false, bool);
        b = -b[173];
        a(b, b, -b[112]);
        StringBuilder stringBuilder2 = new StringBuilder();
        b = b[46];
        byte b1 = b[56];
        stringBuilder2.append(a(b - 1, b1, b1 | 0x10)).append(str);
        if (c.a() == 200) {
          m.h.clear();
        } else {
          Properties properties = new Properties();
          b = b[56];
          properties.put(a(b, b | 0x98, b[56]), a.a(c.b));
          m.b(a.a(d.d), properties);
        } 
      } else {
        b = -b[173];
        a(b, b, -b[112]);
        a(b[88], 107, b[30]);
      } 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\d\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */