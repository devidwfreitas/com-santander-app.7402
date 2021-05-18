final class euo {
  private final ett a;
  
  private final ett b;
  
  private final euu c;
  
  euo(ett paramett) {
    int i = paramett.g();
    if (i < 8 || i > 144 || (i & 0x1) != 0)
      throw eqb.a(); 
    this.c = b(paramett);
    this.a = a(paramett);
    this.b = new ett(this.a.f(), this.a.g());
  }
  
  private static euu b(ett paramett) {
    return euu.a(paramett.g(), paramett.f());
  }
  
  int a(int paramInt1, int paramInt2) {
    if (a(paramInt1 - 1, 0, paramInt1, paramInt2)) {
      i = 1;
    } else {
      i = 0;
    } 
    int j = i << 1;
    int i = j;
    if (a(paramInt1 - 1, 1, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(paramInt1 - 1, 2, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(0, paramInt2 - 2, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(0, paramInt2 - 1, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(1, paramInt2 - 1, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(2, paramInt2 - 1, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(3, paramInt2 - 1, paramInt1, paramInt2))
      i = j | 0x1; 
    return i;
  }
  
  ett a(ett paramett) {
    int j = this.c.b();
    int i = this.c.c();
    if (paramett.g() != j)
      throw new IllegalArgumentException("Dimension of bitMarix must match the version size"); 
    int k = this.c.d();
    int m = this.c.e();
    int n = j / k;
    int i1 = i / m;
    ett ett1 = new ett(i1 * m, n * k);
    for (i = 0; i < n; i++) {
      for (j = 0; j < i1; j++) {
        int i2;
        for (i2 = 0; i2 < k; i2++) {
          int i3;
          for (i3 = 0; i3 < m; i3++) {
            if (paramett.a((m + 2) * j + 1 + i3, (k + 2) * i + 1 + i2))
              ett1.b(j * m + i3, i * k + i2); 
          } 
        } 
      } 
    } 
    return ett1;
  }
  
  euu a() {
    return this.c;
  }
  
  boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (paramInt1 < 0) {
      paramInt1 += paramInt3;
      paramInt2 = 4 - (paramInt3 + 4 & 0x7) + paramInt2;
    } 
    int i = paramInt2;
    paramInt3 = paramInt1;
    if (paramInt2 < 0) {
      i = paramInt2 + paramInt4;
      paramInt3 = paramInt1 + 4 - (paramInt4 + 4 & 0x7);
    } 
    this.b.b(i, paramInt3);
    return this.a.a(i, paramInt3);
  }
  
  int b(int paramInt1, int paramInt2) {
    if (a(paramInt1 - 3, 0, paramInt1, paramInt2)) {
      i = 1;
    } else {
      i = 0;
    } 
    int j = i << 1;
    int i = j;
    if (a(paramInt1 - 2, 0, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(paramInt1 - 1, 0, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(0, paramInt2 - 4, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(0, paramInt2 - 3, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(0, paramInt2 - 2, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(0, paramInt2 - 1, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(1, paramInt2 - 1, paramInt1, paramInt2))
      i = j | 0x1; 
    return i;
  }
  
  int b(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int i = 0;
    if (a(paramInt1 - 2, paramInt2 - 2, paramInt3, paramInt4))
      i = 1; 
    int j = i << 1;
    i = j;
    if (a(paramInt1 - 2, paramInt2 - 1, paramInt3, paramInt4))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(paramInt1 - 1, paramInt2 - 2, paramInt3, paramInt4))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(paramInt1 - 1, paramInt2 - 1, paramInt3, paramInt4))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(paramInt1 - 1, paramInt2, paramInt3, paramInt4))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(paramInt1, paramInt2 - 2, paramInt3, paramInt4))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(paramInt1, paramInt2 - 1, paramInt3, paramInt4))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(paramInt1, paramInt2, paramInt3, paramInt4))
      i = j | 0x1; 
    return i;
  }
  
  byte[] b() {
    boolean bool3 = false;
    byte[] arrayOfByte = new byte[this.c.f()];
    int m = this.a.g();
    int n = this.a.f();
    boolean bool2 = false;
    boolean bool1 = false;
    boolean bool4 = false;
    int i = 0;
    int j = 4;
    int k = 0;
    label58: while (true) {
      if (j == m && !i && !bool4) {
        arrayOfByte[k] = (byte)a(m, n);
        k++;
        j -= 2;
        i += 2;
        bool4 = true;
        continue;
      } 
      if (j == m - 2 && i == 0 && (n & 0x3) != 0 && !bool1) {
        arrayOfByte[k] = (byte)b(m, n);
        k++;
        j -= 2;
        i += 2;
        bool1 = true;
        continue;
      } 
      if (j == m + 4 && i == 2 && (n & 0x7) == 0 && !bool2) {
        arrayOfByte[k] = (byte)c(m, n);
        k++;
        j -= 2;
        i += 2;
        bool2 = true;
        continue;
      } 
      if (j == m - 2 && i == 0 && (n & 0x7) == 4 && !bool3) {
        arrayOfByte[k] = (byte)d(m, n);
        k++;
        j -= 2;
        i += 2;
        bool3 = true;
        continue;
      } 
      int i1 = i;
      i = k;
      k = j;
      j = i1;
      do {
        if (k < m && j >= 0 && !this.b.a(j, k)) {
          i1 = i + 1;
          arrayOfByte[i] = (byte)b(k, j, m, n);
          i = i1;
        } 
        k -= 2;
        j += 2;
      } while (k >= 0 && j < n);
      i1 = k + 1;
      j += 3;
      while (true) {
        if (i1 >= 0 && j < n && !this.b.a(j, i1)) {
          k = i + 1;
          arrayOfByte[i] = (byte)b(i1, j, m, n);
        } else {
          k = i;
        } 
        i1 += 2;
        i = j - 2;
        if (i1 >= m || i < 0) {
          j = i1 + 3;
          i++;
          if (j >= m) {
            if (i >= n) {
              if (k != this.c.f())
                throw eqb.a(); 
              return arrayOfByte;
            } 
            continue label58;
          } 
          continue label58;
        } 
        j = i;
        i = k;
      } 
      break;
    } 
  }
  
  int c(int paramInt1, int paramInt2) {
    if (a(paramInt1 - 1, 0, paramInt1, paramInt2)) {
      i = 1;
    } else {
      i = 0;
    } 
    int j = i << 1;
    int i = j;
    if (a(paramInt1 - 1, paramInt2 - 1, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(0, paramInt2 - 3, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(0, paramInt2 - 2, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(0, paramInt2 - 1, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(1, paramInt2 - 3, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(1, paramInt2 - 2, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(1, paramInt2 - 1, paramInt1, paramInt2))
      i = j | 0x1; 
    return i;
  }
  
  int d(int paramInt1, int paramInt2) {
    if (a(paramInt1 - 3, 0, paramInt1, paramInt2)) {
      i = 1;
    } else {
      i = 0;
    } 
    int j = i << 1;
    int i = j;
    if (a(paramInt1 - 2, 0, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(paramInt1 - 1, 0, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(0, paramInt2 - 2, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(0, paramInt2 - 1, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(1, paramInt2 - 1, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(2, paramInt2 - 1, paramInt1, paramInt2))
      i = j | 0x1; 
    j = i << 1;
    i = j;
    if (a(3, paramInt2 - 1, paramInt1, paramInt2))
      i = j | 0x1; 
    return i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\euo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */