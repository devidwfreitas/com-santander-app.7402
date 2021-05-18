public abstract class exg extends eww {
  private static final float a = 0.2F;
  
  private static final float b = 0.45F;
  
  private static final float c = 0.7916667F;
  
  private static final float d = 0.89285713F;
  
  private final int[] e = new int[4];
  
  private final int[] f = new int[8];
  
  private final float[] g = new float[4];
  
  private final float[] h = new float[4];
  
  private final int[] i = new int[this.f.length / 2];
  
  private final int[] j = new int[this.f.length / 2];
  
  protected static int a(int[] paramArrayOfint) {
    int i = 0;
    int k = paramArrayOfint.length;
    int j = 0;
    while (i < k) {
      j += paramArrayOfint[i];
      i++;
    } 
    return j;
  }
  
  protected static int a(int[] paramArrayOfint, int[][] paramArrayOfint1) {
    for (int i = 0; i < paramArrayOfint1.length; i++) {
      if (a(paramArrayOfint, paramArrayOfint1[i], 0.45F) < 0.2F)
        return i; 
    } 
    throw eqh.a();
  }
  
  protected static void a(int[] paramArrayOfint, float[] paramArrayOffloat) {
    int j = 0;
    float f = paramArrayOffloat[0];
    int i = 1;
    while (i < paramArrayOfint.length) {
      float f1 = f;
      if (paramArrayOffloat[i] > f) {
        f1 = paramArrayOffloat[i];
        j = i;
      } 
      i++;
      f = f1;
    } 
    paramArrayOfint[j] = paramArrayOfint[j] + 1;
  }
  
  protected static void b(int[] paramArrayOfint, float[] paramArrayOffloat) {
    int j = 0;
    float f = paramArrayOffloat[0];
    int i = 1;
    while (i < paramArrayOfint.length) {
      float f1 = f;
      if (paramArrayOffloat[i] < f) {
        f1 = paramArrayOffloat[i];
        j = i;
      } 
      i++;
      f = f1;
    } 
    paramArrayOfint[j] = paramArrayOfint[j] - 1;
  }
  
  protected static boolean b(int[] paramArrayOfint) {
    int i = paramArrayOfint[0] + paramArrayOfint[1];
    int j = paramArrayOfint[2];
    int k = paramArrayOfint[3];
    float f = i / (j + i + k);
    if (f >= 0.7916667F && f <= 0.89285713F) {
      i = Integer.MAX_VALUE;
      int m = Integer.MIN_VALUE;
      int n = paramArrayOfint.length;
      j = 0;
      while (j < n) {
        int i1 = paramArrayOfint[j];
        k = m;
        if (i1 > m)
          k = i1; 
        if (i1 < i)
          i = i1; 
        j++;
        m = k;
      } 
      return (m < i * 10);
    } 
    return false;
  }
  
  protected final int[] b() {
    return this.e;
  }
  
  protected final int[] c() {
    return this.f;
  }
  
  protected final float[] d() {
    return this.g;
  }
  
  protected final float[] e() {
    return this.h;
  }
  
  protected final int[] f() {
    return this.i;
  }
  
  protected final int[] g() {
    return this.j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */