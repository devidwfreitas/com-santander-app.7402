import java.util.Arrays;

public final class ett implements Cloneable {
  private final int a;
  
  private final int b;
  
  private final int c;
  
  private final int[] d;
  
  public ett(int paramInt) {
    this(paramInt, paramInt);
  }
  
  public ett(int paramInt1, int paramInt2) {
    if (paramInt1 < 1 || paramInt2 < 1)
      throw new IllegalArgumentException("Both dimensions must be greater than 0"); 
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = (paramInt1 + 31) / 32;
    this.d = new int[this.c * paramInt2];
  }
  
  private ett(int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfint) {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
    this.d = paramArrayOfint;
  }
  
  public static ett a(String paramString1, String paramString2, String paramString3) {
    boolean bool = false;
    if (paramString1 == null)
      throw new IllegalArgumentException(); 
    boolean[] arrayOfBoolean = new boolean[paramString1.length()];
    int k = 0;
    int m = 0;
    int i = -1;
    int i1 = 0;
    int j = 0;
    while (k < paramString1.length()) {
      if (paramString1.charAt(k) == '\n' || paramString1.charAt(k) == '\r') {
        int i4 = m;
        int i2 = i;
        int i3 = i1;
        if (j > i1) {
          if (i == -1) {
            i2 = j - i1;
          } else {
            i2 = i;
            if (j - i1 != i)
              throw new IllegalArgumentException("row lengths do not match"); 
          } 
          i4 = m + 1;
          i3 = j;
        } 
        k++;
        m = i4;
        i = i2;
        i1 = i3;
        continue;
      } 
      if (paramString1.substring(k, paramString2.length() + k).equals(paramString2)) {
        k += paramString2.length();
        arrayOfBoolean[j] = true;
        j++;
        continue;
      } 
      if (paramString1.substring(k, paramString3.length() + k).equals(paramString3)) {
        k += paramString3.length();
        arrayOfBoolean[j] = false;
        j++;
        continue;
      } 
      throw new IllegalArgumentException("illegal character encountered: " + paramString1.substring(k));
    } 
    int n = m;
    k = i;
    if (j > i1) {
      if (i == -1) {
        k = j - i1;
      } else {
        k = i;
        if (j - i1 != i)
          throw new IllegalArgumentException("row lengths do not match"); 
      } 
      n = m + 1;
    } 
    ett ett1 = new ett(k, n);
    for (i = bool; i < j; i++) {
      if (arrayOfBoolean[i])
        ett1.b(i % k, i / k); 
    } 
    return ett1;
  }
  
  public ets a(int paramInt, ets paramets) {
    if (paramets == null || paramets.a() < this.a) {
      paramets = new ets(this.a);
    } else {
      paramets.c();
    } 
    int j = this.c;
    for (int i = 0; i < this.c; i++)
      paramets.a(i * 32, this.d[paramInt * j + i]); 
    return paramets;
  }
  
  public String a(String paramString1, String paramString2) {
    return b(paramString1, paramString2, "\n");
  }
  
  public void a() {
    int j = this.d.length;
    for (int i = 0; i < j; i++)
      this.d[i] = 0; 
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (paramInt2 < 0 || paramInt1 < 0)
      throw new IllegalArgumentException("Left and top must be nonnegative"); 
    if (paramInt4 < 1 || paramInt3 < 1)
      throw new IllegalArgumentException("Height and width must be at least 1"); 
    int i = paramInt1 + paramInt3;
    paramInt4 = paramInt2 + paramInt4;
    if (paramInt4 > this.b || i > this.a)
      throw new IllegalArgumentException("The region must fit inside the matrix"); 
    label20: while (paramInt2 < paramInt4) {
      int j = this.c;
      paramInt3 = paramInt1;
      while (true) {
        if (paramInt3 < i) {
          int[] arrayOfInt = this.d;
          int k = paramInt3 / 32 + paramInt2 * j;
          arrayOfInt[k] = arrayOfInt[k] | 1 << (paramInt3 & 0x1F);
          paramInt3++;
          continue;
        } 
        paramInt2++;
        continue label20;
      } 
    } 
  }
  
  public void a(ett paramett) {
    if (this.a != paramett.f() || this.b != paramett.g() || this.c != paramett.h())
      throw new IllegalArgumentException("input matrix dimensions do not match"); 
    ets ets = new ets(this.a / 32 + 1);
    for (int i = 0; i < this.b; i++) {
      int k = this.c;
      int[] arrayOfInt = paramett.a(i, ets).d();
      for (int j = 0; j < this.c; j++) {
        int[] arrayOfInt1 = this.d;
        int m = i * k + j;
        arrayOfInt1[m] = arrayOfInt1[m] ^ arrayOfInt[j];
      } 
    } 
  }
  
  public boolean a(int paramInt1, int paramInt2) {
    int i = this.c;
    int j = paramInt1 / 32;
    return ((this.d[i * paramInt2 + j] >>> (paramInt1 & 0x1F) & 0x1) != 0);
  }
  
  @Deprecated
  public String b(String paramString1, String paramString2, String paramString3) {
    StringBuilder stringBuilder = new StringBuilder(this.b * (this.a + 1));
    int i;
    for (i = 0; i < this.b; i++) {
      for (int j = 0; j < this.a; j++) {
        String str;
        if (a(j, i)) {
          str = paramString1;
        } else {
          str = paramString2;
        } 
        stringBuilder.append(str);
      } 
      stringBuilder.append(paramString3);
    } 
    return stringBuilder.toString();
  }
  
  public void b() {
    int i = f();
    int j = g();
    ets ets2 = new ets(i);
    ets ets1 = new ets(i);
    for (i = 0; i < (j + 1) / 2; i++) {
      ets2 = a(i, ets2);
      ets1 = a(j - 1 - i, ets1);
      ets2.e();
      ets1.e();
      b(i, ets1);
      b(j - 1 - i, ets2);
    } 
  }
  
  public void b(int paramInt1, int paramInt2) {
    paramInt2 = this.c * paramInt2 + paramInt1 / 32;
    int[] arrayOfInt = this.d;
    arrayOfInt[paramInt2] = arrayOfInt[paramInt2] | 1 << (paramInt1 & 0x1F);
  }
  
  public void b(int paramInt, ets paramets) {
    System.arraycopy(paramets.d(), 0, this.d, this.c * paramInt, this.c);
  }
  
  public void c(int paramInt1, int paramInt2) {
    paramInt2 = this.c * paramInt2 + paramInt1 / 32;
    int[] arrayOfInt = this.d;
    arrayOfInt[paramInt2] = arrayOfInt[paramInt2] & (1 << (paramInt1 & 0x1F) ^ 0xFFFFFFFF);
  }
  
  public int[] c() {
    int m = this.a;
    int k = this.b;
    int j = -1;
    int n = -1;
    int i = 0;
    while (true) {
      if (i < this.b) {
        int i1 = 0;
        while (true) {
          i1++;
          i2 = n;
          n = j;
          j = k;
          k = m;
          m = i2;
        } 
        break;
      } 
      i = j - m;
      j = n - k;
      return (i < 0 || j < 0) ? null : new int[] { m, k, i, j };
    } 
  }
  
  public void d(int paramInt1, int paramInt2) {
    paramInt2 = this.c * paramInt2 + paramInt1 / 32;
    int[] arrayOfInt = this.d;
    arrayOfInt[paramInt2] = arrayOfInt[paramInt2] ^ 1 << (paramInt1 & 0x1F);
  }
  
  public int[] d() {
    int i;
    for (i = 0; i < this.d.length && this.d[i] == 0; i++);
    if (i == this.d.length)
      return null; 
    int k = i / this.c;
    int m = this.c;
    int n = this.d[i];
    int j;
    for (j = 0; n << 31 - j == 0; j++);
    return new int[] { i % m * 32 + j, k };
  }
  
  public int[] e() {
    int i;
    for (i = this.d.length - 1; i >= 0 && this.d[i] == 0; i--);
    if (i < 0)
      return null; 
    int k = i / this.c;
    int m = this.c;
    int n = this.d[i];
    int j;
    for (j = 31; n >>> j == 0; j--);
    return new int[] { i % m * 32 + j, k };
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof ett) {
      paramObject = paramObject;
      if (this.a == ((ett)paramObject).a && this.b == ((ett)paramObject).b && this.c == ((ett)paramObject).c && Arrays.equals(this.d, ((ett)paramObject).d))
        return true; 
    } 
    return false;
  }
  
  public int f() {
    return this.a;
  }
  
  public int g() {
    return this.b;
  }
  
  public int h() {
    return this.c;
  }
  
  public int hashCode() {
    return (((this.a * 31 + this.a) * 31 + this.b) * 31 + this.c) * 31 + Arrays.hashCode(this.d);
  }
  
  public ett i() {
    return new ett(this.a, this.b, this.c, (int[])this.d.clone());
  }
  
  public String toString() {
    return a("X ", "  ");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ett.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */