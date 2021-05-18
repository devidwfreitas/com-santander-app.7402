import java.util.Arrays;

class cwq extends cwp {
  private final byte[] a;
  
  cwq(byte[] paramArrayOfbyte) {
    super(Arrays.copyOfRange(paramArrayOfbyte, 0, 25));
    this.a = paramArrayOfbyte;
  }
  
  byte[] c() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */