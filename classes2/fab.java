import java.util.Map;

public final class fab {
  private final euj a = new euj(euh.e);
  
  private etw a(ezo paramezo, Map<epy, ?> paramMap) {
    fag fag = paramezo.b();
    fac fac = paramezo.a().a();
    ezp[] arrayOfEzp = ezp.a(paramezo.c(), fag, fac);
    int k = arrayOfEzp.length;
    int i = 0;
    int j = 0;
    while (i < k) {
      j += arrayOfEzp[i].a();
      i++;
    } 
    byte[] arrayOfByte = new byte[j];
    int m = arrayOfEzp.length;
    j = 0;
    i = 0;
    while (j < m) {
      ezp ezp = arrayOfEzp[j];
      byte[] arrayOfByte1 = ezp.b();
      int n = ezp.a();
      a(arrayOfByte1, n);
      k = 0;
      while (k < n) {
        arrayOfByte[i] = arrayOfByte1[k];
        k++;
        i++;
      } 
      j++;
    } 
    return faa.a(arrayOfByte, fag, fac, paramMap);
  }
  
  private void a(byte[] paramArrayOfbyte, int paramInt) {
    boolean bool = false;
    int j = paramArrayOfbyte.length;
    int[] arrayOfInt = new int[j];
    int i;
    for (i = 0; i < j; i++)
      arrayOfInt[i] = paramArrayOfbyte[i] & 0xFF; 
    i = paramArrayOfbyte.length;
    try {
      this.a.a(arrayOfInt, i - paramInt);
      for (i = bool; i < paramInt; i++)
        paramArrayOfbyte[i] = (byte)arrayOfInt[i]; 
    } catch (eul eul) {
      throw epx.a();
    } 
  }
  
  public etw a(ett paramett) {
    return a(paramett, (Map<epy, ?>)null);
  }
  
  public etw a(ett paramett, Map<epy, ?> paramMap) {
    ezo ezo = new ezo(paramett);
    try {
      return a(ezo, paramMap);
    } catch (eqb eqb) {
      paramett = null;
      try {
        ezo.d();
        ezo.a(true);
        ezo.b();
        ezo.a();
        ezo.e();
        etw etw = a(ezo, paramMap);
        etw.a(new faf(true));
        return etw;
      } catch (eqb eqb1) {
      
      } catch (epx null) {}
      if (eqb != null)
        throw eqb; 
    } catch (epx epx1) {
      Object object = null;
      try {
        ezo.d();
        ezo.a(true);
        ezo.b();
        ezo.a();
        ezo.e();
        etw etw = a(ezo, (Map<epy, ?>)epx2);
        etw.a(new faf(true));
        return etw;
      } catch (eqb eqb) {
      
      } catch (epx epx2) {}
      if (object != null)
        throw object; 
    } 
    if (epx1 != null)
      throw epx1; 
    throw epx2;
  }
  
  public etw a(boolean[][] paramArrayOfboolean) {
    return a(paramArrayOfboolean, (Map<epy, ?>)null);
  }
  
  public etw a(boolean[][] paramArrayOfboolean, Map<epy, ?> paramMap) {
    int j = paramArrayOfboolean.length;
    ett ett = new ett(j);
    for (int i = 0; i < j; i++) {
      int k;
      for (k = 0; k < j; k++) {
        if (paramArrayOfboolean[i][k])
          ett.b(k, i); 
      } 
    } 
    return a(ett, paramMap);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */