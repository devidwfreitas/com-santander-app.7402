import java.io.OutputStream;

public class ax implements ay {
  protected final byte[] a = new byte[] { 
      65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
      75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
      85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
      101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
      111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
      121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
      56, 57, 43, 47 };
  
  protected byte b = 61;
  
  protected final byte[] c = new byte[128];
  
  public ax() {
    a();
  }
  
  private int a(OutputStream paramOutputStream, char paramChar1, char paramChar2, char paramChar3, char paramChar4) {
    if (paramChar3 == this.b) {
      paramOutputStream.write(this.c[paramChar1] << 2 | this.c[paramChar2] >> 4);
      return 1;
    } 
    if (paramChar4 == this.b) {
      b1 = this.c[paramChar1];
      b2 = this.c[paramChar2];
      b3 = this.c[paramChar3];
      paramOutputStream.write(b1 << 2 | b2 >> 4);
      paramOutputStream.write(b2 << 4 | b3 >> 2);
      return 2;
    } 
    byte b1 = this.c[b1];
    byte b2 = this.c[b2];
    byte b3 = this.c[b3];
    byte b4 = this.c[paramChar4];
    paramOutputStream.write(b1 << 2 | b2 >> 4);
    paramOutputStream.write(b2 << 4 | b3 >> 2);
    paramOutputStream.write(b3 << 6 | b4);
    return 3;
  }
  
  private int a(String paramString, int paramInt1, int paramInt2) {
    while (true) {
      if (paramInt1 >= paramInt2 || !a(paramString.charAt(paramInt1)))
        return paramInt1; 
      paramInt1++;
    } 
  }
  
  private int a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    while (true) {
      if (paramInt1 >= paramInt2 || !a((char)paramArrayOfbyte[paramInt1]))
        return paramInt1; 
      paramInt1++;
    } 
  }
  
  private boolean a(char paramChar) {
    return !(paramChar != '\n' && paramChar != '\r' && paramChar != '\t' && paramChar != ' ');
  }
  
  public int a(String paramString, OutputStream paramOutputStream) {
    int i = paramString.length();
    while (true) {
      if (i > 0 && a(paramString.charAt(i - 1))) {
        i--;
        continue;
      } 
      int m = i - 4;
      int k = a(paramString, 0, m);
      int j;
      for (j = 0;; j += 3) {
        if (k >= m)
          return a(paramOutputStream, paramString.charAt(i - 4), paramString.charAt(i - 3), paramString.charAt(i - 2), paramString.charAt(i - 1)) + j; 
        byte b1 = this.c[paramString.charAt(k)];
        int n = a(paramString, k + 1, m);
        k = this.c[paramString.charAt(n)];
        int i1 = a(paramString, n + 1, m);
        n = this.c[paramString.charAt(i1)];
        i1 = a(paramString, i1 + 1, m);
        byte b2 = this.c[paramString.charAt(i1)];
        paramOutputStream.write(b1 << 2 | k >> 4);
        paramOutputStream.write(k << 4 | n >> 2);
        paramOutputStream.write(n << 6 | b2);
        k = a(paramString, i1 + 1, m);
      } 
      break;
    } 
  }
  
  public int a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, OutputStream paramOutputStream) {
    int i = paramInt2 % 3;
    int j = paramInt2 - i;
    paramInt2 = paramInt1;
    while (true) {
      if (paramInt2 >= paramInt1 + j) {
        switch (i) {
          default:
            paramInt2 = j / 3;
            if (i == 0) {
              paramInt1 = 0;
              return paramInt1 + paramInt2 * 4;
            } 
            break;
          case 1:
            paramInt1 = paramArrayOfbyte[paramInt1 + j] & 0xFF;
            paramOutputStream.write(this.a[paramInt1 >>> 2 & 0x3F]);
            paramOutputStream.write(this.a[paramInt1 << 4 & 0x3F]);
            paramOutputStream.write(this.b);
            paramOutputStream.write(this.b);
          case 2:
            paramInt2 = paramArrayOfbyte[paramInt1 + j] & 0xFF;
            paramInt1 = paramArrayOfbyte[paramInt1 + j + 1] & 0xFF;
            paramOutputStream.write(this.a[paramInt2 >>> 2 & 0x3F]);
            paramOutputStream.write(this.a[(paramInt2 << 4 | paramInt1 >>> 4) & 0x3F]);
            paramOutputStream.write(this.a[paramInt1 << 2 & 0x3F]);
            paramOutputStream.write(this.b);
        } 
      } else {
        int k = paramArrayOfbyte[paramInt2] & 0xFF;
        int m = paramArrayOfbyte[paramInt2 + 1] & 0xFF;
        int n = paramArrayOfbyte[paramInt2 + 2] & 0xFF;
        paramOutputStream.write(this.a[k >>> 2 & 0x3F]);
        paramOutputStream.write(this.a[(k << 4 | m >>> 4) & 0x3F]);
        paramOutputStream.write(this.a[(m << 2 | n >>> 6) & 0x3F]);
        paramOutputStream.write(this.a[n & 0x3F]);
        paramInt2 += 3;
        continue;
      } 
      paramInt1 = 4;
      return paramInt1 + paramInt2 * 4;
    } 
  }
  
  protected void a() {
    for (int i = 0;; i++) {
      if (i >= this.a.length)
        return; 
      this.c[this.a[i]] = (byte)i;
    } 
  }
  
  public int b(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, OutputStream paramOutputStream) {
    paramInt2 = paramInt1 + paramInt2;
    while (true) {
      if (paramInt2 > paramInt1 && a((char)paramArrayOfbyte[paramInt2 - 1])) {
        paramInt2--;
        continue;
      } 
      int j = paramInt2 - 4;
      int i = a(paramArrayOfbyte, paramInt1, j);
      for (paramInt1 = 0;; paramInt1 += 3) {
        if (i >= j)
          return a(paramOutputStream, (char)paramArrayOfbyte[paramInt2 - 4], (char)paramArrayOfbyte[paramInt2 - 3], (char)paramArrayOfbyte[paramInt2 - 2], (char)paramArrayOfbyte[paramInt2 - 1]) + paramInt1; 
        byte b1 = this.c[paramArrayOfbyte[i]];
        int k = a(paramArrayOfbyte, i + 1, j);
        i = this.c[paramArrayOfbyte[k]];
        int m = a(paramArrayOfbyte, k + 1, j);
        k = this.c[paramArrayOfbyte[m]];
        m = a(paramArrayOfbyte, m + 1, j);
        byte b2 = this.c[paramArrayOfbyte[m]];
        paramOutputStream.write(b1 << 2 | i >> 4);
        paramOutputStream.write(i << 4 | k >> 2);
        paramOutputStream.write(k << 6 | b2);
        i = a(paramArrayOfbyte, m + 1, j);
      } 
      break;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */