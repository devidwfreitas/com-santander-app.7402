import java.util.Arrays;

public class evg {
  private final CharSequence a;
  
  private final int b;
  
  private final int c;
  
  private final byte[] d;
  
  public evg(CharSequence paramCharSequence, int paramInt1, int paramInt2) {
    this.a = paramCharSequence;
    this.c = paramInt1;
    this.b = paramInt2;
    this.d = new byte[paramInt1 * paramInt2];
    Arrays.fill(this.d, (byte)-1);
  }
  
  private void a(int paramInt) {
    a(this.b - 1, 0, paramInt, 1);
    a(this.b - 1, 1, paramInt, 2);
    a(this.b - 1, 2, paramInt, 3);
    a(0, this.c - 2, paramInt, 4);
    a(0, this.c - 1, paramInt, 5);
    a(1, this.c - 1, paramInt, 6);
    a(2, this.c - 1, paramInt, 7);
    a(3, this.c - 1, paramInt, 8);
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3) {
    a(paramInt1 - 2, paramInt2 - 2, paramInt3, 1);
    a(paramInt1 - 2, paramInt2 - 1, paramInt3, 2);
    a(paramInt1 - 1, paramInt2 - 2, paramInt3, 3);
    a(paramInt1 - 1, paramInt2 - 1, paramInt3, 4);
    a(paramInt1 - 1, paramInt2, paramInt3, 5);
    a(paramInt1, paramInt2 - 2, paramInt3, 6);
    a(paramInt1, paramInt2 - 1, paramInt3, 7);
    a(paramInt1, paramInt2, paramInt3, 8);
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    boolean bool = true;
    if (paramInt1 < 0) {
      paramInt1 += this.b;
      paramInt2 = 4 - (this.b + 4) % 8 + paramInt2;
    } 
    int j = paramInt2;
    int i = paramInt1;
    if (paramInt2 < 0) {
      j = paramInt2 + this.c;
      i = paramInt1 + 4 - (this.c + 4) % 8;
    } 
    if ((this.a.charAt(paramInt3) & 1 << 8 - paramInt4) == 0)
      bool = false; 
    a(j, i, bool);
  }
  
  private void b(int paramInt) {
    a(this.b - 3, 0, paramInt, 1);
    a(this.b - 2, 0, paramInt, 2);
    a(this.b - 1, 0, paramInt, 3);
    a(0, this.c - 4, paramInt, 4);
    a(0, this.c - 3, paramInt, 5);
    a(0, this.c - 2, paramInt, 6);
    a(0, this.c - 1, paramInt, 7);
    a(1, this.c - 1, paramInt, 8);
  }
  
  private void c(int paramInt) {
    a(this.b - 3, 0, paramInt, 1);
    a(this.b - 2, 0, paramInt, 2);
    a(this.b - 1, 0, paramInt, 3);
    a(0, this.c - 2, paramInt, 4);
    a(0, this.c - 1, paramInt, 5);
    a(1, this.c - 1, paramInt, 6);
    a(2, this.c - 1, paramInt, 7);
    a(3, this.c - 1, paramInt, 8);
  }
  
  private void d(int paramInt) {
    a(this.b - 1, 0, paramInt, 1);
    a(this.b - 1, this.c - 1, paramInt, 2);
    a(0, this.c - 3, paramInt, 3);
    a(0, this.c - 2, paramInt, 4);
    a(0, this.c - 1, paramInt, 5);
    a(1, this.c - 3, paramInt, 6);
    a(1, this.c - 2, paramInt, 7);
    a(1, this.c - 1, paramInt, 8);
  }
  
  final int a() {
    return this.b;
  }
  
  final void a(int paramInt1, int paramInt2, boolean paramBoolean) {
    boolean bool;
    byte[] arrayOfByte = this.d;
    int i = this.c;
    if (paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    arrayOfByte[i * paramInt2 + paramInt1] = bool;
  }
  
  public final boolean a(int paramInt1, int paramInt2) {
    return (this.d[this.c * paramInt2 + paramInt1] == 1);
  }
  
  final int b() {
    return this.c;
  }
  
  final boolean b(int paramInt1, int paramInt2) {
    return (this.d[this.c * paramInt2 + paramInt1] >= 0);
  }
  
  final byte[] c() {
    return this.d;
  }
  
  public final void d() {
    int j = 0;
    int i = 4;
    int k = 0;
    while (true) {
      int m = k;
      if (i == this.b) {
        m = k;
        if (!j) {
          a(k);
          m = k + 1;
        } 
      } 
      int n = m;
      if (i == this.b - 2) {
        n = m;
        if (!j) {
          n = m;
          if (this.c % 4 != 0) {
            b(m);
            n = m + 1;
          } 
        } 
      } 
      k = n;
      if (i == this.b - 2) {
        k = n;
        if (!j) {
          k = n;
          if (this.c % 8 == 4) {
            c(n);
            k = n + 1;
          } 
        } 
      } 
      n = j;
      int i1 = i;
      m = k;
      if (i == this.b + 4) {
        n = j;
        i1 = i;
        m = k;
        if (j == 2) {
          n = j;
          i1 = i;
          m = k;
          if (this.c % 8 == 0) {
            d(k);
            m = k + 1;
            i1 = i;
            n = j;
          } 
        } 
      } 
      while (true) {
        i = m;
        if (i1 < this.b) {
          i = m;
          if (n >= 0) {
            i = m;
            if (!b(n, i1)) {
              a(i1, n, m);
              i = m + 1;
            } 
          } 
        } 
        k = i1 - 2;
        j = n + 2;
        if (k >= 0) {
          n = j;
          i1 = k;
          m = i;
          if (j >= this.c)
            break; 
          continue;
        } 
        break;
      } 
      k++;
      n = j + 3;
      m = i;
      j = k;
      i = n;
      do {
        if (j >= 0 && i < this.c && !b(i, j)) {
          k = m + 1;
          a(j, i, m);
          m = k;
        } 
        j += 2;
        i -= 2;
      } while (j < this.b && i >= 0);
      n = j + 3;
      i1 = i + 1;
      j = i1;
      i = n;
      k = m;
      if (n >= this.b) {
        j = i1;
        i = n;
        k = m;
        if (i1 >= this.c) {
          if (!b(this.c - 1, this.b - 1)) {
            a(this.c - 1, this.b - 1, true);
            a(this.c - 2, this.b - 2, true);
          } 
          return;
        } 
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */