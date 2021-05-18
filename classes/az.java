import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class az {
  private static final ay a = new ba();
  
  public static int a(String paramString, OutputStream paramOutputStream) {
    return a.a(paramString, paramOutputStream);
  }
  
  public static int a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, OutputStream paramOutputStream) {
    return a.a(paramArrayOfbyte, paramInt1, paramInt2, paramOutputStream);
  }
  
  public static int a(byte[] paramArrayOfbyte, OutputStream paramOutputStream) {
    return a.a(paramArrayOfbyte, 0, paramArrayOfbyte.length, paramOutputStream);
  }
  
  public static byte[] a(String paramString) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    try {
      a.a(paramString, byteArrayOutputStream);
      return byteArrayOutputStream.toByteArray();
    } catch (IOException iOException) {
      throw new RuntimeException("exception decoding Hex string: " + iOException);
    } 
  }
  
  public static byte[] a(byte[] paramArrayOfbyte) {
    return a(paramArrayOfbyte, 0, paramArrayOfbyte.length);
  }
  
  public static byte[] a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    try {
      a.a(paramArrayOfbyte, paramInt1, paramInt2, byteArrayOutputStream);
      return byteArrayOutputStream.toByteArray();
    } catch (IOException iOException) {
      throw new RuntimeException("exception encoding Hex string: " + iOException);
    } 
  }
  
  public static byte[] b(byte[] paramArrayOfbyte) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    try {
      a.b(paramArrayOfbyte, 0, paramArrayOfbyte.length, byteArrayOutputStream);
      return byteArrayOutputStream.toByteArray();
    } catch (IOException iOException) {
      throw new RuntimeException("exception decoding Hex string: " + iOException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\az.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */