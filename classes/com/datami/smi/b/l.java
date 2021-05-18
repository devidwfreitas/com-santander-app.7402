package com.datami.smi.b;

public enum l {
  a, b, c, d;
  
  private static final byte[] g = new byte[] { 
      84, -39, -37, 87, 7, 16, -16, 1, 1, 3, 
      11, 1, -3, 13, 5, -1, 8, 4, -17, 13, 
      -4, 3, 1, 3, 11, -11, -3, 14, -11, -3, 
      14, 7, 16, -16, 1, 1, -3, 13, 5, -1, 
      8, 4, -17, 13, -4, 3 };
  
  private static int h = 169;
  
  private final String e;
  
  static {
    a = new l(a(19, 18, g[16]), 0, a(g[9], g[17], g[16]));
    String str = a(g[5], g[7] - 1, g[4]);
    int i = g[7] - 1;
    b = new l(str, 1, a(i, i | 0x1B, g[4]));
    c = new l(a(19, 31, g[7] - 1), 2, a(g[9], g[4], g[7] - 1));
    d = new l(a(25, 21, g[16]), 3, a(h & 0x1F, 24, g[16]));
    f = new l[] { a, b, c, d };
  }
  
  l(String paramString1) {
    this.e = paramString1;
  }
  
  public static l a(String paramString) {
    l l1 = a;
    if (paramString != null)
      for (l l2 : values()) {
        if (paramString.equalsIgnoreCase(l2.e))
          return l2; 
      }  
    return l1;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int k = 12 - paramInt3;
    paramInt2 += 4;
    byte[] arrayOfByte2 = g;
    byte[] arrayOfByte1 = new byte[k];
    if (arrayOfByte2 == null) {
      paramInt1 = 0;
      i = paramInt2;
      paramInt3 = k;
      j = paramInt2;
    } else {
      paramInt3 = 0;
      paramInt1 = 116 - paramInt1 * 2;
      i = paramInt3 + 1;
      arrayOfByte1[paramInt3] = (byte)paramInt1;
    } 
    int j = -j;
    paramInt2 = i + 1;
    int i = j + paramInt3 + 2;
    paramInt3 = paramInt1;
    paramInt1 = i;
    i = paramInt3 + 1;
    arrayOfByte1[paramInt3] = (byte)paramInt1;
  }
  
  public final String toString() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */