public final class eza {
  private final ezb a = ezb.a;
  
  private int[] a(ezc paramezc) {
    int k = paramezc.b();
    int[] arrayOfInt = new int[k];
    int j = 0;
    int i = 1;
    while (i < this.a.c() && j < k) {
      int m = j;
      if (paramezc.b(i) == 0) {
        arrayOfInt[j] = this.a.c(i);
        m = j + 1;
      } 
      i++;
      j = m;
    } 
    if (j != k)
      throw epx.a(); 
    return arrayOfInt;
  }
  
  private int[] a(ezc paramezc1, ezc paramezc2, int[] paramArrayOfint) {
    int j = paramezc2.b();
    int[] arrayOfInt = new int[j];
    int i;
    for (i = 1; i <= j; i++)
      arrayOfInt[j - i] = this.a.d(i, paramezc2.a(i)); 
    paramezc2 = new ezc(this.a, arrayOfInt);
    j = paramArrayOfint.length;
    arrayOfInt = new int[j];
    for (i = 0; i < j; i++) {
      int m = this.a.c(paramArrayOfint[i]);
      int k = this.a.c(0, paramezc1.b(m));
      m = this.a.c(paramezc2.b(m));
      arrayOfInt[i] = this.a.d(k, m);
    } 
    return arrayOfInt;
  }
  
  private ezc[] a(ezc paramezc1, ezc paramezc2, int paramInt) {
    if (paramezc1.b() >= paramezc2.b()) {
      ezc ezc3 = paramezc1;
      paramezc1 = paramezc2;
      paramezc2 = ezc3;
    } 
    ezc ezc2 = this.a.a();
    ezc ezc1 = this.a.b();
    while (paramezc1.b() >= paramInt / 2) {
      if (paramezc1.c())
        throw epx.a(); 
      ezc ezc3 = this.a.a();
      int i = paramezc1.a(paramezc1.b());
      i = this.a.c(i);
      while (paramezc2.b() >= paramezc1.b() && !paramezc2.c()) {
        int j = paramezc2.b() - paramezc1.b();
        int k = this.a.d(paramezc2.a(paramezc2.b()), i);
        ezc3 = ezc3.a(this.a.a(j, k));
        paramezc2 = paramezc2.b(paramezc1.a(j, k));
      } 
      ezc2 = ezc3.c(ezc1).b(ezc2).d();
      ezc3 = paramezc1;
      paramezc1 = paramezc2;
      paramezc2 = ezc2;
      ezc2 = ezc1;
      ezc1 = paramezc2;
      paramezc2 = ezc3;
    } 
    paramInt = ezc1.a(0);
    if (paramInt == 0)
      throw epx.a(); 
    paramInt = this.a.c(paramInt);
    return new ezc[] { ezc1.c(paramInt), paramezc1.c(paramInt) };
  }
  
  public int a(int[] paramArrayOfint1, int paramInt, int[] paramArrayOfint2) {
    ezc ezc2 = new ezc(this.a, paramArrayOfint1);
    int[] arrayOfInt3 = new int[paramInt];
    int i = paramInt;
    int j = 0;
    while (i > 0) {
      int k = ezc2.b(this.a.a(i));
      arrayOfInt3[paramInt - i] = k;
      if (k != 0)
        j = 1; 
      i--;
    } 
    if (!j)
      return 0; 
    ezc2 = this.a.b();
    if (paramArrayOfint2 != null) {
      j = paramArrayOfint2.length;
      for (i = 0; i < j; i++) {
        int k = paramArrayOfint2[i];
        k = this.a.a(paramArrayOfint1.length - 1 - k);
        ezc2 = ezc2.c(new ezc(this.a, new int[] { this.a.c(0, k), 1 }));
      } 
    } 
    ezc ezc1 = new ezc(this.a, arrayOfInt3);
    ezc[] arrayOfEzc = a(this.a.a(paramInt, 1), ezc1, paramInt);
    ezc1 = arrayOfEzc[0];
    ezc ezc3 = arrayOfEzc[1];
    int[] arrayOfInt2 = a(ezc1);
    int[] arrayOfInt1 = a(ezc3, ezc1, arrayOfInt2);
    for (paramInt = 0; paramInt < arrayOfInt2.length; paramInt++) {
      i = paramArrayOfint1.length - 1 - this.a.b(arrayOfInt2[paramInt]);
      if (i < 0)
        throw epx.a(); 
      paramArrayOfint1[i] = this.a.c(paramArrayOfint1[i], arrayOfInt1[paramInt]);
    } 
    return arrayOfInt2.length;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eza.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */