final class ezc {
  private final ezb a;
  
  private final int[] b;
  
  ezc(ezb paramezb, int[] paramArrayOfint) {
    if (paramArrayOfint.length == 0)
      throw new IllegalArgumentException(); 
    this.a = paramezb;
    int i = paramArrayOfint.length;
    if (i > 1 && paramArrayOfint[0] == 0) {
      int j;
      for (j = 1; j < i && paramArrayOfint[j] == 0; j++);
      if (j == i) {
        this.b = new int[] { 0 };
        return;
      } 
      this.b = new int[i - j];
      System.arraycopy(paramArrayOfint, j, this.b, 0, this.b.length);
      return;
    } 
    this.b = paramArrayOfint;
  }
  
  int a(int paramInt) {
    return this.b[this.b.length - 1 - paramInt];
  }
  
  ezc a(int paramInt1, int paramInt2) {
    if (paramInt1 < 0)
      throw new IllegalArgumentException(); 
    if (paramInt2 == 0)
      return this.a.a(); 
    int i = this.b.length;
    int[] arrayOfInt = new int[i + paramInt1];
    for (paramInt1 = 0; paramInt1 < i; paramInt1++)
      arrayOfInt[paramInt1] = this.a.d(this.b[paramInt1], paramInt2); 
    return new ezc(this.a, arrayOfInt);
  }
  
  ezc a(ezc paramezc) {
    int[] arrayOfInt1;
    if (!this.a.equals(paramezc.a))
      throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field"); 
    if (c())
      return paramezc; 
    if (paramezc.c())
      return this; 
    int[] arrayOfInt2 = this.b;
    int[] arrayOfInt3 = paramezc.b;
    if (arrayOfInt2.length > arrayOfInt3.length) {
      arrayOfInt1 = arrayOfInt3;
    } else {
      arrayOfInt1 = arrayOfInt2;
      arrayOfInt2 = arrayOfInt3;
    } 
    arrayOfInt3 = new int[arrayOfInt2.length];
    int j = arrayOfInt2.length - arrayOfInt1.length;
    System.arraycopy(arrayOfInt2, 0, arrayOfInt3, 0, j);
    for (int i = j; i < arrayOfInt2.length; i++)
      arrayOfInt3[i] = this.a.b(arrayOfInt1[i - j], arrayOfInt2[i]); 
    return new ezc(this.a, arrayOfInt3);
  }
  
  int[] a() {
    return this.b;
  }
  
  int b() {
    return this.b.length - 1;
  }
  
  int b(int paramInt) {
    int i = 0;
    if (paramInt == 0)
      return a(0); 
    int k = this.b.length;
    if (paramInt == 1) {
      int[] arrayOfInt = this.b;
      int m = arrayOfInt.length;
      paramInt = 0;
      while (true) {
        int n = paramInt;
        if (i < m) {
          n = arrayOfInt[i];
          paramInt = this.a.b(paramInt, n);
          i++;
          continue;
        } 
        return n;
      } 
    } 
    i = this.b[0];
    int j = 1;
    while (true) {
      int m = i;
      if (j < k) {
        i = this.a.b(this.a.d(paramInt, i), this.b[j]);
        j++;
        continue;
      } 
      return m;
    } 
  }
  
  ezc b(ezc paramezc) {
    if (!this.a.equals(paramezc.a))
      throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field"); 
    return paramezc.c() ? this : a(paramezc.d());
  }
  
  ezc c(int paramInt) {
    int[] arrayOfInt;
    if (paramInt == 0)
      return this.a.a(); 
    ezc ezc1 = this;
    if (paramInt != 1) {
      int j = this.b.length;
      arrayOfInt = new int[j];
      for (int i = 0; i < j; i++)
        arrayOfInt[i] = this.a.d(this.b[i], paramInt); 
      return new ezc(this.a, arrayOfInt);
    } 
    return (ezc)arrayOfInt;
  }
  
  ezc c(ezc paramezc) {
    if (!this.a.equals(paramezc.a))
      throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field"); 
    if (c() || paramezc.c())
      return this.a.a(); 
    int[] arrayOfInt2 = this.b;
    int j = arrayOfInt2.length;
    int[] arrayOfInt1 = paramezc.b;
    int k = arrayOfInt1.length;
    int[] arrayOfInt3 = new int[j + k - 1];
    for (int i = 0; i < j; i++) {
      int n = arrayOfInt2[i];
      for (int m = 0; m < k; m++)
        arrayOfInt3[i + m] = this.a.b(arrayOfInt3[i + m], this.a.d(n, arrayOfInt1[m])); 
    } 
    return new ezc(this.a, arrayOfInt3);
  }
  
  boolean c() {
    boolean bool = false;
    if (this.b[0] == 0)
      bool = true; 
    return bool;
  }
  
  ezc d() {
    int j = this.b.length;
    int[] arrayOfInt = new int[j];
    for (int i = 0; i < j; i++)
      arrayOfInt[i] = this.a.c(0, this.b[i]); 
    return new ezc(this.a, arrayOfInt);
  }
  
  ezc[] d(ezc paramezc) {
    if (!this.a.equals(paramezc.a))
      throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field"); 
    if (paramezc.c())
      throw new IllegalArgumentException("Divide by 0"); 
    ezc ezc2 = this.a.a();
    int i = paramezc.a(paramezc.b());
    i = this.a.c(i);
    ezc ezc1;
    for (ezc1 = this; ezc1.b() >= paramezc.b() && !ezc1.c(); ezc1 = ezc1.b(ezc3)) {
      int j = ezc1.b() - paramezc.b();
      int k = this.a.d(ezc1.a(ezc1.b()), i);
      ezc ezc3 = paramezc.a(j, k);
      ezc2 = ezc2.a(this.a.a(j, k));
    } 
    return new ezc[] { ezc2, ezc1 };
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder(b() * 8);
    for (int i = b(); i >= 0; i--) {
      int j = a(i);
      if (j != 0) {
        int k;
        if (j < 0) {
          stringBuilder.append(" - ");
          k = -j;
        } else {
          k = j;
          if (stringBuilder.length() > 0) {
            stringBuilder.append(" + ");
            k = j;
          } 
        } 
        if (i == 0 || k != 1)
          stringBuilder.append(k); 
        if (i != 0)
          if (i == 1) {
            stringBuilder.append('x');
          } else {
            stringBuilder.append("x^");
            stringBuilder.append(i);
          }  
      } 
    } 
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ezc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */