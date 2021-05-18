package com.datami.smi.b;

import org.json.JSONArray;
import org.json.JSONException;

final class o implements Runnable {
  private static final byte[] c = new byte[] { 
      30, 25, 113, 57, 45, 0, -3, 3, -82, 73, 
      5, -78, 70, -1, 15, -17, 5, 1, 5, -7, 
      -71, 83, -3, -1, -1, 5, -4, 3, -82, 66, 
      10, 3, -12, 8, -6, -1, -68, 54, 19, -5, 
      1, 10, 4 };
  
  private static int d = 38;
  
  o(m paramm, JSONArray paramJSONArray) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i;
    byte[] arrayOfByte2 = c;
    paramInt3 = paramInt3 * 2 + 4;
    int j = 40 - paramInt2 * 2;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      paramInt1 = paramInt3;
      i = j;
    } else {
      i = paramInt3;
      paramInt3 = 0;
      paramInt2 = paramInt1 * 4 + 69;
      paramInt1 = i;
      int n = paramInt3 + 1;
      arrayOfByte1[paramInt3] = (byte)paramInt2;
    } 
    paramInt1++;
    i += paramInt3;
    paramInt3 = paramInt2;
    paramInt2 = i;
    int k = paramInt3 + 1;
    arrayOfByte1[paramInt3] = (byte)paramInt2;
  }
  
  public final void run() {
    if (!m.W().isEmpty())
      m.W().clear(); 
    int i = 0;
    while (true) {
      int n;
      int i1;
      if (i < this.a.length()) {
        try {
          m.W().add(this.a.getString(i));
          i++;
          continue;
        } catch (JSONException jSONException) {
          String str = m.J;
          j = c[5];
          byte[] arrayOfByte2 = c;
          int i2 = j * 2 + 4;
          int i3 = 40 - j * 2;
          byte[] arrayOfByte1 = new byte[i3];
          if (arrayOfByte2 == null) {
            j = 0;
            i1 = i2;
            n = i3;
            k = i2;
            i2 = i;
          } else {
            n = i2;
            k = 0;
            j = j * 4 + 69;
            i2 = i;
            i = n;
            i1 = k + 1;
            arrayOfByte1[k] = (byte)j;
          } 
        } 
      } else {
        return;
      } 
      i = i1 + 1;
      n += k;
      int k = j;
      int j = n;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */