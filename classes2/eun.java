import java.util.Map;

public final class eun implements eqq {
  private static ett a(evg paramevg, evm paramevm) {
    int k = paramevm.d();
    int m = paramevm.e();
    fat fat = new fat(paramevm.f(), paramevm.g());
    int j = 0;
    int i = 0;
    while (true) {
      if (j < m) {
        int n;
        if (j % paramevm.c == 0) {
          n = 0;
          int i2 = 0;
          while (n < paramevm.f()) {
            boolean bool;
            if (n % 2 == 0) {
              bool = true;
            } else {
              bool = false;
            } 
            fat.a(i2, i, bool);
            i2++;
            n++;
          } 
          n = i + 1;
        } else {
          n = i;
        } 
        int i1 = 0;
        i = 0;
        while (i1 < k) {
          int i2 = i;
          if (i1 % paramevm.b == 0) {
            fat.a(i, n, true);
            i2 = i + 1;
          } 
          fat.a(i2, n, paramevg.a(i1, j));
          i = i2 + 1;
          if (i1 % paramevm.b == paramevm.b - 1) {
            boolean bool;
            if (j % 2 == 0) {
              bool = true;
            } else {
              bool = false;
            } 
            fat.a(i, n, bool);
            i++;
          } 
          i1++;
        } 
        i1 = n + 1;
        if (j % paramevm.c == paramevm.c - 1) {
          i = 0;
          n = 0;
          while (i < paramevm.f()) {
            fat.a(n, i1, true);
            n++;
            i++;
          } 
          i = i1 + 1;
        } else {
          i = i1;
        } 
        j++;
        continue;
      } 
      return a(fat);
    } 
  }
  
  private static ett a(fat paramfat) {
    int j = paramfat.b();
    int k = paramfat.a();
    ett ett = new ett(j, k);
    ett.a();
    for (int i = 0; i < j; i++) {
      for (int m = 0; m < k; m++) {
        if (paramfat.a(i, m) == 1)
          ett.b(i, m); 
      } 
    } 
    return ett;
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2) {
    return a(paramString, paramepu, paramInt1, paramInt2, null);
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2, Map<eqa, ?> paramMap) {
    evg evg2;
    epz epz2 = null;
    if (paramString.isEmpty())
      throw new IllegalArgumentException("Found empty contents"); 
    if (paramepu != epu.DATA_MATRIX)
      throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got " + paramepu); 
    if (paramInt1 < 0 || paramInt2 < 0)
      throw new IllegalArgumentException("Requested dimensions are too small: " + paramInt1 + 'x' + paramInt2); 
    evn evn = evn.FORCE_NONE;
    if (paramMap != null) {
      evn evn2 = (evn)paramMap.get(eqa.DATA_MATRIX_SHAPE);
      if (evn2 != null)
        evn = evn2; 
      epz epz3 = (epz)paramMap.get(eqa.MIN_SIZE);
      if (epz3 == null)
        epz3 = null; 
      epz epz5 = (epz)paramMap.get(eqa.MAX_SIZE);
      evn evn1 = evn;
      epz epz4 = epz3;
      if (epz5 != null) {
        epz2 = epz5;
        epz4 = epz3;
        evn1 = evn;
      } 
      paramString = evl.a(paramString, evn1, epz4, epz2);
      evm1 = evm.a(paramString.length(), evn1, epz4, epz2, true);
      evg2 = new evg(evk.a(paramString, evm1), evm1.d(), evm1.e());
      evg2.d();
      return a(evg2, evm1);
    } 
    epz epz1 = null;
    evm evm2 = evm1;
    String str = evl.a((String)evg2, (evn)evm2, epz1, epz2);
    evm evm1 = evm.a(str.length(), (evn)evm2, epz1, epz2, true);
    evg evg1 = new evg(evk.a(str, evm1), evm1.d(), evm1.e());
    evg1.d();
    return a(evg1, evm1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eun.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */