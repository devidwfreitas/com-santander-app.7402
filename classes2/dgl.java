import android.content.Context;

public class dgl {
  private static dgl b = new dgl();
  
  private dgk a = null;
  
  public static dgk b(Context paramContext) {
    return b.a(paramContext);
  }
  
  public dgk a(Context paramContext) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Ldgk;
    //   6: ifnonnull -> 28
    //   9: aload_1
    //   10: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   13: ifnonnull -> 37
    //   16: aload_0
    //   17: new dgk
    //   20: dup
    //   21: aload_1
    //   22: invokespecial <init> : (Landroid/content/Context;)V
    //   25: putfield a : Ldgk;
    //   28: aload_0
    //   29: getfield a : Ldgk;
    //   32: astore_1
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_1
    //   36: areturn
    //   37: aload_1
    //   38: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   41: astore_1
    //   42: goto -> 16
    //   45: astore_1
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_1
    //   49: athrow
    // Exception table:
    //   from	to	target	type
    //   2	16	45	finally
    //   16	28	45	finally
    //   28	33	45	finally
    //   37	42	45	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */