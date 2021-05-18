import java.util.Formatter;

final class eyv {
  private static final int a = 2;
  
  private final eyo b;
  
  private final eyw[] c;
  
  private eyq d;
  
  private final int e;
  
  eyv(eyo parameyo, eyq parameyq) {
    this.b = parameyo;
    this.e = parameyo.a();
    this.d = parameyq;
    this.c = new eyw[this.e + 2];
  }
  
  private static int a(int paramInt1, int paramInt2, eyr parameyr) {
    if (parameyr != null && !parameyr.a()) {
      if (parameyr.a(paramInt1)) {
        parameyr.b(paramInt1);
        return 0;
      } 
      return paramInt2 + 1;
    } 
    return paramInt2;
  }
  
  private void a(int paramInt1, int paramInt2, eyr[] paramArrayOfeyr) {
    eyr[] arrayOfEyr1;
    eyr eyr1 = paramArrayOfeyr[paramInt2];
    eyr[] arrayOfEyr2 = this.c[paramInt1 - 1].b();
    if (this.c[paramInt1 + 1] != null) {
      arrayOfEyr1 = this.c[paramInt1 + 1].b();
    } else {
      arrayOfEyr1 = arrayOfEyr2;
    } 
    eyr[] arrayOfEyr3 = new eyr[14];
    arrayOfEyr3[2] = arrayOfEyr2[paramInt2];
    arrayOfEyr3[3] = arrayOfEyr1[paramInt2];
    if (paramInt2 > 0) {
      arrayOfEyr3[0] = paramArrayOfeyr[paramInt2 - 1];
      arrayOfEyr3[4] = arrayOfEyr2[paramInt2 - 1];
      arrayOfEyr3[5] = arrayOfEyr1[paramInt2 - 1];
    } 
    if (paramInt2 > 1) {
      arrayOfEyr3[8] = paramArrayOfeyr[paramInt2 - 2];
      arrayOfEyr3[10] = arrayOfEyr2[paramInt2 - 2];
      arrayOfEyr3[11] = arrayOfEyr1[paramInt2 - 2];
    } 
    if (paramInt2 < paramArrayOfeyr.length - 1) {
      arrayOfEyr3[1] = paramArrayOfeyr[paramInt2 + 1];
      arrayOfEyr3[6] = arrayOfEyr2[paramInt2 + 1];
      arrayOfEyr3[7] = arrayOfEyr1[paramInt2 + 1];
    } 
    if (paramInt2 < paramArrayOfeyr.length - 2) {
      arrayOfEyr3[9] = paramArrayOfeyr[paramInt2 + 2];
      arrayOfEyr3[12] = arrayOfEyr2[paramInt2 + 2];
      arrayOfEyr3[13] = arrayOfEyr1[paramInt2 + 2];
    } 
    paramInt2 = arrayOfEyr3.length;
    for (paramInt1 = 0;; paramInt1++) {
      if (paramInt1 >= paramInt2 || a(eyr1, arrayOfEyr3[paramInt1]))
        return; 
    } 
  }
  
  private void a(eyw parameyw) {
    if (parameyw != null)
      ((eyx)parameyw).a(this.b); 
  }
  
  private static boolean a(eyr parameyr1, eyr parameyr2) {
    if (parameyr2 != null && parameyr2.a() && parameyr2.f() == parameyr1.f()) {
      parameyr1.b(parameyr2.h());
      return true;
    } 
    return false;
  }
  
  private int f() {
    int j = g();
    if (j == 0)
      return 0; 
    for (int i = 1; i < this.e + 1; i++) {
      eyr[] arrayOfEyr = this.c[i].b();
      for (int k = 0; k < arrayOfEyr.length; k++) {
        if (arrayOfEyr[k] != null && !arrayOfEyr[k].a())
          a(i, k, arrayOfEyr); 
      } 
    } 
    return j;
  }
  
  private int g() {
    h();
    return j() + i();
  }
  
  private void h() {
    int i = 0;
    if (this.c[0] != null && this.c[this.e + 1] != null) {
      eyr[] arrayOfEyr1 = this.c[0].b();
      eyr[] arrayOfEyr2 = this.c[this.e + 1].b();
      while (true) {
        if (i < arrayOfEyr1.length) {
          if (arrayOfEyr1[i] != null && arrayOfEyr2[i] != null && arrayOfEyr1[i].h() == arrayOfEyr2[i].h())
            for (int j = 1; j <= this.e; j++) {
              eyr eyr = this.c[j].b()[i];
              if (eyr != null) {
                eyr.b(arrayOfEyr1[i].h());
                if (!eyr.a())
                  this.c[j].b()[i] = null; 
              } 
            }  
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private int i() {
    if (this.c[this.e + 1] == null)
      return 0; 
    eyr[] arrayOfEyr = this.c[this.e + 1].b();
    int j = 0;
    int i = 0;
    label22: while (j < arrayOfEyr.length) {
      if (arrayOfEyr[j] == null)
        continue; 
      int n = arrayOfEyr[j].h();
      int k = this.e + 1;
      int m = 0;
      while (true) {
        if (k > 0 && m < 2) {
          eyr eyr = this.c[k].b()[j];
          int i1 = m;
          int i2 = i;
          if (eyr != null) {
            m = a(n, m, eyr);
            i1 = m;
            i2 = i;
            if (!eyr.a()) {
              i2 = i + 1;
              i1 = m;
            } 
          } 
          k--;
          m = i1;
          i = i2;
          continue;
        } 
        j++;
        continue label22;
      } 
    } 
    return i;
  }
  
  private int j() {
    if (this.c[0] == null)
      return 0; 
    eyr[] arrayOfEyr = this.c[0].b();
    int j = 0;
    int i = 0;
    label22: while (j < arrayOfEyr.length) {
      if (arrayOfEyr[j] == null)
        continue; 
      int n = arrayOfEyr[j].h();
      int k = 1;
      int m = 0;
      while (true) {
        if (k < this.e + 1 && m < 2) {
          eyr eyr = this.c[k].b()[j];
          int i1 = m;
          int i2 = i;
          if (eyr != null) {
            m = a(n, m, eyr);
            i1 = m;
            i2 = i;
            if (!eyr.a()) {
              i2 = i + 1;
              i1 = m;
            } 
          } 
          k++;
          m = i1;
          i = i2;
          continue;
        } 
        j++;
        continue label22;
      } 
    } 
    return i;
  }
  
  eyw a(int paramInt) {
    return this.c[paramInt];
  }
  
  void a(int paramInt, eyw parameyw) {
    this.c[paramInt] = parameyw;
  }
  
  public void a(eyq parameyq) {
    this.d = parameyq;
  }
  
  eyw[] a() {
    a(this.c[0]);
    a(this.c[this.e + 1]);
    for (int i = 928;; i = j) {
      int j = f();
      if (j <= 0 || j >= i)
        return this.c; 
    } 
  }
  
  int b() {
    return this.e;
  }
  
  int c() {
    return this.b.c();
  }
  
  int d() {
    return this.b.b();
  }
  
  eyq e() {
    return this.d;
  }
  
  public String toString() {
    eyw eyw2 = this.c[0];
    eyw eyw1 = eyw2;
    if (eyw2 == null)
      eyw1 = this.c[this.e + 1]; 
    Formatter formatter = new Formatter();
    for (int i = 0; i < (eyw1.b()).length; i++) {
      formatter.format("CW %3d:", new Object[] { Integer.valueOf(i) });
      for (int j = 0; j < this.e + 2; j++) {
        if (this.c[j] == null) {
          formatter.format("    |   ", new Object[0]);
        } else {
          eyr eyr = this.c[j].b()[i];
          if (eyr == null) {
            formatter.format("    |   ", new Object[0]);
          } else {
            formatter.format(" %3d|%3d", new Object[] { Integer.valueOf(eyr.h()), Integer.valueOf(eyr.g()) });
          } 
        } 
      } 
      formatter.format("%n", new Object[0]);
    } 
    String str = formatter.toString();
    formatter.close();
    return str;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */