import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;

public class bgj implements SharedPreferences {
  protected static final String a = "UTF-8";
  
  public static boolean d;
  
  private static String e = null;
  
  private static String f = null;
  
  private static bgj g = null;
  
  protected SharedPreferences b;
  
  protected Context c;
  
  static {
    d = false;
  }
  
  public bgj(Context paramContext, SharedPreferences paramSharedPreferences) {
    this.b = paramSharedPreferences;
    this.c = paramContext;
    e = ef.a(paramContext);
    f = String.valueOf(e) + dy.a(paramContext) + dy.c(paramContext);
  }
  
  public static bgj a(Context paramContext, String paramString, int paramInt) {
    // Byte code:
    //   0: ldc bgj
    //   2: monitorenter
    //   3: getstatic bgj.g : Lbgj;
    //   6: ifnonnull -> 32
    //   9: new bgj
    //   12: dup
    //   13: aload_0
    //   14: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   17: aload_0
    //   18: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   21: aload_1
    //   22: iload_2
    //   23: invokevirtual getSharedPreferences : (Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   26: invokespecial <init> : (Landroid/content/Context;Landroid/content/SharedPreferences;)V
    //   29: putstatic bgj.g : Lbgj;
    //   32: getstatic bgj.g : Lbgj;
    //   35: astore_0
    //   36: ldc bgj
    //   38: monitorexit
    //   39: aload_0
    //   40: areturn
    //   41: astore_0
    //   42: ldc bgj
    //   44: monitorexit
    //   45: aload_0
    //   46: athrow
    // Exception table:
    //   from	to	target	type
    //   3	32	41	finally
    //   32	36	41	finally
  }
  
  private String a() {
    return new String(Base64.decode(dx.a().getBytes(), 0));
  }
  
  public String a(String paramString) {
    return Base64.encodeToString(paramString.getBytes(), 0);
  }
  
  protected String b(String paramString) {
    if (paramString != null)
      try {
        byte[] arrayOfByte1 = paramString.getBytes("UTF-8");
        SecretKey secretKey1 = SecretKeyFactory.getInstance(a()).generateSecret(new PBEKeySpec(e.toCharArray()));
        Cipher cipher1 = Cipher.getInstance(a());
        cipher1.init(1, secretKey1, new PBEParameterSpec(f.getBytes("UTF-8"), 20));
        return new String(Base64.encode(cipher1.doFinal(arrayOfByte1), 2), "UTF-8");
      } catch (Exception exception) {
        throw new RuntimeException(exception);
      }  
    byte[] arrayOfByte = new byte[0];
    SecretKey secretKey = SecretKeyFactory.getInstance(a()).generateSecret(new PBEKeySpec(e.toCharArray()));
    Cipher cipher = Cipher.getInstance(a());
    cipher.init(1, secretKey, new PBEParameterSpec(f.getBytes("UTF-8"), 20));
    return new String(Base64.encode(cipher.doFinal(arrayOfByte), 2), "UTF-8");
  }
  
  protected String c(String paramString) {
    if (paramString != null)
      try {
        byte[] arrayOfByte1 = Base64.decode(paramString.getBytes(), 0);
        SecretKey secretKey1 = SecretKeyFactory.getInstance(a()).generateSecret(new PBEKeySpec(e.toCharArray()));
        Cipher cipher1 = Cipher.getInstance(a());
        cipher1.init(2, secretKey1, new PBEParameterSpec(f.getBytes("UTF-8"), 20));
        return new String(cipher1.doFinal(arrayOfByte1), "UTF-8");
      } catch (Exception exception) {
        return paramString;
      }  
    byte[] arrayOfByte = new byte[0];
    SecretKey secretKey = SecretKeyFactory.getInstance(a()).generateSecret(new PBEKeySpec(e.toCharArray()));
    Cipher cipher = Cipher.getInstance(a());
    cipher.init(2, secretKey, new PBEParameterSpec(f.getBytes("UTF-8"), 20));
    return new String(cipher.doFinal(arrayOfByte), "UTF-8");
  }
  
  public boolean contains(String paramString) {
    return this.b.contains(paramString);
  }
  
  public SharedPreferences.Editor edit() {
    return new bgk(this);
  }
  
  public Map getAll() {
    throw new UnsupportedOperationException();
  }
  
  public boolean getBoolean(String paramString, boolean paramBoolean) {
    try {
      String str = this.b.getString(paramString, null);
      if (str != null)
        paramBoolean = Boolean.parseBoolean(c(str)); 
      return paramBoolean;
    } catch (ClassCastException classCastException) {
      return this.b.getBoolean(paramString, paramBoolean);
    } 
  }
  
  public float getFloat(String paramString, float paramFloat) {
    try {
      String str = this.b.getString(paramString, null);
      try {
        return Float.parseFloat(c(str));
      } catch (NumberFormatException numberFormatException) {
        d = true;
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
        return Integer.parseInt(c(str));
      } catch (NumberFormatException numberFormatException) {
        d = true;
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
        return Long.parseLong(c(str));
      } catch (NumberFormatException numberFormatException) {
        d = true;
        return paramLong;
      } 
    } catch (ClassCastException classCastException) {
      return this.b.getLong((String)numberFormatException, paramLong);
    } 
  }
  
  public String getString(String paramString1, String paramString2) {
    paramString1 = this.b.getString(paramString1, null);
    if (paramString1 != null)
      paramString2 = c(paramString1); 
    return paramString2;
  }
  
  public Set getStringSet(String paramString, Set paramSet) {
    throw new RuntimeException("");
  }
  
  public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener) {
    this.b.registerOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }
  
  public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener) {
    this.b.unregisterOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bgj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */