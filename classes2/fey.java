import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

public class fey {
  public static final int a = 16;
  
  private static final String b = "ApplicationKey";
  
  private static final String c = "rsa_application_key_prefs";
  
  private static final String d = "com.rsa.mobilesdk.app_key";
  
  private static final String e = "INVALID";
  
  public static String a(Context paramContext) {
    // Byte code:
    //   0: ldc fey
    //   2: monitorenter
    //   3: aconst_null
    //   4: astore_1
    //   5: aload_0
    //   6: ifnull -> 33
    //   9: aload_0
    //   10: invokestatic b : (Landroid/content/Context;)Ljava/lang/String;
    //   13: astore_2
    //   14: aload_2
    //   15: astore_1
    //   16: aload_2
    //   17: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   20: ifeq -> 33
    //   23: aload_0
    //   24: invokestatic c : (Landroid/content/Context;)Ljava/lang/String;
    //   27: astore_1
    //   28: aload_0
    //   29: aload_1
    //   30: invokestatic a : (Landroid/content/Context;Ljava/lang/String;)V
    //   33: ldc fey
    //   35: monitorexit
    //   36: aload_1
    //   37: areturn
    //   38: astore_0
    //   39: ldc fey
    //   41: monitorexit
    //   42: aload_0
    //   43: athrow
    // Exception table:
    //   from	to	target	type
    //   9	14	38	finally
    //   16	33	38	finally
  }
  
  private static void a(Context paramContext, String paramString) {
    SharedPreferences sharedPreferences = paramContext.getSharedPreferences("rsa_application_key_prefs", 0);
    if (sharedPreferences == null) {
      Log.e("ApplicationKey", "unexpected error in storeApplicationKey, can't get shared preferences");
      return;
    } 
    SharedPreferences.Editor editor = sharedPreferences.edit();
    editor.putString("com.rsa.mobilesdk.app_key", paramString);
    editor.commit();
  }
  
  private static String b(Context paramContext) {
    SharedPreferences sharedPreferences = paramContext.getSharedPreferences("rsa_application_key_prefs", 0);
    if (sharedPreferences == null) {
      Log.e("ApplicationKey", "unexpected error in getStoredApplicationKey, can't get shared preferences");
      return "INVALID";
    } 
    return sharedPreferences.getString("com.rsa.mobilesdk.app_key", null);
  }
  
  private static String c(Context paramContext) {
    byte[] arrayOfByte = new byte[16];
    if (!fgf.b(arrayOfByte)) {
      Log.e("ApplicationKey", "unexpected error in getStoredApplicationKey, can't generate key");
      return "INVALID";
    } 
    return fgf.a(arrayOfByte);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fey.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */