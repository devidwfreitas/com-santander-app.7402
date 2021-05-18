package com.datami.smi.b;

import org.json.JSONArray;
import org.json.JSONException;

final class n implements Runnable {
  private static final byte[] c = new byte[] { 
      56, -83, -11, 119, -45, 0, 3, -3, 82, -73, 
      -5, 78, -70, 1, -15, 17, -5, -1, -5, 7, 
      71, -83, 3, 1, 1, -5, 4, -3, 82, -66, 
      -10, -3, 12, -8, 6, 1, 68, -54, -19, 5, 
      -1, -10, -4 };
  
  private static int d = 142;
  
  n(m paramm, JSONArray paramJSONArray) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int j;
    byte[] arrayOfByte2 = c;
    int k = paramInt1 * 2 + 40;
    paramInt1 = paramInt2 * 3 + 69;
    paramInt3 = paramInt3 * 3 + 4;
    byte[] arrayOfByte1 = new byte[k];
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      j = k;
      i = paramInt1;
    } else {
      i = paramInt3;
      paramInt3 = 0;
      paramInt2 = paramInt1;
      paramInt1 = i;
      int i2 = paramInt3 + 1;
      arrayOfByte1[paramInt3] = (byte)paramInt2;
    } 
    int i = j + -i;
    paramInt1 = paramInt3 + 1;
    paramInt3 = paramInt2;
    paramInt2 = i;
    int i1 = paramInt3 + 1;
    arrayOfByte1[paramInt3] = (byte)paramInt2;
  }
  
  public final void run() {
    if (!m.V().isEmpty())
      m.V().clear(); 
    int i = 0;
    while (true) {
      int i2;
      if (i < this.a.length()) {
        try {
          m.V().add(this.a.getString(i));
          i++;
          continue;
        } catch (JSONException jSONException) {
          String str = m.J;
          j = c[5];
          byte[] arrayOfByte2 = c;
          int i4 = j * 2 + 40;
          int i3 = j * 3 + 69;
          k = j * 3 + 4;
          byte[] arrayOfByte1 = new byte[i4];
          if (arrayOfByte2 == null) {
            j = 0;
            i2 = i4;
            i1 = i3;
            i3 = i;
          } else {
            i1 = k;
            j = i3;
            k = 0;
            i3 = i;
            i = i1;
            int i5 = k + 1;
            arrayOfByte1[k] = (byte)j;
          } 
        } 
      } else {
        return;
      } 
      int i1 = i2 + -i1;
      i = k + 1;
      int k = j;
      int j = i1;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */