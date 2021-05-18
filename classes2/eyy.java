import java.lang.reflect.Array;

final class eyy {
  private static final float[][] a;
  
  static {
    int i = eyk.h.length;
    a = (float[][])Array.newInstance(float.class, new int[] { i, 8 });
    for (i = 0; i < eyk.h.length; i++) {
      int m = eyk.h[i];
      int j = 0;
      int k = m & 0x1;
      while (j < 8) {
        float f = 0.0F;
        while ((m & 0x1) == k) {
          f++;
          m >>= 1;
        } 
        k = m & 0x1;
        a[i][8 - j - 1] = f / 17.0F;
        j++;
      } 
    } 
  }
  
  static int a(int[] paramArrayOfint) {
    int i = c(b(paramArrayOfint));
    return (i != -1) ? i : e(paramArrayOfint);
  }
  
  private static int[] b(int[] paramArrayOfint) {
    int k = 0;
    float f = eyk.a(paramArrayOfint);
    int[] arrayOfInt = new int[8];
    int i = 0;
    int j;
    for (j = 0; i < 17; j = m) {
      float f1 = f / 34.0F;
      float f2 = i * f / 17.0F;
      int n = k;
      int m = j;
      if ((paramArrayOfint[j] + k) <= f1 + f2) {
        n = k + paramArrayOfint[j];
        m = j + 1;
      } 
      arrayOfInt[m] = arrayOfInt[m] + 1;
      i++;
      k = n;
    } 
    return arrayOfInt;
  }
  
  private static int c(int[] paramArrayOfint) {
    int i = d(paramArrayOfint);
    return (eyk.a(i) == -1) ? -1 : i;
  }
  
  private static int d(int[] paramArrayOfint) {
    long l = 0L;
    for (int i = 0; i < paramArrayOfint.length; i++) {
      int j = 0;
      while (j < paramArrayOfint[i]) {
        boolean bool;
        if (i % 2 == 0) {
          bool = true;
        } else {
          bool = false;
        } 
        long l1 = bool;
        j++;
        l = l << 1L | l1;
      } 
    } 
    return (int)l;
  }
  
  private static int e(int[] paramArrayOfint) {
    int j = eyk.a(paramArrayOfint);
    float[] arrayOfFloat = new float[8];
    int i;
    for (i = 0; i < arrayOfFloat.length; i++)
      arrayOfFloat[i] = paramArrayOfint[i] / j; 
    float f = Float.MAX_VALUE;
    j = -1;
    i = 0;
    label24: while (i < a.length) {
      float f1 = 0.0F;
      float[] arrayOfFloat1 = a[i];
      int k = 0;
      while (true) {
        float f2 = f1;
        if (k < 8) {
          f2 = arrayOfFloat1[k] - arrayOfFloat[k];
          f1 += f2 * f2;
          if (f1 >= f) {
            f2 = f1;
          } else {
            k++;
            continue;
          } 
        } 
        f1 = f;
        if (f2 < f) {
          j = eyk.h[i];
          f1 = f2;
        } 
        i++;
        f = f1;
        continue label24;
      } 
    } 
    return j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */