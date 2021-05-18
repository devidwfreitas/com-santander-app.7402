final class faw {
  private static final int a = 3;
  
  private static final int b = 3;
  
  private static final int c = 40;
  
  private static final int d = 10;
  
  static int a(fat paramfat) {
    return a(paramfat, true) + a(paramfat, false);
  }
  
  private static int a(fat paramfat, boolean paramBoolean) {
    int j;
    int k;
    if (paramBoolean) {
      j = paramfat.a();
    } else {
      j = paramfat.b();
    } 
    if (paramBoolean) {
      k = paramfat.b();
    } else {
      k = paramfat.a();
    } 
    byte[][] arrayOfByte = paramfat.c();
    int m = 0;
    int i;
    for (i = 0; m < j; i = n) {
      int n = -1;
      int i1 = 0;
      int i2;
      for (i2 = 0; i1 < k; i2 = i3) {
        int i3;
        if (paramBoolean) {
          i3 = arrayOfByte[m][i1];
        } else {
          i3 = arrayOfByte[i1][m];
        } 
        if (i3 == n) {
          i3 = i2 + 1;
        } else {
          n = i;
          if (i2 >= 5)
            n = i + i2 - 5 + 3; 
          i2 = 1;
          i = n;
          n = i3;
          i3 = i2;
        } 
        i1++;
      } 
      n = i;
      if (i2 >= 5)
        n = i + i2 - 5 + 3; 
      m++;
    } 
    return i;
  }
  
  static boolean a(int paramInt1, int paramInt2, int paramInt3) {
    switch (paramInt1) {
      default:
        throw new IllegalArgumentException("Invalid mask pattern: " + paramInt1);
      case 0:
        paramInt1 = paramInt3 + paramInt2 & 0x1;
        return (paramInt1 == 0);
      case 1:
        paramInt1 = paramInt3 & 0x1;
        return (paramInt1 == 0);
      case 2:
        paramInt1 = paramInt2 % 3;
        return (paramInt1 == 0);
      case 3:
        paramInt1 = (paramInt3 + paramInt2) % 3;
        return (paramInt1 == 0);
      case 4:
        paramInt1 = paramInt3 / 2 + paramInt2 / 3 & 0x1;
        return (paramInt1 == 0);
      case 5:
        paramInt1 = paramInt3 * paramInt2;
        paramInt1 = paramInt1 % 3 + (paramInt1 & 0x1);
        return (paramInt1 == 0);
      case 6:
        paramInt1 = paramInt3 * paramInt2;
        paramInt1 = paramInt1 % 3 + (paramInt1 & 0x1) & 0x1;
        return (paramInt1 == 0);
      case 7:
        break;
    } 
    paramInt1 = paramInt3 * paramInt2 % 3 + (paramInt3 + paramInt2 & 0x1) & 0x1;
    return (paramInt1 == 0);
  }
  
  private static boolean a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    boolean bool = true;
    while (true) {
      boolean bool1 = bool;
      if (paramInt1 < paramInt2) {
        if (paramInt1 >= 0 && paramInt1 < paramArrayOfbyte.length && paramArrayOfbyte[paramInt1] == 1)
          return false; 
      } else {
        return bool1;
      } 
      paramInt1++;
    } 
  }
  
  private static boolean a(byte[][] paramArrayOfbyte, int paramInt1, int paramInt2, int paramInt3) {
    boolean bool = true;
    while (true) {
      boolean bool1 = bool;
      if (paramInt2 < paramInt3) {
        if (paramInt2 >= 0 && paramInt2 < paramArrayOfbyte.length && paramArrayOfbyte[paramInt2][paramInt1] == 1)
          return false; 
      } else {
        return bool1;
      } 
      paramInt2++;
    } 
  }
  
  static int b(fat paramfat) {
    byte[][] arrayOfByte = paramfat.c();
    int k = paramfat.b();
    int m = paramfat.a();
    int i = 0;
    int j = 0;
    while (i < m - 1) {
      int n = 0;
      while (n < k - 1) {
        byte b = arrayOfByte[i][n];
        int i1 = j;
        if (b == arrayOfByte[i][n + 1]) {
          i1 = j;
          if (b == arrayOfByte[i + 1][n]) {
            i1 = j;
            if (b == arrayOfByte[i + 1][n + 1])
              i1 = j + 1; 
          } 
        } 
        n++;
        j = i1;
      } 
      i++;
    } 
    return j * 3;
  }
  
  static int c(fat paramfat) {
    byte[][] arrayOfByte = paramfat.c();
    int j = paramfat.b();
    int k = paramfat.a();
    int i = 0;
    byte b = 0;
    while (i < k) {
      int m = 0;
      while (true)
        m++; 
      continue;
      i++;
    } 
    return b * 40;
  }
  
  static int d(fat paramfat) {
    byte[][] arrayOfByte = paramfat.c();
    int k = paramfat.b();
    int m = paramfat.a();
    int i = 0;
    int j = 0;
    while (i < m) {
      byte[] arrayOfByte1 = arrayOfByte[i];
      int n = 0;
      while (n < k) {
        int i1 = j;
        if (arrayOfByte1[n] == 1)
          i1 = j + 1; 
        n++;
        j = i1;
      } 
      i++;
    } 
    i = paramfat.a() * paramfat.b();
    return Math.abs(j * 2 - i) * 10 / i * 10;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\faw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */