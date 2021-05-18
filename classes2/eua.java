public abstract class eua {
  private static eua a = new etx();
  
  public static eua a() {
    return a;
  }
  
  protected static void a(ett paramett, float[] paramArrayOffloat) {
    int k = paramett.f();
    int m = paramett.g();
    int j = 0;
    int i = 1;
    while (true) {
      if (j < paramArrayOffloat.length && i) {
        i = (int)paramArrayOffloat[j];
        int n = (int)paramArrayOffloat[j + 1];
        if (i < -1 || i > k || n < -1 || n > m)
          throw eqh.a(); 
        if (i == -1) {
          paramArrayOffloat[j] = 0.0F;
          i = 1;
        } else if (i == k) {
          paramArrayOffloat[j] = (k - 1);
          i = 1;
        } else {
          i = 0;
        } 
        if (n == -1) {
          paramArrayOffloat[j + 1] = 0.0F;
          i = 1;
        } else if (n == m) {
          paramArrayOffloat[j + 1] = (m - 1);
          i = 1;
        } 
        j += 2;
        continue;
      } 
      j = paramArrayOffloat.length - 2;
      i = 1;
      while (true) {
        if (j >= 0 && i != 0) {
          i = (int)paramArrayOffloat[j];
          int n = (int)paramArrayOffloat[j + 1];
          if (i < -1 || i > k || n < -1 || n > m)
            throw eqh.a(); 
          if (i == -1) {
            paramArrayOffloat[j] = 0.0F;
            i = 1;
          } else if (i == k) {
            paramArrayOffloat[j] = (k - 1);
            i = 1;
          } else {
            i = 0;
          } 
          if (n == -1) {
            paramArrayOffloat[j + 1] = 0.0F;
            i = 1;
          } else if (n == m) {
            paramArrayOffloat[j + 1] = (m - 1);
            i = 1;
          } 
          j -= 2;
          continue;
        } 
        return;
      } 
      break;
    } 
  }
  
  public static void a(eua parameua) {
    a = parameua;
  }
  
  public abstract ett a(ett paramett, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, float paramFloat10, float paramFloat11, float paramFloat12, float paramFloat13, float paramFloat14, float paramFloat15, float paramFloat16);
  
  public abstract ett a(ett paramett, int paramInt1, int paramInt2, euc parameuc);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eua.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */