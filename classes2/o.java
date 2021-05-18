import java.io.Serializable;

public class o implements bo, Serializable {
  private byte[] a = null;
  
  private byte[] b = null;
  
  private byte[] c = null;
  
  public o(byte[] paramArrayOfbyte1, byte[] paramArrayOfbyte2, byte[] paramArrayOfbyte3) {
    b(paramArrayOfbyte2);
    a(paramArrayOfbyte3);
  }
  
  public void a(byte[] paramArrayOfbyte) {
    this.c = paramArrayOfbyte;
  }
  
  public byte[] a() {
    return this.a;
  }
  
  public void b(byte[] paramArrayOfbyte) {
    this.a = paramArrayOfbyte;
  }
  
  public byte[] b() {
    return this.c;
  }
  
  public void c(byte[] paramArrayOfbyte) {
    this.b = paramArrayOfbyte;
  }
  
  public boolean c() {
    return (this.a != null && this.a.length == 32 && this.c != null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */