import android.util.Base64;

public final class cvm {
  public static String a(byte[] paramArrayOfbyte) {
    return (paramArrayOfbyte == null) ? null : Base64.encodeToString(paramArrayOfbyte, 0);
  }
  
  public static String b(byte[] paramArrayOfbyte) {
    return (paramArrayOfbyte == null) ? null : Base64.encodeToString(paramArrayOfbyte, 10);
  }
  
  public static String c(byte[] paramArrayOfbyte) {
    return (paramArrayOfbyte == null) ? null : Base64.encodeToString(paramArrayOfbyte, 11);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */