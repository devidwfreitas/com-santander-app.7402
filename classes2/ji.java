import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class ji {
  public static ji c;
  
  private static final String g = "1.2";
  
  protected String a;
  
  protected KeyPair b = null;
  
  private final String d = "AES/CBC/PKCS5Padding";
  
  private final IvParameterSpec e = new IvParameterSpec(new byte[] { 
        15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 
        5, 4, 3, 2, 1, 0 });
  
  private boolean f = false;
  
  public static ji a() {
    if (c == null)
      c = new ji(); 
    return c;
  }
  
  private byte[] b(boolean paramBoolean) {
    if (this.a == null)
      throw new Exception("Null derived Key"); 
    if (paramBoolean) {
      String str1 = (new StringBuilder(this.a)).reverse().toString();
      return ka.a(str1);
    } 
    String str = this.a;
    return ka.a(str);
  }
  
  private byte[] h(String paramString) {
    MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
    messageDigest.update(paramString.getBytes("UTF-8"));
    return messageDigest.digest();
  }
  
  public void a(String paramString) {
    if (!this.f)
      this.a = paramString; 
  }
  
  public void a(boolean paramBoolean) {
    this.f = paramBoolean;
    if (!paramBoolean) {
      this.a = null;
      this.b = null;
    } 
  }
  
  public byte[] a(byte[] paramArrayOfbyte) {
    int i = 0;
    byte[] arrayOfByte1 = b(false);
    byte[] arrayOfByte2 = new byte[arrayOfByte1.length];
    while (i < arrayOfByte1.length) {
      arrayOfByte2[i] = (byte)(arrayOfByte1[i] ^ 0xFFFFFFFF);
      i++;
    } 
    if (e())
      arrayOfByte1 = arrayOfByte2; 
    SecretKeySpec secretKeySpec = new SecretKeySpec(arrayOfByte1, "AES");
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    cipher.init(2, secretKeySpec, this.e);
    return cipher.doFinal(paramArrayOfbyte);
  }
  
  public String b() {
    return !this.f ? this.a : null;
  }
  
  public void b(String paramString) {
    byte[] arrayOfByte1 = ka.a(paramString);
    KeyAgreement keyAgreement = KeyAgreement.getInstance("DH");
    keyAgreement.init(this.b.getPrivate());
    keyAgreement.doPhase(KeyFactory.getInstance("DH").generatePublic(new X509EncodedKeySpec(arrayOfByte1)), true);
    arrayOfByte1 = keyAgreement.generateSecret();
    byte[] arrayOfByte2 = new byte[16];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, arrayOfByte2.length);
    this.a = kb.a((new SecretKeySpec(arrayOfByte2, "AES")).getEncoded());
  }
  
  public byte[] b(byte[] paramArrayOfbyte) {
    SecretKeySpec secretKeySpec = new SecretKeySpec(b(true), "AES");
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    cipher.init(2, secretKeySpec, this.e);
    return cipher.doFinal(paramArrayOfbyte);
  }
  
  public String c() {
    SecureRandom secureRandom = new SecureRandom();
    BigInteger bigInteger1 = BigInteger.probablePrime(1024, secureRandom);
    BigInteger bigInteger2 = BigInteger.probablePrime(1024, secureRandom);
    KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("DH");
    keyPairGenerator.initialize(new DHParameterSpec(bigInteger1, bigInteger2));
    this.b = keyPairGenerator.generateKeyPair();
    return kb.a(this.b.getPublic().getEncoded());
  }
  
  public String c(String paramString) {
    int i = 0;
    byte[] arrayOfByte1 = b(false);
    byte[] arrayOfByte2 = new byte[arrayOfByte1.length];
    while (i < arrayOfByte1.length) {
      arrayOfByte2[i] = (byte)(arrayOfByte1[i] ^ 0xFFFFFFFF);
      i++;
    } 
    if (e())
      arrayOfByte1 = arrayOfByte2; 
    SecretKeySpec secretKeySpec = new SecretKeySpec(arrayOfByte1, "AES");
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    cipher.init(2, secretKeySpec, this.e);
    return new String(cipher.doFinal(jy.a(paramString)), "UTF-8");
  }
  
  public byte[] c(byte[] paramArrayOfbyte) {
    SecretKeySpec secretKeySpec = new SecretKeySpec(b(true), "AES");
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    cipher.init(1, secretKeySpec, this.e);
    return cipher.doFinal(paramArrayOfbyte);
  }
  
  public String d() {
    return "1.2";
  }
  
  public String d(String paramString) {
    SecretKeySpec secretKeySpec = new SecretKeySpec(b(true), "AES");
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    cipher.init(2, secretKeySpec, this.e);
    return new String(cipher.doFinal(jy.a(paramString)), "UTF-8");
  }
  
  public byte[] d(byte[] paramArrayOfbyte) {
    int i = 0;
    byte[] arrayOfByte1 = b(false);
    byte[] arrayOfByte2 = new byte[arrayOfByte1.length];
    while (i < arrayOfByte1.length) {
      arrayOfByte2[i] = (byte)(arrayOfByte1[i] ^ 0xFFFFFFFF);
      i++;
    } 
    if (!e())
      arrayOfByte1 = arrayOfByte2; 
    SecretKeySpec secretKeySpec = new SecretKeySpec(arrayOfByte1, "AES");
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    cipher.init(1, secretKeySpec, this.e);
    return cipher.doFinal(paramArrayOfbyte);
  }
  
  public String e(String paramString) {
    SecretKeySpec secretKeySpec = new SecretKeySpec(b(true), "AES");
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    cipher.init(1, secretKeySpec, this.e);
    return jz.a(cipher.doFinal(paramString.getBytes()));
  }
  
  public boolean e() {
    return this.f;
  }
  
  public String f(String paramString) {
    int i = 0;
    byte[] arrayOfByte1 = b(false);
    byte[] arrayOfByte2 = new byte[arrayOfByte1.length];
    while (i < arrayOfByte1.length) {
      arrayOfByte2[i] = (byte)(arrayOfByte1[i] ^ 0xFFFFFFFF);
      i++;
    } 
    if (!e())
      arrayOfByte1 = arrayOfByte2; 
    SecretKeySpec secretKeySpec = new SecretKeySpec(arrayOfByte1, "AES");
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    cipher.init(1, secretKeySpec, this.e);
    return jz.a(cipher.doFinal(paramString.getBytes()));
  }
  
  public String g(String paramString) {
    byte[] arrayOfByte = h(paramString);
    SecretKeySpec secretKeySpec = new SecretKeySpec(b(false), "AES");
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    cipher.init(1, secretKeySpec, this.e);
    return jz.a(cipher.doFinal(arrayOfByte));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ji.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */