import java.util.Arrays;

public final class ets implements Cloneable {
  private int[] a;
  
  private int b;
  
  public ets() {
    this.b = 0;
    this.a = new int[1];
  }
  
  public ets(int paramInt) {
    this.b = paramInt;
    this.a = g(paramInt);
  }
  
  ets(int[] paramArrayOfint, int paramInt) {
    this.a = paramArrayOfint;
    this.b = paramInt;
  }
  
  private void f(int paramInt) {
    if (paramInt > this.a.length * 32) {
      int[] arrayOfInt = g(paramInt);
      System.arraycopy(this.a, 0, arrayOfInt, 0, this.a.length);
      this.a = arrayOfInt;
    } 
  }
  
  private static int[] g(int paramInt) {
    return new int[(paramInt + 31) / 32];
  }
  
  public int a() {
    return this.b;
  }
  
  public void a(int paramInt1, int paramInt2) {
    this.a[paramInt1 / 32] = paramInt2;
  }
  
  public void a(int paramInt1, byte[] paramArrayOfbyte, int paramInt2, int paramInt3) {
    int i;
    for (i = 0; i < paramInt3; i++) {
      int j = 0;
      int k;
      for (k = 0; j < 8; k = m) {
        int m = k;
        if (a(paramInt1))
          m = k | 1 << 7 - j; 
        paramInt1++;
        j++;
      } 
      paramArrayOfbyte[paramInt2 + i] = (byte)k;
    } 
  }
  
  public void a(ets paramets) {
    int j = paramets.b;
    f(this.b + j);
    for (int i = 0; i < j; i++)
      a(paramets.a(i)); 
  }
  
  public void a(boolean paramBoolean) {
    f(this.b + 1);
    if (paramBoolean) {
      int[] arrayOfInt = this.a;
      int i = this.b / 32;
      arrayOfInt[i] = arrayOfInt[i] | 1 << (this.b & 0x1F);
    } 
    this.b++;
  }
  
  public boolean a(int paramInt) {
    return ((this.a[paramInt / 32] & 1 << (paramInt & 0x1F)) != 0);
  }
  
  public boolean a(int paramInt1, int paramInt2, boolean paramBoolean) {
    if (paramInt2 < paramInt1)
      throw new IllegalArgumentException(); 
    if (paramInt2 == paramInt1)
      return true; 
    int k = paramInt2 - 1;
    int j = paramInt1 / 32;
    int m = k / 32;
    int i = j;
    while (i <= m) {
      int i1;
      if (i > j) {
        paramInt2 = 0;
      } else {
        paramInt2 = paramInt1 & 0x1F;
      } 
      if (i < m) {
        i1 = 31;
      } else {
        i1 = k & 0x1F;
      } 
      if (paramInt2 == 0 && i1 == 31) {
        paramInt2 = -1;
        continue;
      } 
      int n = 0;
      while (true) {
        int i2 = paramInt2;
        paramInt2 = n;
        if (i2 <= i1) {
          paramInt2 = i2 + 1;
          n = 1 << i2 | n;
          continue;
        } 
        i1 = this.a[i];
        if (paramBoolean) {
          n = paramInt2;
          if ((i1 & paramInt2) != n)
            return false; 
        } else {
          n = 0;
          continue;
        } 
        i++;
      } 
    } 
    return true;
  }
  
  public int b() {
    return (this.b + 7) / 8;
  }
  
  public void b(int paramInt) {
    int[] arrayOfInt = this.a;
    int i = paramInt / 32;
    arrayOfInt[i] = arrayOfInt[i] | 1 << (paramInt & 0x1F);
  }
  
  public void b(int paramInt1, int paramInt2) {
    if (paramInt2 < paramInt1)
      throw new IllegalArgumentException(); 
    if (paramInt2 != paramInt1) {
      int k = paramInt2 - 1;
      int j = paramInt1 / 32;
      int m = k / 32;
      int i = j;
      label27: while (true) {
        if (i <= m) {
          int i1;
          if (i > j) {
            paramInt2 = 0;
          } else {
            paramInt2 = paramInt1 & 0x1F;
          } 
          if (i < m) {
            i1 = 31;
          } else {
            i1 = k & 0x1F;
          } 
          if (paramInt2 == 0 && i1 == 31) {
            byte b = -1;
            continue;
          } 
          int i2 = 0;
          int n = paramInt2;
          paramInt2 = i2;
          while (true) {
            i2 = n;
            n = paramInt2;
            if (i2 <= i1) {
              n = i2 + 1;
              paramInt2 = 1 << i2 | paramInt2;
              continue;
            } 
            int[] arrayOfInt = this.a;
            arrayOfInt[i] = n | arrayOfInt[i];
            i++;
            continue label27;
          } 
          break;
        } 
        return;
      } 
    } 
  }
  
  public void b(ets paramets) {
    if (this.a.length != paramets.a.length)
      throw new IllegalArgumentException("Sizes don't match"); 
    for (int i = 0; i < this.a.length; i++) {
      int[] arrayOfInt = this.a;
      arrayOfInt[i] = arrayOfInt[i] ^ paramets.a[i];
    } 
  }
  
  public void c() {
    int j = this.a.length;
    for (int i = 0; i < j; i++)
      this.a[i] = 0; 
  }
  
  public void c(int paramInt) {
    int[] arrayOfInt = this.a;
    int i = paramInt / 32;
    arrayOfInt[i] = arrayOfInt[i] ^ 1 << (paramInt & 0x1F);
  }
  
  public void c(int paramInt1, int paramInt2) {
    if (paramInt2 < 0 || paramInt2 > 32)
      throw new IllegalArgumentException("Num bits must be between 0 and 32"); 
    f(this.b + paramInt2);
    while (paramInt2 > 0) {
      boolean bool;
      if ((paramInt1 >> paramInt2 - 1 & 0x1) == 1) {
        bool = true;
      } else {
        bool = false;
      } 
      a(bool);
      paramInt2--;
    } 
  }
  
  public int d(int paramInt) {
    if (paramInt >= this.b)
      return this.b; 
    int i = paramInt / 32;
    for (paramInt = this.a[i] & ((1 << (paramInt & 0x1F)) - 1 ^ 0xFFFFFFFF); paramInt == 0; paramInt = this.a[i]) {
      if (++i == this.a.length)
        return this.b; 
    } 
    i = Integer.numberOfTrailingZeros(paramInt) + i * 32;
    paramInt = i;
    return (i > this.b) ? this.b : paramInt;
  }
  
  public int[] d() {
    return this.a;
  }
  
  public int e(int paramInt) {
    if (paramInt >= this.b)
      return this.b; 
    int i = paramInt / 32;
    for (paramInt = (this.a[i] ^ 0xFFFFFFFF) & ((1 << (paramInt & 0x1F)) - 1 ^ 0xFFFFFFFF); paramInt == 0; paramInt = this.a[i] ^ 0xFFFFFFFF) {
      if (++i == this.a.length)
        return this.b; 
    } 
    i = Integer.numberOfTrailingZeros(paramInt) + i * 32;
    paramInt = i;
    return (i > this.b) ? this.b : paramInt;
  }
  
  public void e() {
    int k = 1;
    int[] arrayOfInt = new int[this.a.length];
    int j = (this.b - 1) / 32;
    int m = j + 1;
    int i;
    for (i = 0; i < m; i++) {
      long l = this.a[i];
      l = (l & 0x55555555L) << 1L | l >> 1L & 0x55555555L;
      l = (l & 0x33333333L) << 2L | l >> 2L & 0x33333333L;
      l = (l & 0xF0F0F0FL) << 4L | l >> 4L & 0xF0F0F0FL;
      l = (l & 0xFF00FFL) << 8L | l >> 8L & 0xFF00FFL;
      arrayOfInt[j - i] = (int)((l & 0xFFFFL) << 16L | l >> 16L & 0xFFFFL);
    } 
    if (this.b != m * 32) {
      int i1 = m * 32 - this.b;
      j = 0;
      i = 1;
      while (j < 31 - i1) {
        i = i << 1 | 0x1;
        j++;
      } 
      int n = arrayOfInt[0] >> i1 & i;
      for (j = k; j < m; j++) {
        k = arrayOfInt[j];
        arrayOfInt[j - 1] = n | k << 32 - i1;
        n = k >> i1 & i;
      } 
      arrayOfInt[m - 1] = n;
    } 
    this.a = arrayOfInt;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof ets) {
      paramObject = paramObject;
      if (this.b == ((ets)paramObject).b && Arrays.equals(this.a, ((ets)paramObject).a))
        return true; 
    } 
    return false;
  }
  
  public ets f() {
    return new ets((int[])this.a.clone(), this.b);
  }
  
  public int hashCode() {
    return this.b * 31 + Arrays.hashCode(this.a);
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder(this.b);
    for (int i = 0; i < this.b; i++) {
      byte b;
      if ((i & 0x7) == 0)
        stringBuilder.append(' '); 
      if (a(i)) {
        b = 88;
      } else {
        b = 46;
      } 
      stringBuilder.append(b);
    } 
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ets.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */