import android.util.Base64;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Hex;

public class naf {
  private static IvParameterSpec p;
  
  public KeyPairGenerator a;
  
  public KeyPair b;
  
  public PublicKey c;
  
  public PrivateKey d;
  
  public byte[] e;
  
  public byte[] f;
  
  public Cipher g;
  
  public Cipher h;
  
  public String i;
  
  public String j;
  
  public String k;
  
  public String l;
  
  public String m;
  
  private miq n = miq.C();
  
  private final String o = "AES/CBC/PKCS5Padding";
  
  static {
    byte[] arrayOfByte = new byte[16];
    Arrays.fill(arrayOfByte, (byte)0);
    p = new IvParameterSpec(arrayOfByte);
  }
  
  public String a(String paramString) {
    MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
    messageDigest.update(paramString.getBytes("utf-8"));
    return new String(Hex.encodeHex(messageDigest.digest()));
  }
  
  public String a(byte[] paramArrayOfbyte) {
    MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
    messageDigest.update(paramArrayOfbyte);
    return new String(Hex.encodeHex(messageDigest.digest()));
  }
  
  public String a(byte[] paramArrayOfbyte, String paramString) {
    byte[] arrayOfByte = Base64.decode(paramString, 0);
    PublicKey publicKey = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(arrayOfByte));
    Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    cipher.init(1, publicKey);
    return Base64.encodeToString(cipher.doFinal(paramArrayOfbyte), 0);
  }
  
  public void a() {
    this.a = KeyPairGenerator.getInstance("RSA");
    this.a.initialize(1024);
    this.b = this.a.genKeyPair();
    this.c = this.b.getPublic();
    this.d = this.b.getPrivate();
    if (this.d != null) {
      this.k = new String(Base64.encode(this.c.getEncoded(), 2), "UTF-8");
      this.l = new String(Base64.encode(this.d.getEncoded(), 2), "UTF-8");
    } 
  }
  
  public String b(byte[] paramArrayOfbyte) {
    byte[] arrayOfByte = this.n.h();
    if (arrayOfByte != null && arrayOfByte.length > 0) {
      SecretKeySpec secretKeySpec = new SecretKeySpec(arrayOfByte, "AES");
      Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      cipher.init(1, secretKeySpec, p);
      return Base64.encodeToString(cipher.doFinal(paramArrayOfbyte), 0);
    } 
    return "";
  }
  
  public byte[] b(String paramString) {
    Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    cipher.init(2, this.d);
    return cipher.doFinal(Base64.decode(paramString, 0));
  }
  
  public String c(byte[] paramArrayOfbyte) {
    byte[] arrayOfByte = this.n.h();
    if (arrayOfByte != null && arrayOfByte.length > 0) {
      SecretKeySpec secretKeySpec = new SecretKeySpec(arrayOfByte, "AES");
      Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      cipher.init(2, secretKeySpec, p);
      return new String(cipher.doFinal(paramArrayOfbyte), "UTF-8");
    } 
    return "";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\naf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */