final class fax {
  private static final int[][] a;
  
  private static final int[][] b = new int[][] { { 1, 1, 1, 1, 1 }, { 1, 0, 0, 0, 1 }, { 1, 0, 1, 0, 1 }, { 1, 0, 0, 0, 1 }, { 1, 1, 1, 1, 1 } };
  
  private static final int[][] c;
  
  private static final int[][] d;
  
  private static final int e = 7973;
  
  private static final int f = 1335;
  
  private static final int g = 21522;
  
  static {
    arrayOfInt1 = new int[] { 6, 18, -1, -1, -1, -1, -1 };
    arrayOfInt2 = new int[] { 6, 22, 38, -1, -1, -1, -1 };
    arrayOfInt3 = new int[] { 6, 28, 50, -1, -1, -1, -1 };
    int[] arrayOfInt4 = { 6, 26, 46, 66, -1, -1, -1 };
    int[] arrayOfInt5 = { 6, 26, 50, 74, -1, -1, -1 };
    int[] arrayOfInt6 = { 6, 30, 56, 82, -1, -1, -1 };
    int[] arrayOfInt7 = { 6, 28, 54, 80, 106, -1, -1 };
    int[] arrayOfInt8 = { 6, 34, 62, 90, 118, -1, -1 };
    int[] arrayOfInt9 = { 6, 30, 54, 78, 102, 126, 150 };
    int[] arrayOfInt10 = { 6, 32, 58, 84, 110, 136, 162 };
    int[] arrayOfInt11 = { 6, 26, 54, 82, 110, 138, 166 };
    c = new int[][] { 
        { -1, -1, -1, -1, -1, -1, -1 }, arrayOfInt1, { 6, 22, -1, -1, -1, -1, -1 }, { 6, 26, -1, -1, -1, -1, -1 }, { 6, 30, -1, -1, -1, -1, -1 }, { 6, 34, -1, -1, -1, -1, -1 }, arrayOfInt2, { 6, 24, 42, -1, -1, -1, -1 }, { 6, 26, 46, -1, -1, -1, -1 }, arrayOfInt3, 
        { 6, 30, 54, -1, -1, -1, -1 }, { 6, 32, 58, -1, -1, -1, -1 }, { 6, 34, 62, -1, -1, -1, -1 }, arrayOfInt4, { 6, 26, 48, 70, -1, -1, -1 }, arrayOfInt5, { 6, 30, 54, 78, -1, -1, -1 }, arrayOfInt6, { 6, 30, 58, 86, -1, -1, -1 }, { 6, 34, 62, 90, -1, -1, -1 }, 
        { 6, 28, 50, 72, 94, -1, -1 }, { 6, 26, 50, 74, 98, -1, -1 }, { 6, 30, 54, 78, 102, -1, -1 }, arrayOfInt7, { 6, 32, 58, 84, 110, -1, -1 }, { 6, 30, 58, 86, 114, -1, -1 }, arrayOfInt8, { 6, 26, 50, 74, 98, 122, -1 }, { 6, 30, 54, 78, 102, 126, -1 }, { 6, 26, 52, 78, 104, 130, -1 }, 
        { 6, 30, 56, 82, 108, 134, -1 }, { 6, 34, 60, 86, 112, 138, -1 }, { 6, 30, 58, 86, 114, 142, -1 }, { 6, 34, 62, 90, 118, 146, -1 }, arrayOfInt9, { 6, 24, 50, 76, 102, 128, 154 }, { 6, 28, 54, 80, 106, 132, 158 }, arrayOfInt10, arrayOfInt11, { 6, 30, 58, 86, 114, 142, 170 } };
    arrayOfInt1 = new int[] { 8, 3 };
    d = new int[][] { 
        { 8, 0 }, { 8, 1 }, { 8, 2 }, arrayOfInt1, { 8, 4 }, { 8, 5 }, { 8, 7 }, { 8, 8 }, { 7, 8 }, { 5, 8 }, 
        { 4, 8 }, { 3, 8 }, { 2, 8 }, { 1, 8 }, { 0, 8 } };
  }
  
  static int a(int paramInt) {
    boolean bool = false;
    int i = paramInt;
    for (paramInt = bool; i != 0; paramInt++)
      i >>>= 1; 
    return paramInt;
  }
  
  static int a(int paramInt1, int paramInt2) {
    if (paramInt2 == 0)
      throw new IllegalArgumentException("0 polynomial"); 
    int i = a(paramInt2);
    for (paramInt1 <<= i - 1; a(paramInt1) >= i; paramInt1 ^= paramInt2 << a(paramInt1) - i);
    return paramInt1;
  }
  
  private static void a(int paramInt1, int paramInt2, fat paramfat) {
    for (int i = 0; i < 8; i++) {
      if (!b(paramfat.a(paramInt1 + i, paramInt2)))
        throw new eqr(); 
      paramfat.a(paramInt1 + i, paramInt2, 0);
    } 
  }
  
  static void a(ets paramets, int paramInt, fat paramfat) {
    int k = paramfat.b() - 1;
    int j = paramfat.a() - 1;
    byte b = -1;
    int i = 0;
    while (k > 0) {
      if (k == 6)
        k--; 
      while (j >= 0 && j < paramfat.a()) {
        for (int m = 0; m < 2; m++) {
          int n = k - m;
          if (b(paramfat.a(n, j))) {
            boolean bool1;
            if (i < paramets.a()) {
              bool1 = paramets.a(i);
              i++;
            } else {
              bool1 = false;
            } 
            boolean bool2 = bool1;
            if (paramInt != -1) {
              bool2 = bool1;
              if (faw.a(paramInt, n, j))
                if (!bool1) {
                  bool2 = true;
                } else {
                  bool2 = false;
                }  
            } 
            paramfat.a(n, j, bool2);
          } 
        } 
        j += b;
      } 
      b = -b;
      k -= 2;
      j += b;
    } 
    if (i != paramets.a())
      throw new eqr("Not all bits consumed: " + i + '/' + paramets.a()); 
  }
  
  static void a(ets paramets, fac paramfac, fag paramfag, int paramInt, fat paramfat) {
    a(paramfat);
    a(paramfag, paramfat);
    a(paramfac, paramInt, paramfat);
    b(paramfag, paramfat);
    a(paramets, paramInt, paramfat);
  }
  
  static void a(fac paramfac, int paramInt, ets paramets) {
    if (!fay.b(paramInt))
      throw new eqr("Invalid mask pattern"); 
    paramInt = paramfac.getBits() << 3 | paramInt;
    paramets.c(paramInt, 5);
    paramets.c(a(paramInt, 1335), 10);
    ets ets1 = new ets();
    ets1.c(21522, 15);
    paramets.b(ets1);
    if (paramets.a() != 15)
      throw new eqr("should not happen but we got: " + paramets.a()); 
  }
  
  static void a(fac paramfac, int paramInt, fat paramfat) {
    ets ets = new ets();
    a(paramfac, paramInt, ets);
    for (paramInt = 0; paramInt < ets.a(); paramInt++) {
      boolean bool = ets.a(ets.a() - 1 - paramInt);
      paramfat.a(d[paramInt][0], d[paramInt][1], bool);
      if (paramInt < 8) {
        paramfat.a(paramfat.b() - paramInt - 1, 8, bool);
      } else {
        paramfat.a(8, paramfat.a() - 7 + paramInt - 8, bool);
      } 
    } 
  }
  
  static void a(fag paramfag, ets paramets) {
    paramets.c(paramfag.a(), 6);
    paramets.c(a(paramfag.a(), 7973), 12);
    if (paramets.a() != 18)
      throw new eqr("should not happen but we got: " + paramets.a()); 
  }
  
  static void a(fag paramfag, fat paramfat) {
    d(paramfat);
    c(paramfat);
    c(paramfag, paramfat);
    b(paramfat);
  }
  
  static void a(fat paramfat) {
    paramfat.a((byte)-1);
  }
  
  private static void b(int paramInt1, int paramInt2, fat paramfat) {
    for (int i = 0; i < 7; i++) {
      if (!b(paramfat.a(paramInt1, paramInt2 + i)))
        throw new eqr(); 
      paramfat.a(paramInt1, paramInt2 + i, 0);
    } 
  }
  
  static void b(fag paramfag, fat paramfat) {
    if (paramfag.a() >= 7) {
      ets ets = new ets();
      a(paramfag, ets);
      int i = 17;
      int j = 0;
      while (true) {
        if (j < 6) {
          int k;
          for (k = 0; k < 3; k++) {
            boolean bool = ets.a(i);
            i--;
            paramfat.a(j, paramfat.a() - 11 + k, bool);
            paramfat.a(paramfat.a() - 11 + k, j, bool);
          } 
          j++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private static void b(fat paramfat) {
    for (int i = 8; i < paramfat.b() - 8; i++) {
      int j = (i + 1) % 2;
      if (b(paramfat.a(i, 6)))
        paramfat.a(i, 6, j); 
      if (b(paramfat.a(6, i)))
        paramfat.a(6, i, j); 
    } 
  }
  
  private static boolean b(int paramInt) {
    return (paramInt == -1);
  }
  
  private static void c(int paramInt1, int paramInt2, fat paramfat) {
    for (int i = 0; i < 5; i++) {
      int j;
      for (j = 0; j < 5; j++)
        paramfat.a(paramInt1 + j, paramInt2 + i, b[i][j]); 
    } 
  }
  
  private static void c(fag paramfag, fat paramfat) {
    if (paramfag.a() >= 2) {
      int i = paramfag.a() - 1;
      int[] arrayOfInt = c[i];
      int j = (c[i]).length;
      i = 0;
      while (true) {
        if (i < j) {
          for (int k = 0; k < j; k++) {
            int m = arrayOfInt[i];
            int n = arrayOfInt[k];
            if (n != -1 && m != -1 && b(paramfat.a(n, m)))
              c(n - 2, m - 2, paramfat); 
          } 
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private static void c(fat paramfat) {
    if (paramfat.a(8, paramfat.a() - 8) == 0)
      throw new eqr(); 
    paramfat.a(8, paramfat.a() - 8, 1);
  }
  
  private static void d(int paramInt1, int paramInt2, fat paramfat) {
    for (int i = 0; i < 7; i++) {
      int j;
      for (j = 0; j < 7; j++)
        paramfat.a(paramInt1 + j, paramInt2 + i, a[i][j]); 
    } 
  }
  
  private static void d(fat paramfat) {
    int i = (a[0]).length;
    d(0, 0, paramfat);
    d(paramfat.b() - i, 0, paramfat);
    d(0, paramfat.b() - i, paramfat);
    a(0, 7, paramfat);
    a(paramfat.b() - 8, 7, paramfat);
    a(0, paramfat.b() - 8, paramfat);
    b(7, 0, paramfat);
    b(paramfat.a() - 7 - 1, 0, paramfat);
    b(7, paramfat.a() - 7, paramfat);
  }
  
  static {
    int[] arrayOfInt1 = { 1, 1, 1, 1, 1, 1, 1 };
    int[] arrayOfInt2 = { 1, 0, 1, 1, 1, 0, 1 };
    int[] arrayOfInt3 = { 1, 1, 1, 1, 1, 1, 1 };
    a = new int[][] { arrayOfInt1, { 1, 0, 0, 0, 0, 0, 1 }, { 1, 0, 1, 1, 1, 0, 1 }, arrayOfInt2, { 1, 0, 1, 1, 1, 0, 1 }, { 1, 0, 0, 0, 0, 0, 1 }, arrayOfInt3 };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */