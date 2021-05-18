import android.content.Context;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.util.Base64;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;

public class mzb implements SharedPreferences {
  protected static final String a = "UTF-8";
  
  public static boolean d;
  
  private static char[] e = null;
  
  private static byte[] f = null;
  
  private static char[] g = null;
  
  private static byte[] h = null;
  
  protected SharedPreferences b;
  
  protected Context c;
  
  static {
    d = false;
  }
  
  public mzb(Context paramContext, SharedPreferences paramSharedPreferences) {
    this.b = paramSharedPreferences;
    this.c = paramContext;
    a(Settings.Secure.getString(paramContext.getContentResolver(), "android_id"));
    b(Settings.Secure.getString(paramContext.getContentResolver(), "android_id"));
  }
  
  public static mzb a(Context paramContext, String paramString, int paramInt) {
    // Byte code:
    //   0: ldc mzb
    //   2: monitorenter
    //   3: new mzb
    //   6: dup
    //   7: aload_0
    //   8: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   11: aload_0
    //   12: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   15: aload_1
    //   16: iload_2
    //   17: invokevirtual getSharedPreferences : (Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   20: invokespecial <init> : (Landroid/content/Context;Landroid/content/SharedPreferences;)V
    //   23: astore_0
    //   24: ldc mzb
    //   26: monitorexit
    //   27: aload_0
    //   28: areturn
    //   29: astore_0
    //   30: ldc mzb
    //   32: monitorexit
    //   33: aload_0
    //   34: athrow
    // Exception table:
    //   from	to	target	type
    //   3	24	29	finally
  }
  
  public static void a(String paramString) {
    e = paramString.toCharArray();
  }
  
  public static void b() {
    g = e;
  }
  
  public static void b(String paramString) {
    try {
      f = paramString.getBytes("UTF-8");
      return;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw new RuntimeException(unsupportedEncodingException);
    } 
  }
  
  public static void c() {
    e = g;
  }
  
  public static void d() {
    h = f;
  }
  
  public static void e() {
    f = h;
  }
  
  private boolean e(String paramString) {
    return ("true".equalsIgnoreCase(paramString) || "false".equalsIgnoreCase(paramString));
  }
  
  public mzc a() {
    return new mzc(this);
  }
  
  protected String c(String paramString) {
    if (paramString != null)
      try {
        byte[] arrayOfByte1 = paramString.getBytes("UTF-8");
        SecretKey secretKey1 = SecretKeyFactory.getInstance("PBEWithMD5AndDES").generateSecret(new PBEKeySpec(e));
        Cipher cipher1 = Cipher.getInstance("PBEWithMD5AndDES");
        cipher1.init(1, secretKey1, new PBEParameterSpec(f, 20));
        return new String(Base64.encode(cipher1.doFinal(arrayOfByte1), 2), "UTF-8");
      } catch (Exception exception) {
        throw new RuntimeException(exception);
      }  
    byte[] arrayOfByte = new byte[0];
    SecretKey secretKey = SecretKeyFactory.getInstance("PBEWithMD5AndDES").generateSecret(new PBEKeySpec(e));
    Cipher cipher = Cipher.getInstance("PBEWithMD5AndDES");
    cipher.init(1, secretKey, new PBEParameterSpec(f, 20));
    return new String(Base64.encode(cipher.doFinal(arrayOfByte), 2), "UTF-8");
  }
  
  public boolean contains(String paramString) {
    return this.b.contains(paramString);
  }
  
  protected String d(String paramString) {
    if (paramString != null)
      try {
        byte[] arrayOfByte1 = Base64.decode(paramString, 0);
        SecretKey secretKey1 = SecretKeyFactory.getInstance("PBEWithMD5AndDES").generateSecret(new PBEKeySpec(e));
        Cipher cipher1 = Cipher.getInstance("PBEWithMD5AndDES");
        cipher1.init(2, secretKey1, new PBEParameterSpec(f, 20));
        return new String(cipher1.doFinal(arrayOfByte1), "UTF-8");
      } catch (Exception exception) {
        Log.e(getClass().getName(), "Warning, could not decrypt the value.  It may be stored in plaintext.  " + exception.getMessage());
        return paramString;
      }  
    byte[] arrayOfByte = new byte[0];
    SecretKey secretKey = SecretKeyFactory.getInstance("PBEWithMD5AndDES").generateSecret(new PBEKeySpec(e));
    Cipher cipher = Cipher.getInstance("PBEWithMD5AndDES");
    cipher.init(2, secretKey, new PBEParameterSpec(f, 20));
    return new String(cipher.doFinal(arrayOfByte), "UTF-8");
  }
  
  public Map<String, ?> getAll() {
    throw new UnsupportedOperationException();
  }
  
  public boolean getBoolean(String paramString, boolean paramBoolean) {
    try {
      String str = this.b.getString(paramString, null);
      paramString = d(str);
      if (!e(paramString)) {
        d = true;
        Log.e(getClass().getName(), "Warning, could not decrypt the value.  Possible incorrect key used.");
      } 
      if (str != null)
        paramBoolean = Boolean.parseBoolean(paramString); 
      return paramBoolean;
    } catch (ClassCastException classCastException) {
      return this.b.getBoolean(paramString, paramBoolean);
    } 
  }
  
  public float getFloat(String paramString, float paramFloat) {
    try {
      String str = this.b.getString(paramString, null);
      try {
        return Float.parseFloat(d(str));
      } catch (NumberFormatException numberFormatException) {
        d = true;
        Log.e(getClass().getName(), "Warning, could not decrypt the value.  Possible incorrect key.  " + numberFormatException.getMessage());
        return paramFloat;
      } 
    } catch (ClassCastException classCastException) {
      return this.b.getFloat((String)numberFormatException, paramFloat);
    } 
  }
  
  public int getInt(String paramString, int paramInt) {
    try {
      String str = this.b.getString(paramString, null);
      try {
        return Integer.parseInt(d(str));
      } catch (NumberFormatException numberFormatException) {
        d = true;
        Log.e(getClass().getName(), "Warning, could not decrypt the value.  Possible incorrect key.  " + numberFormatException.getMessage());
        return paramInt;
      } 
    } catch (ClassCastException classCastException) {
      return this.b.getInt((String)numberFormatException, paramInt);
    } 
  }
  
  public long getLong(String paramString, long paramLong) {
    try {
      String str = this.b.getString(paramString, null);
      try {
        return Long.parseLong(d(str));
      } catch (NumberFormatException numberFormatException) {
        d = true;
        Log.e(getClass().getName(), "Warning, could not decrypt the value.  Possible incorrect key.  " + numberFormatException.getMessage());
        return paramLong;
      } 
    } catch (ClassCastException classCastException) {
      return this.b.getLong((String)numberFormatException, paramLong);
    } 
  }
  
  public String getString(String paramString1, String paramString2) {
    paramString1 = this.b.getString(paramString1, null);
    if (paramString1 != null)
      paramString2 = d(paramString1); 
    return paramString2;
  }
  
  public Set<String> getStringSet(String paramString, Set<String> paramSet) {
    throw new RuntimeException("This class does not work with String Sets.");
  }
  
  public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener) {
    this.b.registerOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }
  
  public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener) {
    this.b.unregisterOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mzb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */