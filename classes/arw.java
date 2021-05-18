import android.util.Base64;
import android.util.Log;
import java.security.SecureRandom;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class arw extends aru {
  private static final String a = "[FileCryptor]";
  
  private static final String b = "AES";
  
  private static final int c = 16;
  
  private byte[] a(String paramString, int paramInt, byte[] paramArrayOfbyte) {
    byte[] arrayOfByte1;
    boolean bool = false;
    Cipher cipher = Cipher.getInstance(a());
    if (paramInt == 1) {
      cipher.init(paramInt, a(paramString), b());
      arrayOfByte1 = b().getIV();
      byte[] arrayOfByte = new byte[arrayOfByte1.length + paramArrayOfbyte.length];
      for (paramInt = bool; paramInt < arrayOfByte.length; paramInt++) {
        byte b;
        if (paramInt < arrayOfByte1.length) {
          b = arrayOfByte1[paramInt];
        } else {
          b = paramArrayOfbyte[paramInt - arrayOfByte1.length];
        } 
        arrayOfByte[paramInt] = b;
      } 
      return cipher.doFinal(arrayOfByte);
    } 
    byte[] arrayOfByte2 = Arrays.copyOfRange(paramArrayOfbyte, 0, 16);
    cipher.init(paramInt, a((String)arrayOfByte1), a(arrayOfByte2));
    return cipher.doFinal(Arrays.copyOfRange(paramArrayOfbyte, 16, paramArrayOfbyte.length));
  }
  
  String a() {
    return "AES/CBC/PKCS5Padding";
  }
  
  public SecretKey a(String paramString) {
    return new SecretKeySpec(Base64.decode(paramString.getBytes(), 0), "AES");
  }
  
  IvParameterSpec a(byte[] paramArrayOfbyte) {
    Log.d("[FileCryptor]", "Log - IvParameterSpec - bytes.length: " + paramArrayOfbyte.length);
    return new IvParameterSpec(paramArrayOfbyte);
  }
  
  public byte[] a(String paramString, byte[] paramArrayOfbyte) {
    Log.d("[FileCryptor]", "Log - decrypt - value.length: " + paramArrayOfbyte.length);
    return a(paramString, 2, paramArrayOfbyte);
  }
  
  IvParameterSpec b() {
    SecureRandom secureRandom = new SecureRandom();
    byte[] arrayOfByte = new byte[16];
    secureRandom.nextBytes(arrayOfByte);
    return new IvParameterSpec(arrayOfByte);
  }
  
  public byte[] b(String paramString, byte[] paramArrayOfbyte) {
    return a(paramString, 1, paramArrayOfbyte);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\arw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */