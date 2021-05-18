import java.lang.reflect.Array;

public final class eub extends etz {
  private static final int a = 3;
  
  private static final int b = 8;
  
  private static final int c = 7;
  
  private static final int d = 40;
  
  private static final int e = 24;
  
  private ett f;
  
  public eub(eqd parameqd) {
    super(parameqd);
  }
  
  private static int a(int paramInt1, int paramInt2, int paramInt3) {
    return (paramInt1 < paramInt2) ? paramInt2 : ((paramInt1 > paramInt3) ? paramInt3 : paramInt1);
  }
  
  private static void a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, ett paramett) {
    int i = paramInt2 * paramInt4 + paramInt1;
    int j = 0;
    while (j < 8) {
      int k;
      for (k = 0; k < 8; k++) {
        if ((paramArrayOfbyte[i + k] & 0xFF) <= paramInt3)
          paramett.b(paramInt1 + k, paramInt2 + j); 
      } 
      j++;
      i += paramInt4;
    } 
  }
  
  private static void a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[][] paramArrayOfint, ett paramett) {
    int i;
    for (i = 0; i < paramInt2; i++) {
      int j = i << 3;
      int k = paramInt4 - 8;
      if (j > k)
        j = k; 
      for (k = 0; k < paramInt1; k++) {
        int m = k << 3;
        int n = paramInt3 - 8;
        if (m > n)
          m = n; 
        int i2 = a(k, 2, paramInt1 - 3);
        int i3 = a(i, 2, paramInt2 - 3);
        int i1 = 0;
        for (n = -2; n <= 2; n++) {
          int[] arrayOfInt = paramArrayOfint[i3 + n];
          int i4 = arrayOfInt[i2 - 2];
          int i5 = arrayOfInt[i2 - 1];
          int i6 = arrayOfInt[i2];
          int i7 = arrayOfInt[i2 + 1];
          i1 += arrayOfInt[i2 + 2] + i4 + i5 + i6 + i7;
        } 
        a(paramArrayOfbyte, m, j, i1 / 25, paramInt3, paramett);
      } 
    } 
  }
  
  private static int[][] a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int[][] arrayOfInt = (int[][])Array.newInstance(int.class, new int[] { paramInt2, paramInt1 });
    int i;
    for (i = 0; i < paramInt2; i++) {
      int k = i << 3;
      int j = paramInt4 - 8;
      if (k > j)
        k = j; 
      int m;
      for (m = 0; m < paramInt1; m++) {
        j = m << 3;
        int n = paramInt3 - 8;
        if (j > n)
          j = n; 
        int i4 = 0;
        int i1 = 255;
        n = 0;
        int i2 = 0;
        int i3 = k * paramInt3 + j;
        j = i4;
        while (i2 < 8) {
          int i5;
          int i6;
          i4 = 0;
          while (i4 < 8) {
            i5 = paramArrayOfbyte[i3 + i4] & 0xFF;
            if (i5 < i1)
              i1 = i5; 
            if (i5 > n)
              n = i5; 
            i4++;
            j += i5;
          } 
          if (n - i1 > 24) {
            i4 = i3 + paramInt3;
            i3 = i2 + 1;
            i2 = i4;
            while (true) {
              i6 = i2;
              i5 = i3;
              i4 = j;
              if (i3 < 8) {
                for (i4 = 0; i4 < 8; i4++)
                  j += paramArrayOfbyte[i2 + i4] & 0xFF; 
                i3++;
                i2 += paramInt3;
                continue;
              } 
              break;
            } 
          } else {
            i4 = j;
            i5 = i2;
            i6 = i3;
          } 
          i3 = i6 + paramInt3;
          j = i4;
          i2 = i5 + 1;
        } 
        j >>= 6;
        if (n - i1 <= 24) {
          j = i1 / 2;
          if (i > 0 && m > 0) {
            n = (arrayOfInt[i - 1][m] + arrayOfInt[i][m - 1] * 2 + arrayOfInt[i - 1][m - 1]) / 4;
            if (i1 < n)
              j = n; 
          } 
        } 
        arrayOfInt[i][m] = j;
      } 
    } 
    return arrayOfInt;
  }
  
  public epv a(eqd parameqd) {
    return new eub(parameqd);
  }
  
  public ett b() {
    if (this.f != null)
      return this.f; 
    eqd eqd = a();
    int i = eqd.g();
    int j = eqd.h();
    if (i >= 40 && j >= 40) {
      byte[] arrayOfByte = eqd.a();
      int m = i >> 3;
      int k = m;
      if ((i & 0x7) != 0)
        k = m + 1; 
      int n = j >> 3;
      m = n;
      if ((j & 0x7) != 0)
        m = n + 1; 
      int[][] arrayOfInt = a(arrayOfByte, k, m, i, j);
      ett ett1 = new ett(i, j);
      a(arrayOfByte, k, m, i, j, arrayOfInt, ett1);
      this.f = ett1;
      return this.f;
    } 
    this.f = super.b();
    return this.f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */