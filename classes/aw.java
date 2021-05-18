public class aw implements ci {
  private byte[] a;
  
  public aw(byte[] paramArrayOfbyte) {
    this(paramArrayOfbyte, 0, paramArrayOfbyte.length);
  }
  
  public aw(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    this.a = new byte[paramInt2];
    System.arraycopy(paramArrayOfbyte, paramInt1, this.a, 0, paramInt2);
  }
  
  public byte[] a() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */