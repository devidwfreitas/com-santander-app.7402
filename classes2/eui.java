final class eui {
  private final euh a;
  
  private final int[] b;
  
  eui(euh parameuh, int[] paramArrayOfint) {
    if (paramArrayOfint.length == 0)
      throw new IllegalArgumentException(); 
    this.a = parameuh;
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
  
  eui a(int paramInt1, int paramInt2) {
    if (paramInt1 < 0)
      throw new IllegalArgumentException(); 
    if (paramInt2 == 0)
      return this.a.a(); 
    int i = this.b.length;
    int[] arrayOfInt = new int[i + paramInt1];
    for (paramInt1 = 0; paramInt1 < i; paramInt1++)
      arrayOfInt[paramInt1] = this.a.c(this.b[paramInt1], paramInt2); 
    return new eui(this.a, arrayOfInt);
  }
  
  eui a(eui parameui) {
    int[] arrayOfInt1;
    if (!this.a.equals(parameui.a))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field"); 
    if (c())
      return parameui; 
    if (parameui.c())
      return this; 
    int[] arrayOfInt2 = this.b;
    int[] arrayOfInt3 = parameui.b;
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
      arrayOfInt3[i] = euh.b(arrayOfInt1[i - j], arrayOfInt2[i]); 
    return new eui(this.a, arrayOfInt3);
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
          paramInt = euh.b(paramInt, arrayOfInt[i]);
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
        i = euh.b(this.a.c(paramInt, i), this.b[j]);
        j++;
        continue;
      } 
      return m;
    } 
  }
  
  eui b(eui parameui) {
    if (!this.a.equals(parameui.a))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field"); 
    if (c() || parameui.c())
      return this.a.a(); 
    int[] arrayOfInt2 = this.b;
    int j = arrayOfInt2.length;
    int[] arrayOfInt1 = parameui.b;
    int k = arrayOfInt1.length;
    int[] arrayOfInt3 = new int[j + k - 1];
    for (int i = 0; i < j; i++) {
      int n = arrayOfInt2[i];
      for (int m = 0; m < k; m++)
        arrayOfInt3[i + m] = euh.b(arrayOfInt3[i + m], this.a.c(n, arrayOfInt1[m])); 
    } 
    return new eui(this.a, arrayOfInt3);
  }
  
  eui c(int paramInt) {
    int[] arrayOfInt;
    if (paramInt == 0)
      return this.a.a(); 
    eui eui1 = this;
    if (paramInt != 1) {
      int j = this.b.length;
      arrayOfInt = new int[j];
      for (int i = 0; i < j; i++)
        arrayOfInt[i] = this.a.c(this.b[i], paramInt); 
      return new eui(this.a, arrayOfInt);
    } 
    return (eui)arrayOfInt;
  }
  
  boolean c() {
    boolean bool = false;
    if (this.b[0] == 0)
      bool = true; 
    return bool;
  }
  
  eui[] c(eui parameui) {
    if (!this.a.equals(parameui.a))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field"); 
    if (parameui.c())
      throw new IllegalArgumentException("Divide by 0"); 
    eui eui2 = this.a.a();
    int i = parameui.a(parameui.b());
    i = this.a.c(i);
    eui eui1;
    for (eui1 = this; eui1.b() >= parameui.b() && !eui1.c(); eui1 = eui1.a(eui3)) {
      int j = eui1.b() - parameui.b();
      int k = this.a.c(eui1.a(eui1.b()), i);
      eui eui3 = parameui.a(j, k);
      eui2 = eui2.a(this.a.a(j, k));
    } 
    return new eui[] { eui2, eui1 };
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
        if (i == 0 || k != 1) {
          k = this.a.b(k);
          if (k == 0) {
            stringBuilder.append('1');
          } else if (k == 1) {
            stringBuilder.append('a');
          } else {
            stringBuilder.append("a^");
            stringBuilder.append(k);
          } 
        } 
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eui.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */