public class ca {
  public static byte[] a(byte[] paramArrayOfbyte) {
    return c(paramArrayOfbyte);
  }
  
  public static byte[] a(byte[] paramArrayOfbyte1, byte[] paramArrayOfbyte2) {
    return b(paramArrayOfbyte1, paramArrayOfbyte2);
  }
  
  public static byte[] b(byte[] paramArrayOfbyte) {
    return d(paramArrayOfbyte);
  }
  
  private static byte[] b(byte[] paramArrayOfbyte1, byte[] paramArrayOfbyte2) {
    aw aw = new aw(paramArrayOfbyte1);
    av av = new av(new cq());
    av.a(aw);
    av.a(paramArrayOfbyte2, 0, paramArrayOfbyte2.length);
    paramArrayOfbyte2 = new byte[20];
    av.a(paramArrayOfbyte2, 0);
    return paramArrayOfbyte2;
  }
  
  private static byte[] c(byte[] paramArrayOfbyte) {
    cq cq = new cq();
    cq.a(paramArrayOfbyte, 0, paramArrayOfbyte.length);
    paramArrayOfbyte = new byte[20];
    cq.b(paramArrayOfbyte, 0);
    return paramArrayOfbyte;
  }
  
  private static byte[] d(byte[] paramArrayOfbyte) {
    as as = new as();
    as.a(paramArrayOfbyte, 0, paramArrayOfbyte.length);
    paramArrayOfbyte = new byte[20];
    as.b(paramArrayOfbyte, 0);
    return paramArrayOfbyte;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ca.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */