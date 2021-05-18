import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;

public final class cvu {
  private static IntentFilter a = new IntentFilter("android.intent.action.BATTERY_CHANGED");
  
  private static long b;
  
  private static float c = Float.NaN;
  
  @TargetApi(20)
  public static int a(Context paramContext) {
    byte b;
    boolean bool = true;
    if (paramContext == null || paramContext.getApplicationContext() == null)
      return -1; 
    Intent intent = paramContext.getApplicationContext().registerReceiver(null, a);
    if (intent == null) {
      i = 0;
    } else {
      i = intent.getIntExtra("plugged", 0);
    } 
    if ((i & 0x7) != 0) {
      i = 1;
    } else {
      i = 0;
    } 
    PowerManager powerManager = (PowerManager)paramContext.getSystemService("power");
    if (powerManager == null)
      return -1; 
    if (a(powerManager)) {
      b = 1;
    } else {
      b = 0;
    } 
    if (i != 0) {
      i = bool;
      return b << 1 | i;
    } 
    int i = 0;
    return b << 1 | i;
  }
  
  @TargetApi(20)
  public static boolean a(PowerManager paramPowerManager) {
    return cwd.i() ? paramPowerManager.isInteractive() : paramPowerManager.isScreenOn();
  }
  
  public static float b(Context paramContext) {
    // Byte code:
    //   0: ldc cvu
    //   2: monitorenter
    //   3: invokestatic elapsedRealtime : ()J
    //   6: getstatic cvu.b : J
    //   9: lsub
    //   10: ldc2_w 60000
    //   13: lcmp
    //   14: ifge -> 35
    //   17: getstatic cvu.c : F
    //   20: invokestatic isNaN : (F)Z
    //   23: ifne -> 35
    //   26: getstatic cvu.c : F
    //   29: fstore_1
    //   30: ldc cvu
    //   32: monitorexit
    //   33: fload_1
    //   34: freturn
    //   35: aload_0
    //   36: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   39: aconst_null
    //   40: getstatic cvu.a : Landroid/content/IntentFilter;
    //   43: invokevirtual registerReceiver : (Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   46: astore_0
    //   47: aload_0
    //   48: ifnull -> 75
    //   51: aload_0
    //   52: ldc 'level'
    //   54: iconst_m1
    //   55: invokevirtual getIntExtra : (Ljava/lang/String;I)I
    //   58: istore_2
    //   59: aload_0
    //   60: ldc 'scale'
    //   62: iconst_m1
    //   63: invokevirtual getIntExtra : (Ljava/lang/String;I)I
    //   66: istore_3
    //   67: iload_2
    //   68: i2f
    //   69: iload_3
    //   70: i2f
    //   71: fdiv
    //   72: putstatic cvu.c : F
    //   75: invokestatic elapsedRealtime : ()J
    //   78: putstatic cvu.b : J
    //   81: getstatic cvu.c : F
    //   84: fstore_1
    //   85: goto -> 30
    //   88: astore_0
    //   89: ldc cvu
    //   91: monitorexit
    //   92: aload_0
    //   93: athrow
    // Exception table:
    //   from	to	target	type
    //   3	30	88	finally
    //   35	47	88	finally
    //   51	75	88	finally
    //   75	85	88	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */