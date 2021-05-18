import android.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public abstract class aru {
  private static final String a = "AES";
  
  private byte[] a(String paramString, int paramInt, byte[] paramArrayOfbyte) {
    SecretKey secretKey = a(paramString);
    Cipher cipher = Cipher.getInstance(a());
    cipher.init(paramInt, secretKey, b());
    return cipher.doFinal(paramArrayOfbyte);
  }
  
  abstract String a();
  
  public SecretKey a(String paramString) {
    return new SecretKeySpec(Base64.decode(paramString.getBytes(), 0), "AES");
  }
  
  public byte[] a(String paramString, byte[] paramArrayOfbyte) {
    return a(paramString, 2, paramArrayOfbyte);
  }
  
  abstract IvParameterSpec b();
  
  public byte[] b(String paramString, byte[] paramArrayOfbyte) {
    return a(paramString, 1, paramArrayOfbyte);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aru.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */