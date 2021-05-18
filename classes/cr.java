public class cr {
  public static byte[] a(String paramString, byte[] paramArrayOfbyte) {
    return b(paramString, paramArrayOfbyte);
  }
  
  private static byte[] b(String paramString, byte[] paramArrayOfbyte) {
    paramArrayOfbyte = az.b(paramArrayOfbyte);
    try {
      return ca.a(paramArrayOfbyte, paramString.getBytes());
    } catch (Exception exception) {
      return paramArrayOfbyte;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */