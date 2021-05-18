package com.datami.smi.d;

import android.content.Context;
import com.datami.smi.a.a;
import com.datami.smi.a.d;
import com.datami.smi.b.m;
import com.datami.smi.c.c;
import com.datami.smi.g.c;
import java.util.HashMap;
import java.util.Properties;
import java.util.TimerTask;
import org.json.JSONObject;

public final class g extends TimerTask {
  private static Context a;
  
  private static final byte[] b = new byte[] { 
      81, -102, -37, -17, 14, 5, -17, 5, 2, -50, 
      22, -1, -10, -3, 12, -5, 2, 79, -72, -4, 
      79, -82, 15, -8, 11, -4, -4, 8, 72, -68, 
      -16, 18, -8, -5, 2, 84, -67, 4, -18, 20, 
      66, 15, -16, -32, 80, -34, -43, 4, 1, 8, 
      3, -16, 6, -2, 83, -84, 4, 7, 77, -69, 
      -8, -5, 8, 11, 69, -72, -4, 79, -67, 0, 
      -10, 5, -2, -9, 13, 9, -8, -5, -8, 5, 
      2, 47, -50, -32, 3, 10, -4, 8, 72, -32, 
      80, -36, -48, 18, -8, -5, 2, 84, -83, 6, 
      80, -79, -1, 4, 13, -1, -13, 1, -8, -8, 
      5, 13, 11, -25, 5, 23, -16, -6, 24, -20, 
      -3, 9, -12, 0, -25, 5, 23, -16, -6, 39, 
      -48, 18, -8, -5, 37, -33, 4, 13, -1, -13, 
      1, 5, -2, 31, -12, -17, 9, 76, -83, 12, 
      -3, 9, -12, 83, -69, -2, -8, 14, 2, 68, 
      -43, 4, 1, 8, 3, -16, 6, -2, 83, -52, 
      4, 7, 45, -8, -8, 5, 13, 25, -48, 18, 
      -8, -5, 35, -18, -1, -1, -9, 0, 16, -12, 
      32, -17, -12, -3, 14, 7, -1, -43, 4, 1, 
      8, 3, -16, 6, -2, 83, -81, 14, -13, 4, 
      2, 2, -4, 15, 70 };
  
  private static int c = 16;
  
  public g(Context paramContext) {
    a = paramContext;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt3 += 4;
    paramInt1 += 67;
    byte[] arrayOfByte2 = b;
    int j = paramInt2 + 3;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      boolean bool = false;
      paramInt2 = paramInt3;
      i = paramInt1;
      paramInt3 = j;
      paramInt1 = paramInt2;
      paramInt2 = bool;
    } else {
      paramInt2 = 0;
      int m = paramInt2 + 1;
      arrayOfByte1[paramInt2] = (byte)paramInt1;
    } 
    int i = -paramInt3 + i + 1;
    paramInt3 = paramInt1;
    paramInt1 = i;
    int k = paramInt2 + 1;
    arrayOfByte1[paramInt2] = (byte)paramInt1;
  }
  
  public final void run() {
    a(b[118], b[4], 103);
    int i = c;
    byte b = -b[45];
    a(i, b, b | 0x55);
    a.a();
    a.b();
    null = d.a().c();
    if (null.size() > 0)
      m.a(a.a(d.g), null); 
    synchronized (m.i) {
      boolean bool = m.i.isEmpty();
      if (!bool) {
        StringBuilder stringBuilder1;
        try {
          JSONObject jSONObject = a.a();
          a(b[118], b[10], 168);
          StringBuilder stringBuilder = new StringBuilder();
          i = b[57];
          b = b[75];
          stringBuilder.append(a(i, b, b | 0x40)).append(jSONObject.toString());
          String str1 = m.F();
          if (str1.isEmpty()) {
            i = b[24];
            b = -b[135];
            throw new Exception(a(i, b, b + 5));
          } 
        } catch (Exception exception) {
          Class<?> clazz;
          Properties properties = new Properties();
          String str1 = a(b[81], b[50], b[11]);
          if (exception.getMessage() != null) {
            String str2 = exception.getMessage();
          } else {
            clazz = exception.getClass();
          } 
          properties.put(str1, clazz);
          properties.put(a(-b[92], b[69], -b[91]), a.a(c.c));
          m.b(a.a(d.d), properties);
          a(b[118], b[10], 168);
          stringBuilder1 = new StringBuilder();
          i = b[8];
          stringBuilder1.append(a(i, i | 0x1C, b[37])).append(exception.getMessage());
          return;
        } 
        a(b[118], b[10], 168);
        StringBuilder stringBuilder2 = new StringBuilder();
        i = b[69];
        b = b[24];
        stringBuilder2.append(a(i, b, b | 0x90)).append((String)exception);
        bool = false;
        if (c.a != null)
          bool = c.a.e(); 
        String str = c.a(a, (String)exception, stringBuilder1.toString(), false, bool);
        a(b[118], b[10], 168);
        (new StringBuilder()).append(a(b[69], c, 192)).append(str);
        if (c.a() == 200) {
          m.i.clear();
        } else {
          Properties properties = new Properties();
          properties.put(a(-b[92], b[69], -b[91]), a.a(c.b));
          m.b(a.a(d.d), properties);
        } 
      } else {
        a(b[118], b[10], 168);
        a(b[24], -b[3], b[35]);
      } 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\d\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */