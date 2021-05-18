import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

public class ars {
  private static final String a = "[ChatSecurity]";
  
  private static ars b;
  
  private static arv c = ard.a().C();
  
  private static String d;
  
  private static boolean e;
  
  public static ars a() {
    return a(true);
  }
  
  public static ars a(boolean paramBoolean) {
    if (b == null)
      b = new ars(); 
    if (c != null)
      c.a(true); 
    e = paramBoolean;
    return b;
  }
  
  public static void a(String paramString) {
    try {
      if (c != null)
        c.a(paramString); 
      return;
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
      Log.e("[ChatSecurity]", "NoSuchAlgorithmException setKeyPhase2 ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(noSuchAlgorithmException.getMessage())));
      return;
    } catch (NoSuchProviderException noSuchProviderException) {
      Log.e("[ChatSecurity]", "NoSuchProviderException setKeyPhase2 ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(noSuchProviderException.getMessage())));
      return;
    } catch (ClassNotFoundException classNotFoundException) {
      Log.e("[ChatSecurity]", "ClassNotFoundException setKeyPhase2 ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(classNotFoundException.getMessage())));
      return;
    } catch (InvalidKeyException invalidKeyException) {
      Log.e("[ChatSecurity]", "InvalidKeyException setKeyPhase2 ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(invalidKeyException.getMessage())));
      invalidKeyException.printStackTrace();
      return;
    } catch (InvalidKeySpecException invalidKeySpecException) {
      Log.e("[ChatSecurity]", "InvalidKeySpecException setKeyPhase2 ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(invalidKeySpecException.getMessage())));
      invalidKeySpecException.printStackTrace();
      return;
    } 
  }
  
  public byte[] a(byte[] paramArrayOfbyte) {
    Log.d("[ChatSecurity]", "Security => \"encrypt\" text in:  ".concat(ase.a(paramArrayOfbyte)));
    byte[] arrayOfByte2 = null;
    byte[] arrayOfByte1 = arrayOfByte2;
    if (paramArrayOfbyte != null)
      try {
        arrayOfByte1 = c.d(paramArrayOfbyte);
      } catch (Exception exception) {
        Log.e("[ChatSecurity]", "Exception ".concat("value: ").concat(Arrays.toString(paramArrayOfbyte)).concat(" ").concat(ase.a(exception.getMessage())));
        arrayOfByte1 = arrayOfByte2;
      }  
    Log.d("[ChatSecurity]", "Security => \"encrypt\" text out:  ".concat(ase.a(arrayOfByte1)));
    return arrayOfByte1;
  }
  
  public String b() {
    try {
      if (e) {
        if (c != null)
          d = c.a(); 
        return d;
      } 
      d = "";
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
      Log.e("[ChatSecurity]", "NoSuchAlgorithmException ".concat("value: getKeyPhase1").concat(" ").concat(ase.a(noSuchAlgorithmException.getMessage())));
    } catch (NoSuchProviderException noSuchProviderException) {
      Log.e("[ChatSecurity]", "NoSuchProviderException ".concat("value: getKeyPhase1").concat(" ").concat(ase.a(noSuchProviderException.getMessage())));
    } catch (ClassNotFoundException classNotFoundException) {
      Log.e("[ChatSecurity]", "ClassNotFoundException ".concat("value: getKeyPhase1").concat(" ").concat(ase.a(classNotFoundException.getMessage())));
    } catch (InvalidAlgorithmParameterException invalidAlgorithmParameterException) {
      Log.e("[ChatSecurity]", "InvalidAlgorithmParameterException ".concat("value: getKeyPhase1").concat(" ").concat(ase.a(invalidAlgorithmParameterException.getMessage())));
    } catch (InvalidParameterSpecException invalidParameterSpecException) {
      Log.e("[ChatSecurity]", "InvalidParameterSpecException ".concat("value: getKeyPhase1").concat(" ").concat(ase.a(invalidParameterSpecException.getMessage())));
    } 
    return d;
  }
  
  public String b(String paramString) {
    Log.d("[ChatSecurity]", "Security => \"encrypt\" text in:  ".concat(ase.a(paramString)));
    String str2 = "";
    String str1 = str2;
    if (paramString != null) {
      try {
        if (c != null) {
          str1 = paramString;
          if (e)
            str1 = c.f(paramString); 
          Log.d("[ChatSecurity]", "Security => \"encrypt\" text out:  ".concat(ase.a(str1)));
          return str1;
        } 
      } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
        Log.e("[ChatSecurity]", "NoSuchAlgorithmException encrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(noSuchAlgorithmException.getMessage())));
        String str = str2;
        Log.d("[ChatSecurity]", "Security => \"encrypt\" text out:  ".concat(ase.a(str)));
        return str;
      } catch (NoSuchPaddingException noSuchPaddingException) {
        Log.e("[ChatSecurity]", "NoSuchPaddingException encrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(noSuchPaddingException.getMessage())));
        String str = str2;
        Log.d("[ChatSecurity]", "Security => \"encrypt\" text out:  ".concat(ase.a(str)));
        return str;
      } catch (InvalidKeyException invalidKeyException) {
        Log.e("[ChatSecurity]", "InvalidKeyException encrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(invalidKeyException.getMessage())));
        String str = str2;
        Log.d("[ChatSecurity]", "Security => \"encrypt\" text out:  ".concat(ase.a(str)));
        return str;
      } catch (UnsupportedEncodingException unsupportedEncodingException) {
        Log.e("[ChatSecurity]", "UnsupportedEncodingException encrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(unsupportedEncodingException.getMessage())));
        String str = str2;
        Log.d("[ChatSecurity]", "Security => \"encrypt\" text out:  ".concat(ase.a(str)));
        return str;
      } catch (InvalidAlgorithmParameterException invalidAlgorithmParameterException) {
        Log.e("[ChatSecurity]", "InvalidAlgorithmParameterException encrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(invalidAlgorithmParameterException.getMessage())));
        String str = str2;
        Log.d("[ChatSecurity]", "Security => \"encrypt\" text out:  ".concat(ase.a(str)));
        return str;
      } catch (BadPaddingException badPaddingException) {
        Log.e("[ChatSecurity]", "BadPaddingException encrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(badPaddingException.getMessage())));
        String str = str2;
        Log.d("[ChatSecurity]", "Security => \"encrypt\" text out:  ".concat(ase.a(str)));
        return str;
      } catch (IllegalBlockSizeException illegalBlockSizeException) {
        Log.e("[ChatSecurity]", "IllegalBlockSizeException encrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(illegalBlockSizeException.getMessage())));
        String str = str2;
        Log.d("[ChatSecurity]", "Security => \"encrypt\" text out:  ".concat(ase.a(str)));
        return str;
      } catch (Exception exception) {
        Log.e("[ChatSecurity]", "Exception encrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(exception.getMessage())));
        str1 = str2;
        Log.d("[ChatSecurity]", "Security => \"encrypt\" text out:  ".concat(ase.a(str1)));
        return str1;
      } 
    } else {
      Log.d("[ChatSecurity]", "Security => \"encrypt\" text out:  ".concat(ase.a(str1)));
      return str1;
    } 
    str1 = "";
    Log.d("[ChatSecurity]", "Security => \"encrypt\" text out:  ".concat(ase.a(str1)));
    return str1;
  }
  
  public byte[] b(byte[] paramArrayOfbyte) {
    Log.d("[ChatSecurity]", "Security => \"decrypt\" text in:  ".concat(ase.a(paramArrayOfbyte)));
    byte[] arrayOfByte2 = null;
    byte[] arrayOfByte1 = arrayOfByte2;
    if (paramArrayOfbyte != null)
      try {
        arrayOfByte1 = c.a(paramArrayOfbyte);
      } catch (Exception exception) {
        Log.e("[ChatSecurity]", "Exception ".concat("value: ").concat(Arrays.toString(paramArrayOfbyte)).concat(" ").concat(ase.a(exception.getMessage())));
        arrayOfByte1 = arrayOfByte2;
      }  
    Log.d("[ChatSecurity]", "Security => \"decrypt\" text out:  ".concat(ase.a(arrayOfByte1)));
    return arrayOfByte1;
  }
  
  public String c(String paramString) {
    Log.d("[ChatSecurity]", "Security => \"decrypt\" text in:  ".concat(ase.a(paramString)));
    String str2 = "";
    String str1 = str2;
    if (paramString != null) {
      try {
        if (c != null) {
          str1 = paramString;
          if (e)
            str1 = c.c(paramString); 
          Log.d("[ChatSecurity]", "Security => \"decrypt\" text out:  ".concat(ase.a(str1)));
          return str1;
        } 
      } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
        Log.e("[ChatSecurity]", "NoSuchAlgorithmException decrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(noSuchAlgorithmException.getMessage())));
        String str = str2;
        Log.d("[ChatSecurity]", "Security => \"decrypt\" text out:  ".concat(ase.a(str)));
        return str;
      } catch (NoSuchPaddingException noSuchPaddingException) {
        Log.e("[ChatSecurity]", "NoSuchPaddingException decrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(noSuchPaddingException.getMessage())));
        String str = str2;
        Log.d("[ChatSecurity]", "Security => \"decrypt\" text out:  ".concat(ase.a(str)));
        return str;
      } catch (InvalidKeyException invalidKeyException) {
        Log.e("[ChatSecurity]", "InvalidKeyException decrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(invalidKeyException.getMessage())));
        String str = str2;
        Log.d("[ChatSecurity]", "Security => \"decrypt\" text out:  ".concat(ase.a(str)));
        return str;
      } catch (UnsupportedEncodingException unsupportedEncodingException) {
        Log.e("[ChatSecurity]", "UnsupportedEncodingException decrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(unsupportedEncodingException.getMessage())));
        String str = str2;
        Log.d("[ChatSecurity]", "Security => \"decrypt\" text out:  ".concat(ase.a(str)));
        return str;
      } catch (InvalidAlgorithmParameterException invalidAlgorithmParameterException) {
        Log.e("[ChatSecurity]", "InvalidAlgorithmParameterException decrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(invalidAlgorithmParameterException.getMessage())));
        String str = str2;
        Log.d("[ChatSecurity]", "Security => \"decrypt\" text out:  ".concat(ase.a(str)));
        return str;
      } catch (BadPaddingException badPaddingException) {
        Log.e("[ChatSecurity]", "BadPaddingException decrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(badPaddingException.getMessage())));
        String str = str2;
        Log.d("[ChatSecurity]", "Security => \"decrypt\" text out:  ".concat(ase.a(str)));
        return str;
      } catch (IllegalBlockSizeException illegalBlockSizeException) {
        Log.e("[ChatSecurity]", "IllegalBlockSizeException decrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(illegalBlockSizeException.getMessage())));
        String str = str2;
        Log.d("[ChatSecurity]", "Security => \"decrypt\" text out:  ".concat(ase.a(str)));
        return str;
      } catch (Exception exception) {
        Log.e("[ChatSecurity]", "Exception decrypt ".concat("value: ").concat(paramString).concat(" ").concat(ase.a(exception.getMessage())));
        str1 = str2;
        Log.d("[ChatSecurity]", "Security => \"decrypt\" text out:  ".concat(ase.a(str1)));
        return str1;
      } 
    } else {
      Log.d("[ChatSecurity]", "Security => \"decrypt\" text out:  ".concat(ase.a(str1)));
      return str1;
    } 
    str1 = "";
    Log.d("[ChatSecurity]", "Security => \"decrypt\" text out:  ".concat(ase.a(str1)));
    return str1;
  }
  
  public byte[] c(byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte != null)
      try {
        return c.b(Arrays.toString(paramArrayOfbyte));
      } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
        Log.e("[ChatSecurity]", "generateHash NoSuchAlgorithmException".concat("value: ").concat(Arrays.toString(paramArrayOfbyte)).concat(" ").concat(ase.a(noSuchAlgorithmException.getMessage())));
      } catch (UnsupportedEncodingException unsupportedEncodingException) {
        Log.e("[ChatSecurity]", "generateHash UnsupportedEncodingException".concat("value: ").concat(Arrays.toString(paramArrayOfbyte)).concat(" ").concat(ase.a(unsupportedEncodingException.getMessage())));
      }  
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ars.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */