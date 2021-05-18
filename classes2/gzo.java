import java.io.OutputStream;

public class gzo implements gzn {
  protected final byte[] a = new byte[] { 
      48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 
      97, 98, 99, 100, 101, 102 };
  
  protected final byte[] b = new byte[128];
  
  public gzo() {
    a();
  }
  
  private boolean a(char paramChar) {
    return (paramChar == '\n' || paramChar == '\r' || paramChar == '\t' || paramChar == ' ');
  }
  
  public int a(String paramString, OutputStream paramOutputStream) {
    int i = 0;
    int j = paramString.length();
    while (true) {
      int k;
      if (j <= 0 || !a(paramString.charAt(j - 1))) {
        k = 0;
        while (i < j) {
          while (i < j && a(paramString.charAt(i)))
            i++; 
          byte[] arrayOfByte = this.b;
          int m = i + 1;
          byte b = arrayOfByte[paramString.charAt(i)];
          for (i = m; i < j && a(paramString.charAt(i)); i++);
          paramOutputStream.write(this.b[paramString.charAt(i)] | b << 4);
          k++;
          i++;
        } 
      } else {
        j--;
        continue;
      } 
      return k;
    } 
  }
  
  public int a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, OutputStream paramOutputStream) {
    int i;
    for (i = paramInt1; i < paramInt1 + paramInt2; i++) {
      int j = paramArrayOfbyte[i] & 0xFF;
      paramOutputStream.write(this.a[j >>> 4]);
      paramOutputStream.write(this.a[j & 0xF]);
    } 
    return paramInt2 * 2;
  }
  
  protected void a() {
    for (int i = 0; i < this.a.length; i++)
      this.b[this.a[i]] = (byte)i; 
    this.b[65] = this.b[97];
    this.b[66] = this.b[98];
    this.b[67] = this.b[99];
    this.b[68] = this.b[100];
    this.b[69] = this.b[101];
    this.b[70] = this.b[102];
  }
  
  public int b(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, OutputStream paramOutputStream) {
    paramInt2 = paramInt1 + paramInt2;
    while (true) {
      int i;
      if (paramInt2 <= paramInt1 || !a((char)paramArrayOfbyte[paramInt2 - 1])) {
        i = 0;
        while (paramInt1 < paramInt2) {
          while (paramInt1 < paramInt2 && a((char)paramArrayOfbyte[paramInt1]))
            paramInt1++; 
          byte[] arrayOfByte = this.b;
          int j = paramInt1 + 1;
          byte b = arrayOfByte[paramArrayOfbyte[paramInt1]];
          for (paramInt1 = j; paramInt1 < paramInt2 && a((char)paramArrayOfbyte[paramInt1]); paramInt1++);
          paramOutputStream.write(this.b[paramArrayOfbyte[paramInt1]] | b << 4);
          i++;
          paramInt1++;
        } 
      } else {
        paramInt2--;
        continue;
      } 
      return i;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gzo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */