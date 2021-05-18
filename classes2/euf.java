public final class euf {
  private static final int a = 32;
  
  private final ett b;
  
  public euf(ett paramett) {
    this.b = paramett;
  }
  
  private eqo a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9) {
    int j = paramInt1;
    int i = paramInt5;
    for (int[] arrayOfInt = null; i < paramInt8 && i >= paramInt7 && j < paramInt4 && j >= paramInt3; arrayOfInt = arrayOfInt1) {
      int[] arrayOfInt1;
      if (paramInt2 == 0) {
        arrayOfInt1 = a(i, paramInt9, paramInt3, paramInt4, true);
      } else {
        arrayOfInt1 = a(j, paramInt9, paramInt7, paramInt8, false);
      } 
      if (arrayOfInt1 == null) {
        if (arrayOfInt == null)
          throw eqh.a(); 
        if (paramInt2 == 0) {
          paramInt2 = i - paramInt6;
          if (arrayOfInt[0] < paramInt1) {
            if (arrayOfInt[1] > paramInt1) {
              if (paramInt6 > 0) {
                float f1 = arrayOfInt[0];
                return new eqo(f1, paramInt2);
              } 
              float f = arrayOfInt[1];
              return new eqo(f, paramInt2);
            } 
            return new eqo(arrayOfInt[0], paramInt2);
          } 
          return new eqo(arrayOfInt[1], paramInt2);
        } 
        paramInt1 = j - paramInt2;
        if (arrayOfInt[0] < paramInt5) {
          if (arrayOfInt[1] > paramInt5) {
            float f2 = paramInt1;
            if (paramInt2 < 0) {
              float f = arrayOfInt[0];
              return new eqo(f2, f);
            } 
            float f1 = arrayOfInt[1];
            return new eqo(f2, f1);
          } 
          return new eqo(paramInt1, arrayOfInt[0]);
        } 
        return new eqo(paramInt1, arrayOfInt[1]);
      } 
      j += paramInt2;
      i += paramInt6;
    } 
    throw eqh.a();
  }
  
  private int[] a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean) {
    int k;
    int j = (paramInt3 + paramInt4) / 2;
    for (int i = j;; i--) {
      if (i >= paramInt3) {
        if (paramBoolean ? this.b.a(i, paramInt1) : this.b.a(paramInt1, i))
          continue; 
        k = i;
        while (true) {
          int m = k - 1;
          object = SYNTHETIC_LOCAL_VARIABLE_9;
        } 
        break;
      } 
      continue;
    } 
    paramInt1 = paramInt3 - 1;
    return (paramInt1 > k) ? new int[] { k, paramInt1 } : null;
  }
  
  public eqo[] a() {
    int i1 = this.b.g();
    int i2 = this.b.f();
    int i = i1 / 2;
    int j = i2 / 2;
    int k = Math.max(1, i1 / 256);
    int i3 = Math.max(1, i2 / 256);
    int m = (int)a(j, 0, 0, i2, i, -k, 0, i1, j / 2).b() - 1;
    eqo eqo1 = a(j, -i3, 0, i2, i, 0, m, i1, i / 2);
    int n = (int)eqo1.a() - 1;
    eqo eqo2 = a(j, i3, n, i2, i, 0, m, i1, i / 2);
    i2 = (int)eqo2.a() + 1;
    eqo eqo3 = a(j, 0, n, i2, i, k, m, i1, j / 2);
    i1 = (int)eqo3.b();
    return new eqo[] { a(j, 0, n, i2, i, -k, m, i1 + 1, j / 4), eqo1, eqo2, eqo3 };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\euf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */