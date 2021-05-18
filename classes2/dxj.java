import android.content.Context;
import android.os.RemoteException;

public final class dxj {
  private static boolean a = false;
  
  public static int a(Context paramContext) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: ldc dxj
    //   4: monitorenter
    //   5: aload_0
    //   6: ldc 'Context is null'
    //   8: invokestatic a : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   11: pop
    //   12: getstatic dxj.a : Z
    //   15: istore_2
    //   16: iload_2
    //   17: ifeq -> 25
    //   20: ldc dxj
    //   22: monitorexit
    //   23: iload_1
    //   24: ireturn
    //   25: aload_0
    //   26: invokestatic a : (Landroid/content/Context;)Leas;
    //   29: astore_0
    //   30: aload_0
    //   31: invokestatic a : (Leas;)V
    //   34: iconst_1
    //   35: putstatic dxj.a : Z
    //   38: goto -> 20
    //   41: astore_0
    //   42: ldc dxj
    //   44: monitorexit
    //   45: aload_0
    //   46: athrow
    //   47: astore_0
    //   48: aload_0
    //   49: getfield a : I
    //   52: istore_1
    //   53: goto -> 20
    // Exception table:
    //   from	to	target	type
    //   5	16	41	finally
    //   25	30	47	cop
    //   25	30	41	finally
    //   30	38	41	finally
    //   48	53	41	finally
  }
  
  public static void a(eas parameas) {
    try {
      dva.a(parameas.a());
      edn.a(parameas.b());
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dxj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */