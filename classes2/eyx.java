final class eyx extends eyw {
  private final boolean a;
  
  eyx(eyq parameyq, boolean paramBoolean) {
    super(parameyq);
    this.a = paramBoolean;
  }
  
  private void a(eyr[] paramArrayOfeyr, eyo parameyo) {
    int i = 0;
    while (true) {
      if (i < paramArrayOfeyr.length) {
        eyr eyr1 = paramArrayOfeyr[i];
        if (paramArrayOfeyr[i] != null) {
          int k = eyr1.g() % 30;
          int j = eyr1.h();
          if (j > parameyo.c()) {
            paramArrayOfeyr[i] = null;
          } else {
            int m = j;
            if (!this.a)
              m = j + 2; 
            switch (m % 3) {
              case 0:
                if (k * 3 + 1 != parameyo.d())
                  paramArrayOfeyr[i] = null; 
                i++;
                break;
              case 1:
                if (k / 3 != parameyo.b() || k % 3 != parameyo.e())
                  paramArrayOfeyr[i] = null; 
                i++;
                break;
              case 2:
                if (k + 1 != parameyo.a())
                  paramArrayOfeyr[i] = null; 
                i++;
                break;
            } 
            continue;
          } 
        } 
      } else {
        break;
      } 
      i++;
      break;
    } 
  }
  
  int a(eyo parameyo) {
    eqo eqo1;
    eqo eqo2;
    eyr[] arrayOfEyr = b();
    c();
    a(arrayOfEyr, parameyo);
    eyq eyq = a();
    if (this.a) {
      eqo1 = eyq.e();
    } else {
      eqo1 = eyq.f();
    } 
    if (this.a) {
      eqo2 = eyq.g();
    } else {
      eqo2 = eqo2.h();
    } 
    int m = b((int)eqo1.b());
    int n = b((int)eqo2.b());
    float f = (n - m) / parameyo.c();
    int j = -1;
    int k = 0;
    int i = 1;
    while (m < n) {
      if (arrayOfEyr[m] == null) {
        int i2 = k;
        k = j;
        j = i;
        i = i2;
      } else {
        eyr eyr = arrayOfEyr[m];
        int i2 = eyr.h() - j;
        if (i2 == 0) {
          i2 = k + 1;
          k = i;
          int i3 = j;
          i = i2;
          j = k;
          k = i3;
        } else if (i2 == 1) {
          j = Math.max(i, k);
          k = eyr.h();
          i = 1;
        } else if (i2 < 0 || eyr.h() >= parameyo.c() || i2 > m) {
          arrayOfEyr[m] = null;
          int i3 = i;
          i2 = j;
          i = k;
          j = i3;
          k = i2;
        } else {
          int i3;
          if (i > 2)
            i2 *= i - 2; 
          if (i2 >= m) {
            i3 = 1;
          } else {
            i3 = 0;
          } 
          for (int i4 = 1; i4 <= i2 && !i3; i4++) {
            if (arrayOfEyr[m - i4] != null) {
              i3 = 1;
            } else {
              i3 = 0;
            } 
          } 
          if (i3) {
            arrayOfEyr[m] = null;
            i3 = i;
            i2 = j;
            i = k;
            j = i3;
            k = i2;
          } else {
            k = eyr.h();
            j = i;
            i = 1;
          } 
        } 
      } 
      m++;
      int i1 = k;
      k = i;
      i = j;
      j = i1;
    } 
    return (int)(f + 0.5D);
  }
  
  int b(eyo parameyo) {
    eqo eqo1;
    eqo eqo2;
    eyq eyq = a();
    if (this.a) {
      eqo1 = eyq.e();
    } else {
      eqo1 = eyq.f();
    } 
    if (this.a) {
      eqo2 = eyq.g();
    } else {
      eqo2 = eqo2.h();
    } 
    int k = b((int)eqo1.b());
    int n = b((int)eqo2.b());
    float f = (n - k) / parameyo.c();
    eyr[] arrayOfEyr = b();
    int j = -1;
    int i = 0;
    int m = 1;
    while (k < n) {
      if (arrayOfEyr[k] != null) {
        eyr eyr = arrayOfEyr[k];
        eyr.b();
        int i1 = eyr.h() - j;
        if (i1 == 0) {
          i++;
        } else if (i1 == 1) {
          m = Math.max(m, i);
          j = eyr.h();
          i = 1;
        } else if (eyr.h() >= parameyo.c()) {
          arrayOfEyr[k] = null;
        } else {
          j = eyr.h();
          i = 1;
        } 
      } 
      k++;
    } 
    return (int)(f + 0.5D);
  }
  
  void c() {
    for (eyr eyr : b()) {
      if (eyr != null)
        eyr.b(); 
    } 
  }
  
  int[] d() {
    eyo eyo = e();
    if (eyo == null)
      return null; 
    b(eyo);
    int[] arrayOfInt = new int[eyo.c()];
    eyr[] arrayOfEyr = b();
    int j = arrayOfEyr.length;
    int i = 0;
    while (true) {
      eyr eyr;
      int[] arrayOfInt1 = arrayOfInt;
      if (i < j) {
        eyr = arrayOfEyr[i];
        if (eyr != null) {
          int k = eyr.h();
          if (k >= arrayOfInt.length)
            throw eqb.a(); 
          arrayOfInt[k] = arrayOfInt[k] + 1;
        } 
        i++;
        continue;
      } 
      return (int[])eyr;
    } 
  }
  
  eyo e() {
    eyr[] arrayOfEyr = b();
    eyp eyp1 = new eyp();
    eyp eyp2 = new eyp();
    eyp eyp3 = new eyp();
    eyp eyp4 = new eyp();
    int j = arrayOfEyr.length;
    int i = 0;
    while (true) {
      if (i < j) {
        eyr eyr = arrayOfEyr[i];
        if (eyr != null) {
          eyr.b();
          int n = eyr.g() % 30;
          int m = eyr.h();
          int k = m;
          if (!this.a)
            k = m + 2; 
          switch (k % 3) {
            case 0:
              eyp2.a(n * 3 + 1);
              i++;
              break;
            case 1:
              eyp4.a(n / 3);
              eyp3.a(n % 3);
              i++;
              break;
            case 2:
              eyp1.a(n + 1);
              i++;
              break;
          } 
          continue;
        } 
      } else {
        break;
      } 
      i++;
      break;
    } 
    if ((eyp1.a()).length == 0 || (eyp2.a()).length == 0 || (eyp3.a()).length == 0 || (eyp4.a()).length == 0 || eyp1.a()[0] < 1 || eyp2.a()[0] + eyp3.a()[0] < 3 || eyp2.a()[0] + eyp3.a()[0] > 90)
      return null; 
    eyo eyo = new eyo(eyp1.a()[0], eyp2.a()[0], eyp3.a()[0], eyp4.a()[0]);
    a(arrayOfEyr, eyo);
    return eyo;
  }
  
  boolean f() {
    return this.a;
  }
  
  public String toString() {
    return "IsLeft: " + this.a + '\n' + super.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */