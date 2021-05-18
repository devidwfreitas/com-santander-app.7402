import android.content.Context;

public class dhk {
  private boolean a = false;
  
  private dhl b = null;
  
  public <T> T a(dhd<T> paramdhd) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Z
    //   6: ifne -> 18
    //   9: aload_1
    //   10: invokevirtual b : ()Ljava/lang/Object;
    //   13: astore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_1
    //   17: areturn
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_1
    //   21: aload_0
    //   22: getfield b : Ldhl;
    //   25: invokevirtual a : (Ldhl;)Ljava/lang/Object;
    //   28: areturn
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    // Exception table:
    //   from	to	target	type
    //   2	16	29	finally
    //   18	20	29	finally
    //   30	32	29	finally
  }
  
  public void a(Context paramContext) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Z
    //   6: ifeq -> 12
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: aload_0
    //   13: aload_1
    //   14: getstatic com/google/android/gms/dynamite/DynamiteModule.e : Lcyc;
    //   17: ldc 'com.google.android.gms.flags'
    //   19: invokestatic a : (Landroid/content/Context;Lcyc;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    //   22: ldc 'com.google.android.gms.flags.impl.FlagProviderImpl'
    //   24: invokevirtual a : (Ljava/lang/String;)Landroid/os/IBinder;
    //   27: invokestatic asInterface : (Landroid/os/IBinder;)Ldhl;
    //   30: putfield b : Ldhl;
    //   33: aload_0
    //   34: getfield b : Ldhl;
    //   37: aload_1
    //   38: invokestatic a : (Ljava/lang/Object;)Lcwx;
    //   41: invokeinterface init : (Lcwx;)V
    //   46: aload_0
    //   47: iconst_1
    //   48: putfield a : Z
    //   51: aload_0
    //   52: monitorexit
    //   53: return
    //   54: astore_1
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_1
    //   58: athrow
    //   59: astore_1
    //   60: ldc 'FlagValueProvider'
    //   62: ldc 'Failed to initialize flags module.'
    //   64: aload_1
    //   65: invokestatic w : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   68: pop
    //   69: goto -> 51
    //   72: astore_1
    //   73: goto -> 60
    // Exception table:
    //   from	to	target	type
    //   2	11	54	finally
    //   12	51	72	cyb
    //   12	51	59	android/os/RemoteException
    //   12	51	54	finally
    //   51	53	54	finally
    //   55	57	54	finally
    //   60	69	54	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dhk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */