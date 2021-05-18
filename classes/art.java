import android.util.Log;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class art {
  private static art a;
  
  private static Cipher b;
  
  private static KeyGenerator c;
  
  private static String d = "";
  
  private static SecretKey e;
  
  private final int f = 16;
  
  public static art a(String paramString) {
    // Byte code:
    //   0: getstatic art.a : Lart;
    //   3: ifnonnull -> 16
    //   6: new art
    //   9: dup
    //   10: invokespecial <init> : ()V
    //   13: putstatic art.a : Lart;
    //   16: getstatic art.b : Ljavax/crypto/Cipher;
    //   19: ifnonnull -> 30
    //   22: ldc 'AES/CBC/PKCS5Padding'
    //   24: invokestatic getInstance : (Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   27: putstatic art.b : Ljavax/crypto/Cipher;
    //   30: getstatic art.c : Ljavax/crypto/KeyGenerator;
    //   33: ifnonnull -> 44
    //   36: ldc 'AES'
    //   38: invokestatic getInstance : (Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    //   41: putstatic art.c : Ljavax/crypto/KeyGenerator;
    //   44: getstatic art.e : Ljavax/crypto/SecretKey;
    //   47: ifnonnull -> 137
    //   50: aload_0
    //   51: ifnull -> 61
    //   54: aload_0
    //   55: invokevirtual isEmpty : ()Z
    //   58: ifeq -> 137
    //   61: new java/security/InvalidKeyException
    //   64: dup
    //   65: ldc 'Empty key'
    //   67: invokespecial <init> : (Ljava/lang/String;)V
    //   70: athrow
    //   71: astore_1
    //   72: ldc '[ChatSecurity]'
    //   74: ldc 'Cipher getInstance AES_CBC_PKSC5 NoSuchAlgorithmException'
    //   76: aload_1
    //   77: invokevirtual getMessage : ()Ljava/lang/String;
    //   80: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   83: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   86: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   89: pop
    //   90: goto -> 30
    //   93: astore_1
    //   94: ldc '[ChatSecurity]'
    //   96: ldc 'Cipher getInstance AES_CBC_PKSC5 NoSuchPaddingException'
    //   98: aload_1
    //   99: invokevirtual getMessage : ()Ljava/lang/String;
    //   102: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   105: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   108: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   111: pop
    //   112: goto -> 30
    //   115: astore_1
    //   116: ldc '[ChatSecurity]'
    //   118: ldc 'KeyGenerator getInstance AES_FLEXICORE NoSuchAlgorithmException '
    //   120: aload_1
    //   121: invokevirtual getMessage : ()Ljava/lang/String;
    //   124: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   127: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   130: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   133: pop
    //   134: goto -> 44
    //   137: aload_0
    //   138: ifnull -> 171
    //   141: aload_0
    //   142: invokevirtual isEmpty : ()Z
    //   145: ifne -> 171
    //   148: getstatic art.e : Ljavax/crypto/SecretKey;
    //   151: ifnull -> 164
    //   154: getstatic art.d : Ljava/lang/String;
    //   157: aload_0
    //   158: invokevirtual equals : (Ljava/lang/Object;)Z
    //   161: ifne -> 171
    //   164: aload_0
    //   165: invokestatic b : (Ljava/lang/String;)Ljavax/crypto/SecretKey;
    //   168: putstatic art.e : Ljavax/crypto/SecretKey;
    //   171: getstatic art.a : Lart;
    //   174: areturn
    // Exception table:
    //   from	to	target	type
    //   22	30	71	java/security/NoSuchAlgorithmException
    //   22	30	93	javax/crypto/NoSuchPaddingException
    //   36	44	115	java/security/NoSuchAlgorithmException
  }
  
  public static SecretKey a() {
    return c.generateKey();
  }
  
  public static void a(SecretKey paramSecretKey) {
    e = paramSecretKey;
  }
  
  private static SecretKey b(String paramString) {
    if (paramString != null) {
      byte[] arrayOfByte = paramString.getBytes();
      return new SecretKeySpec(arrayOfByte, 0, arrayOfByte.length, "AES");
    } 
    return null;
  }
  
  public Cipher b() {
    try {
      SecureRandom secureRandom = new SecureRandom();
      byte[] arrayOfByte = new byte[16];
      secureRandom.nextBytes(arrayOfByte);
      IvParameterSpec ivParameterSpec = new IvParameterSpec(arrayOfByte);
      b.init(1, e, ivParameterSpec);
    } catch (InvalidKeyException invalidKeyException) {
      Log.e("[ChatSecurity]", "Cipher getEncryptCipher InvalidKeyException".concat(ase.a(invalidKeyException.getMessage())));
    } catch (InvalidAlgorithmParameterException invalidAlgorithmParameterException) {
      Log.e("[ChatSecurity]", "Cipher getEncryptCipher InvalidAlgorithmParameterException".concat(ase.a(invalidAlgorithmParameterException.getMessage())));
    } 
    return b;
  }
  
  public Cipher c() {
    try {
      b.init(2, e);
    } catch (InvalidKeyException invalidKeyException) {
      Log.e("[ChatSecurity]", "Cipher getDecryptCipher InvalidKeyException".concat(ase.a(invalidKeyException.getMessage())));
    } 
    return b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\art.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */