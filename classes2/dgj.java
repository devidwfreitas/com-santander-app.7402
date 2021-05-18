import android.content.Context;

public class dgj {
  private static Context a;
  
  private static Boolean b;
  
  public static boolean a(Context paramContext) {
    // Byte code:
    //   0: ldc dgj
    //   2: monitorenter
    //   3: aload_0
    //   4: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   7: astore_2
    //   8: getstatic dgj.a : Landroid/content/Context;
    //   11: ifnull -> 39
    //   14: getstatic dgj.b : Ljava/lang/Boolean;
    //   17: ifnull -> 39
    //   20: getstatic dgj.a : Landroid/content/Context;
    //   23: aload_2
    //   24: if_acmpne -> 39
    //   27: getstatic dgj.b : Ljava/lang/Boolean;
    //   30: invokevirtual booleanValue : ()Z
    //   33: istore_1
    //   34: ldc dgj
    //   36: monitorexit
    //   37: iload_1
    //   38: ireturn
    //   39: aconst_null
    //   40: putstatic dgj.b : Ljava/lang/Boolean;
    //   43: aload_0
    //   44: invokevirtual getClassLoader : ()Ljava/lang/ClassLoader;
    //   47: ldc 'com.google.android.instantapps.supervisor.InstantAppsRuntime'
    //   49: invokevirtual loadClass : (Ljava/lang/String;)Ljava/lang/Class;
    //   52: pop
    //   53: iconst_1
    //   54: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   57: putstatic dgj.b : Ljava/lang/Boolean;
    //   60: aload_2
    //   61: putstatic dgj.a : Landroid/content/Context;
    //   64: getstatic dgj.b : Ljava/lang/Boolean;
    //   67: invokevirtual booleanValue : ()Z
    //   70: istore_1
    //   71: goto -> 34
    //   74: astore_0
    //   75: iconst_0
    //   76: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   79: putstatic dgj.b : Ljava/lang/Boolean;
    //   82: goto -> 60
    //   85: astore_0
    //   86: ldc dgj
    //   88: monitorexit
    //   89: aload_0
    //   90: athrow
    // Exception table:
    //   from	to	target	type
    //   3	34	85	finally
    //   39	43	85	finally
    //   43	60	74	java/lang/ClassNotFoundException
    //   43	60	85	finally
    //   60	71	85	finally
    //   75	82	85	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */