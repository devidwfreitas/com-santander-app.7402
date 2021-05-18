import android.util.Base64;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.util.ArrayList;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;

public class nag {
  private static KeyStore a;
  
  private static final String b = "ERROR_LOAD_KEYSTORE";
  
  private static final String c = "santander-keystore";
  
  static {
    try {
      a = KeyStore.getInstance("AndroidKeyStore");
      a.load(null);
      return;
    } catch (Exception exception) {
      Log.e("ERROR_LOAD_KEYSTORE", exception.getMessage());
      return;
    } 
  }
  
  public static String a(String paramString) {
    try {
      RSAPublicKey rSAPublicKey = (RSAPublicKey)((KeyStore.PrivateKeyEntry)a.getEntry("santander-keystore", null)).getCertificate().getPublicKey();
      if (paramString.isEmpty())
        return ""; 
      Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding", "AndroidOpenSSL");
      cipher.init(1, rSAPublicKey);
      ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
      CipherOutputStream cipherOutputStream = new CipherOutputStream(byteArrayOutputStream, cipher);
      cipherOutputStream.write(paramString.getBytes("UTF-8"));
      cipherOutputStream.close();
      return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
    } catch (Exception exception) {
      Log.e("ERROR_LOAD_KEYSTORE", Log.getStackTraceString(exception));
      return "";
    } 
  }
  
  public static String b(String paramString) {
    int i = 0;
    try {
      PrivateKey privateKey = ((KeyStore.PrivateKeyEntry)a.getEntry("santander-keystore", null)).getPrivateKey();
      Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      cipher.init(2, privateKey);
      CipherInputStream cipherInputStream = new CipherInputStream(new ByteArrayInputStream(Base64.decode(paramString, 0)), cipher);
      ArrayList<Byte> arrayList = new ArrayList();
      while (true) {
        int j = cipherInputStream.read();
        if (j != -1) {
          arrayList.add(Byte.valueOf((byte)j));
          continue;
        } 
        byte[] arrayOfByte = new byte[arrayList.size()];
        while (i < arrayOfByte.length) {
          arrayOfByte[i] = ((Byte)arrayList.get(i)).byteValue();
          i++;
        } 
        return new String(arrayOfByte, 0, arrayOfByte.length, "UTF-8");
      } 
    } catch (Exception exception) {
      Log.e("ERROR_LOAD_KEYSTORE", Log.getStackTraceString(exception));
      return "";
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */