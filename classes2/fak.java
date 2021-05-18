import java.util.ArrayList;
import java.util.List;

final class fak {
  private final ett a;
  
  private final List<faj> b;
  
  private final int c;
  
  private final int d;
  
  private final int e;
  
  private final int f;
  
  private final float g;
  
  private final int[] h;
  
  private final eqp i;
  
  fak(ett paramett, int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat, eqp parameqp) {
    this.a = paramett;
    this.b = new ArrayList<faj>(5);
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramInt3;
    this.f = paramInt4;
    this.g = paramFloat;
    this.h = new int[3];
    this.i = parameqp;
  }
  
  private float a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    ett ett1 = this.a;
    int j = ett1.g();
    int[] arrayOfInt = this.h;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    int i;
    for (i = paramInt1; i >= 0 && ett1.a(paramInt2, i) && arrayOfInt[1] <= paramInt3; i--)
      arrayOfInt[1] = arrayOfInt[1] + 1; 
    if (i >= 0 && arrayOfInt[1] <= paramInt3) {
      while (i >= 0 && !ett1.a(paramInt2, i) && arrayOfInt[0] <= paramInt3) {
        arrayOfInt[0] = arrayOfInt[0] + 1;
        i--;
      } 
      if (arrayOfInt[0] <= paramInt3) {
        while (++paramInt1 < j && ett1.a(paramInt2, paramInt1) && arrayOfInt[1] <= paramInt3) {
          arrayOfInt[1] = arrayOfInt[1] + 1;
          paramInt1++;
        } 
        if (paramInt1 != j && arrayOfInt[1] <= paramInt3) {
          while (paramInt1 < j && !ett1.a(paramInt2, paramInt1) && arrayOfInt[2] <= paramInt3) {
            arrayOfInt[2] = arrayOfInt[2] + 1;
            paramInt1++;
          } 
          if (arrayOfInt[2] <= paramInt3 && Math.abs(arrayOfInt[0] + arrayOfInt[1] + arrayOfInt[2] - paramInt4) * 5 < paramInt4 * 2 && a(arrayOfInt))
            return a(arrayOfInt, paramInt1); 
        } 
      } 
    } 
    return Float.NaN;
  }
  
  private static float a(int[] paramArrayOfint, int paramInt) {
    return (paramInt - paramArrayOfint[2]) - paramArrayOfint[1] / 2.0F;
  }
  
  private faj a(int[] paramArrayOfint, int paramInt1, int paramInt2) {
    int i = paramArrayOfint[0];
    int j = paramArrayOfint[1];
    int k = paramArrayOfint[2];
    float f1 = a(paramArrayOfint, paramInt2);
    float f2 = a(paramInt1, (int)f1, paramArrayOfint[1] * 2, i + j + k);
    if (!Float.isNaN(f2)) {
      float f = (paramArrayOfint[0] + paramArrayOfint[1] + paramArrayOfint[2]) / 3.0F;
      for (faj faj1 : this.b) {
        if (faj1.a(f, f2, f1))
          return faj1.b(f2, f1, f); 
      } 
      faj faj = new faj(f1, f2, f);
      this.b.add(faj);
      if (this.i != null)
        this.i.a(faj); 
    } 
    return null;
  }
  
  private boolean a(int[] paramArrayOfint) {
    float f1 = this.g;
    float f2 = f1 / 2.0F;
    int i;
    for (i = 0; i < 3; i++) {
      if (Math.abs(f1 - paramArrayOfint[i]) >= f2)
        return false; 
    } 
    return true;
  }
  
  faj a() {
    int j = this.c;
    int k = this.f;
    int m = j + this.e;
    int n = this.d;
    int i1 = k / 2;
    int[] arrayOfInt = new int[3];
    for (int i = 0; i < k; i++) {
      if ((i & 0x1) == 0) {
        i2 = (i + 1) / 2;
      } else {
        i2 = -((i + 1) / 2);
      } 
      int i5 = n + i1 + i2;
      arrayOfInt[0] = 0;
      arrayOfInt[1] = 0;
      arrayOfInt[2] = 0;
      int i2;
      for (i2 = j; i2 < m && !this.a.a(i2, i5); i2++);
      int i3 = 0;
      int i4 = i2;
      i2 = i3;
      while (i4 < m) {
        if (this.a.a(i4, i5)) {
          if (i2 == 1) {
            arrayOfInt[i2] = arrayOfInt[i2] + 1;
          } else if (i2 == 2) {
            if (a(arrayOfInt)) {
              faj faj = a(arrayOfInt, i5, i4);
              if (faj != null)
                return faj; 
            } 
            arrayOfInt[0] = arrayOfInt[2];
            arrayOfInt[1] = 1;
            arrayOfInt[2] = 0;
            i2 = 1;
          } else {
            arrayOfInt[++i2] = arrayOfInt[i2] + 1;
          } 
        } else {
          i3 = i2;
          if (i2 == 1)
            i3 = i2 + 1; 
          arrayOfInt[i3] = arrayOfInt[i3] + 1;
          i2 = i3;
        } 
        i4++;
      } 
      if (a(arrayOfInt)) {
        faj faj2 = a(arrayOfInt, i5, m);
        faj faj1 = faj2;
        if (faj2 == null)
          continue; 
        continue;
      } 
      continue;
    } 
    if (!this.b.isEmpty())
      return this.b.get(0); 
    throw eqh.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */