public final class etx extends eua {
  public ett a(ett paramett, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, float paramFloat10, float paramFloat11, float paramFloat12, float paramFloat13, float paramFloat14, float paramFloat15, float paramFloat16) {
    return a(paramett, paramInt1, paramInt2, euc.a(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramFloat8, paramFloat9, paramFloat10, paramFloat11, paramFloat12, paramFloat13, paramFloat14, paramFloat15, paramFloat16));
  }
  
  public ett a(ett paramett, int paramInt1, int paramInt2, euc parameuc) {
    if (paramInt1 <= 0 || paramInt2 <= 0)
      throw eqh.a(); 
    ett ett1 = new ett(paramInt1, paramInt2);
    float[] arrayOfFloat = new float[paramInt1 * 2];
    for (paramInt1 = 0; paramInt1 < paramInt2; paramInt1++) {
      int j = arrayOfFloat.length;
      float f = paramInt1;
      int i;
      for (i = 0; i < j; i += 2) {
        arrayOfFloat[i] = (i / 2) + 0.5F;
        arrayOfFloat[i + 1] = f + 0.5F;
      } 
      parameuc.a(arrayOfFloat);
      a(paramett, arrayOfFloat);
      i = 0;
      while (i < j) {
        try {
          if (paramett.a((int)arrayOfFloat[i], (int)arrayOfFloat[i + 1]))
            ett1.b(i / 2, paramInt1); 
          i += 2;
        } catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
          throw eqh.a();
        } 
      } 
    } 
    return ett1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */