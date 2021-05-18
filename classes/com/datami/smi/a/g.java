package com.datami.smi.a;

enum g {
  a, b, c, d, e, f, g, h;
  
  private static final byte[] j = new byte[] { 
      29, -31, 22, -117, -16, -8, 28, -12, 1, 0, 
      -17, 12, 14, -15, -1, 5, 0, -2, -10, 4, 
      -22, 13, 13, -14, 3, -15, 11, 11, -4, 8, 
      3, 17, -12, -18, 13, 13, -14, 3, -15, 11, 
      11, -4, 8, 3, -27, 13, 13, -14, 3, -15, 
      11, 11, -4, 8, 15, -27, 12, 14, -15, -1, 
      5, -15, 11, 11, -4, 8, -7, 8, -18, 28, 
      -12, 1, 0, 9, 2, -17, 11, -6, 1, -5, 
      13, -14, 3, 1, 1, -5, 14, -26, 11, 11, 
      -4, 8, -3, -9, -1, -1, -11, 13, 13, -14, 
      3, 1, 1, -5, 14, -26, 11, 11, -4, 8 };
  
  private static int k = 194;
  
  static {
    a = new g(a(-j[87], j[19], j[21]), 0);
    byte b = j[9];
    b = new g(a(b, b, j[15]), 1);
    c = new g(a(j[11], -j[77], j[31]), 2);
    b = -j[77];
    d = new g(a(88, b, b), 3);
    e = new g(a(49, -j[66], -j[77]), 4);
    b = j[15];
    f = new g(a(62, b, b << 2), 5);
    g = new g(a(76, j[19], j[9]), 6);
    h = new g(a(38, -j[77], -j[33]), 7);
    i = new g[] { a, b, c, d, e, f, g, h };
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    byte[] arrayOfByte2 = j;
    paramInt3 += 65;
    int i = 91 - paramInt1;
    paramInt1 = 19 - paramInt2;
    byte[] arrayOfByte1 = new byte[paramInt1];
    int j = paramInt1 - 1;
    if (arrayOfByte2 == null) {
      paramInt2 = i;
      paramInt1 = -1;
      i = paramInt3;
      paramInt3 = j;
    } else {
      paramInt2 = -1;
      paramInt1 = paramInt3;
      int m = i + 1;
      arrayOfByte1[++paramInt2] = (byte)paramInt1;
    } 
    paramInt3 = i + -paramInt3;
    i = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = paramInt3;
    int k = i + 1;
    arrayOfByte1[++paramInt2] = (byte)paramInt1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */