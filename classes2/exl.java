public final class exl {
  private static int a(int paramInt1, int paramInt2) {
    int i;
    int j;
    int m = 1;
    if (paramInt1 - paramInt2 > paramInt2) {
      j = paramInt1 - paramInt2;
      i = paramInt2;
    } else {
      j = paramInt2;
      i = paramInt1 - paramInt2;
    } 
    paramInt2 = 1;
    int k = paramInt1;
    for (paramInt1 = m; k > j; paramInt1 = m) {
      int n = paramInt2 * k;
      m = paramInt1;
      paramInt2 = n;
      if (paramInt1 <= i) {
        paramInt2 = n / paramInt1;
        m = paramInt1 + 1;
      } 
      k--;
    } 
    while (paramInt1 <= i) {
      paramInt2 /= paramInt1;
      paramInt1++;
    } 
    return paramInt2;
  }
  
  public static int a(int[] paramArrayOfint, int paramInt, boolean paramBoolean) {
    int i1 = paramArrayOfint.length;
    int k = paramArrayOfint.length;
    int j = 0;
    int i;
    for (i = 0; j < k; i = i2 + i) {
      int i2 = paramArrayOfint[j];
      j++;
    } 
    int n = 0;
    j = 0;
    k = 0;
    int m = i;
    i = j;
    j = k;
    while (n < i1 - 1) {
      k = j | 1 << n;
      int i2 = 1;
      j = i;
      for (i = k; i2 < paramArrayOfint[n]; i &= 1 << n ^ 0xFFFFFFFF) {
        int i3 = a(m - i2 - 1, i1 - n - 2);
        k = i3;
        if (paramBoolean) {
          k = i3;
          if (i == 0) {
            k = i3;
            if (m - i2 - i1 - n - 1 >= i1 - n - 1)
              k = i3 - a(m - i2 - i1 - n, i1 - n - 2); 
          } 
        } 
        if (i1 - n - 1 > 1) {
          i3 = m - i2 - i1 - n - 2;
          int i4 = 0;
          while (i3 > paramInt) {
            i4 += a(m - i2 - i3 - 1, i1 - n - 3);
            i3--;
          } 
          i3 = k - (i1 - 1 - n) * i4;
        } else {
          i3 = k;
          if (m - i2 > paramInt)
            i3 = k - 1; 
        } 
        j += i3;
        i2++;
      } 
      n++;
      m -= i2;
      k = j;
      j = i;
      i = k;
    } 
    return i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */