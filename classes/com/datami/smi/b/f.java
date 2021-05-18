package com.datami.smi.b;

import java.io.Serializable;

public enum f implements Serializable {
  a, b, c, d, e, f, g;
  
  private static final byte[] i = new byte[] { 
      12, 88, -46, 74, 13, 4, -20, 1, 12, -15, 
      7, -22, 28, 2, -11, 0, -15, 5, -15, 13, 
      13, 4, -20, 1, 12, -9, -8, 12, -4, 14, 
      -11, 17, -5, 3, 1, 5, 4, 6, -9, -17, 
      26, -19, 8, 7, -9, 13, 1, 3, 14, -12, 
      4, -5, 7, -24, 28, -5, 7, -13, 7, 2, 
      1, -1, 19, -17, -2, -11, 12, 15, -27, 27, 
      3, -19, 19 };
  
  private static int j = 211;
  
  static {
    a = new f(a(j >>> 2, i[10], i[62]), 0);
    b = new f(a(57, -i[25], i[13]), 1);
    c = new f(a(i[40], i[13], i[15]), 2);
    d = new f(a(36, i[5], i[37]), 3);
    e = new f(a(45, i[17], i[29]), 4);
    f = new f(a(i[15], i[13], i[7]), 5);
    g = new f(a(i[29], i[15], i[13]), 6);
    h = new f[] { a, b, c, d, e, f, g };
  }
  
  private String a() {
    return name();
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt3 = 84 - paramInt3;
    int i = 60 - paramInt1;
    byte[] arrayOfByte2 = i;
    int j = 15 - paramInt2;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      paramInt1 = i;
      i = j;
    } else {
      paramInt1 = paramInt3;
      paramInt2 = 0;
      int n = i + 1;
      int i1 = paramInt2 + 1;
      arrayOfByte1[paramInt2] = (byte)paramInt1;
    } 
    paramInt3 = i + -paramInt3;
    i = paramInt1;
    paramInt1 = paramInt3;
    int k = i + 1;
    int m = paramInt2 + 1;
    arrayOfByte1[paramInt2] = (byte)paramInt1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */