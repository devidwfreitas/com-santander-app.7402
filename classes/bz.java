import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;

public class bz {
  public static byte[] a(byte[] paramArrayOfbyte) {
    try {
      ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
      DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
      (new ax()).a(paramArrayOfbyte, 0, paramArrayOfbyte.length, dataOutputStream);
      return byteArrayOutputStream.toByteArray();
    } catch (Exception exception) {
      throw new Exception();
    } 
  }
  
  public static String b(byte[] paramArrayOfbyte) {
    try {
      return new String(a(paramArrayOfbyte));
    } catch (Exception exception) {
      throw new Exception();
    } 
  }
  
  public static byte[] c(byte[] paramArrayOfbyte) {
    try {
      ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
      DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
      (new ax()).b(paramArrayOfbyte, 0, paramArrayOfbyte.length, dataOutputStream);
      return byteArrayOutputStream.toByteArray();
    } catch (Exception exception) {
      throw new Exception();
    } 
  }
  
  public static String d(byte[] paramArrayOfbyte) {
    try {
      return new String(c(paramArrayOfbyte));
    } catch (Exception exception) {
      throw new Exception();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */