import android.content.Intent;
import java.util.HashMap;
import java.util.Map;

public final class bnj implements bhd {
  private static Map<Integer, bnk> a = new HashMap<Integer, bnk>();
  
  private Map<Integer, bnk> b = new HashMap<Integer, bnk>();
  
  private static bnk a(Integer paramInteger) {
    // Byte code:
    //   0: ldc bnj
    //   2: monitorenter
    //   3: getstatic bnj.a : Ljava/util/Map;
    //   6: aload_0
    //   7: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   12: checkcast bnk
    //   15: astore_0
    //   16: ldc bnj
    //   18: monitorexit
    //   19: aload_0
    //   20: areturn
    //   21: astore_0
    //   22: ldc bnj
    //   24: monitorexit
    //   25: aload_0
    //   26: athrow
    // Exception table:
    //   from	to	target	type
    //   3	16	21	finally
  }
  
  public static void a(int paramInt, bnk parambnk) {
    // Byte code:
    //   0: ldc bnj
    //   2: monitorenter
    //   3: aload_1
    //   4: ldc 'callback'
    //   6: invokestatic a : (Ljava/lang/Object;Ljava/lang/String;)V
    //   9: getstatic bnj.a : Ljava/util/Map;
    //   12: iload_0
    //   13: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   16: invokeinterface containsKey : (Ljava/lang/Object;)Z
    //   21: istore_2
    //   22: iload_2
    //   23: ifeq -> 30
    //   26: ldc bnj
    //   28: monitorexit
    //   29: return
    //   30: getstatic bnj.a : Ljava/util/Map;
    //   33: iload_0
    //   34: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   37: aload_1
    //   38: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   43: pop
    //   44: goto -> 26
    //   47: astore_1
    //   48: ldc bnj
    //   50: monitorexit
    //   51: aload_1
    //   52: athrow
    // Exception table:
    //   from	to	target	type
    //   3	22	47	finally
    //   30	44	47	finally
  }
  
  private static boolean b(int paramInt1, int paramInt2, Intent paramIntent) {
    bnk bnk = a(Integer.valueOf(paramInt1));
    return (bnk != null) ? bnk.a(paramInt2, paramIntent) : false;
  }
  
  public boolean a(int paramInt1, int paramInt2, Intent paramIntent) {
    bnk bnk = this.b.get(Integer.valueOf(paramInt1));
    return (bnk != null) ? bnk.a(paramInt2, paramIntent) : b(paramInt1, paramInt2, paramIntent);
  }
  
  public void b(int paramInt, bnk parambnk) {
    bqx.a(parambnk, "callback");
    this.b.put(Integer.valueOf(paramInt), parambnk);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bnj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */