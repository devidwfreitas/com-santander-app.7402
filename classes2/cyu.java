import android.content.Context;
import android.content.SharedPreferences;

public class cyu {
  private static SharedPreferences a = null;
  
  public static SharedPreferences a(Context paramContext) {
    // Byte code:
    //   0: ldc android/content/SharedPreferences
    //   2: monitorenter
    //   3: getstatic cyu.a : Landroid/content/SharedPreferences;
    //   6: ifnonnull -> 26
    //   9: new cyv
    //   12: dup
    //   13: aload_0
    //   14: invokespecial <init> : (Landroid/content/Context;)V
    //   17: invokestatic a : (Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    //   20: checkcast android/content/SharedPreferences
    //   23: putstatic cyu.a : Landroid/content/SharedPreferences;
    //   26: getstatic cyu.a : Landroid/content/SharedPreferences;
    //   29: astore_0
    //   30: ldc android/content/SharedPreferences
    //   32: monitorexit
    //   33: aload_0
    //   34: areturn
    //   35: astore_0
    //   36: ldc android/content/SharedPreferences
    //   38: monitorexit
    //   39: aload_0
    //   40: athrow
    // Exception table:
    //   from	to	target	type
    //   3	26	35	finally
    //   26	33	35	finally
    //   36	39	35	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cyu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */