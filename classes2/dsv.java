import java.io.FilterInputStream;
import java.io.InputStream;

class dsv extends FilterInputStream {
  private int a = 0;
  
  private dsv(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public int read() {
    int i = super.read();
    if (i != -1)
      this.a++; 
    return i;
  }
  
  public int read(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    paramInt1 = super.read(paramArrayOfbyte, paramInt1, paramInt2);
    if (paramInt1 != -1)
      this.a += paramInt1; 
    return paramInt1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dsv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */