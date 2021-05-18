public class etz extends epv {
  private static final int a = 5;
  
  private static final int b = 3;
  
  private static final int c = 32;
  
  private static final byte[] d = new byte[0];
  
  private byte[] e = d;
  
  private final int[] f = new int[32];
  
  public etz(eqd parameqd) {
    super(parameqd);
  }
  
  private static int a(int[] paramArrayOfint) {
    int i1 = 0;
    int i2 = paramArrayOfint.length;
    int i = 0;
    int m = 0;
    int j = 0;
    int n;
    for (n = 0; i < i2; n = i4) {
      int i3 = m;
      if (paramArrayOfint[i] > m) {
        i3 = paramArrayOfint[i];
        j = i;
      } 
      int i4 = n;
      if (paramArrayOfint[i] > n)
        i4 = paramArrayOfint[i]; 
      i++;
      m = i3;
    } 
    m = 0;
    i = 0;
    int k = i1;
    while (true) {
      int i3;
      if (k < i2) {
        i3 = k - j;
        i3 *= paramArrayOfint[k] * i3;
        if (i3 > m) {
          m = k;
          i = i3;
        } else {
          i3 = i;
          i = m;
          m = i3;
        } 
        k++;
        i3 = m;
        m = i;
        i = i3;
        continue;
      } 
      if (j > i) {
        i3 = i;
        m = j;
      } else {
        m = i;
        i3 = j;
      } 
      if (m - i3 <= i2 / 16)
        throw eqh.a(); 
      j = m - 1;
      k = -1;
      i = m - 1;
      while (true) {
        if (i > i3) {
          i1 = i - i3;
          i1 = i1 * i1 * (m - i) * (n - paramArrayOfint[i]);
          if (i1 > k) {
            k = i;
            j = i1;
          } else {
            i1 = j;
            j = k;
            k = i1;
          } 
          i--;
          i1 = k;
          k = j;
          j = i1;
          continue;
        } 
        return j << 3;
      } 
      break;
    } 
  }
  
  private void a(int paramInt) {
    if (this.e.length < paramInt)
      this.e = new byte[paramInt]; 
    for (paramInt = 0; paramInt < 32; paramInt++)
      this.f[paramInt] = 0; 
  }
  
  public epv a(eqd parameqd) {
    return new etz(parameqd);
  }
  
  public ets a(int paramInt, ets paramets) {
    int i = 1;
    eqd eqd = a();
    int k = eqd.g();
    if (paramets == null || paramets.a() < k) {
      paramets = new ets(k);
    } else {
      paramets.c();
    } 
    a(k);
    byte[] arrayOfByte = eqd.a(paramInt, this.e);
    int[] arrayOfInt = this.f;
    for (paramInt = 0; paramInt < k; paramInt++) {
      int n = (arrayOfByte[paramInt] & 0xFF) >> 3;
      arrayOfInt[n] = arrayOfInt[n] + 1;
    } 
    int m = a(arrayOfInt);
    byte b = arrayOfByte[0];
    paramInt = arrayOfByte[1] & 0xFF;
    int j = b & 0xFF;
    while (i < k - 1) {
      int n = arrayOfByte[i + 1] & 0xFF;
      if ((paramInt * 4 - j - n) / 2 < m)
        paramets.b(i); 
      i++;
      j = paramInt;
      paramInt = n;
    } 
    return paramets;
  }
  
  public ett b() {
    eqd eqd = a();
    int j = eqd.g();
    int k = eqd.h();
    ett ett = new ett(j, k);
    a(j);
    int[] arrayOfInt = this.f;
    int i;
    for (i = 1; i < 5; i++) {
      byte[] arrayOfByte1 = eqd.a(k * i / 5, this.e);
      int i1 = j * 4 / 5;
      for (int n = j / 5; n < i1; n++) {
        int i2 = (arrayOfByte1[n] & 0xFF) >> 3;
        arrayOfInt[i2] = arrayOfInt[i2] + 1;
      } 
    } 
    int m = a(arrayOfInt);
    byte[] arrayOfByte = eqd.a();
    for (i = 0; i < k; i++) {
      for (int n = 0; n < j; n++) {
        if ((arrayOfByte[i * j + n] & 0xFF) < m)
          ett.b(n, i); 
      } 
    } 
    return ett;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */