import java.io.OutputStream;

class bou extends OutputStream {
  final OutputStream a;
  
  final boy b;
  
  bou(OutputStream paramOutputStream, boy paramboy) {
    this.a = paramOutputStream;
    this.b = paramboy;
  }
  
  public void close() {
    try {
      this.a.close();
      return;
    } finally {
      this.b.a();
    } 
  }
  
  public void flush() {
    this.a.flush();
  }
  
  public void write(int paramInt) {
    this.a.write(paramInt);
  }
  
  public void write(byte[] paramArrayOfbyte) {
    this.a.write(paramArrayOfbyte);
  }
  
  public void write(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    this.a.write(paramArrayOfbyte, paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bou.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */