import java.util.ArrayDeque;
import java.util.concurrent.Executor;

class gnl implements Executor {
  final ArrayDeque<Runnable> a = new ArrayDeque<Runnable>();
  
  Runnable b;
  
  private gnl() {}
  
  protected void a() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Ljava/util/ArrayDeque;
    //   6: invokevirtual poll : ()Ljava/lang/Object;
    //   9: checkcast java/lang/Runnable
    //   12: astore_1
    //   13: aload_0
    //   14: aload_1
    //   15: putfield b : Ljava/lang/Runnable;
    //   18: aload_1
    //   19: ifnull -> 34
    //   22: getstatic gne.e : Ljava/util/concurrent/Executor;
    //   25: aload_0
    //   26: getfield b : Ljava/lang/Runnable;
    //   29: invokeinterface execute : (Ljava/lang/Runnable;)V
    //   34: aload_0
    //   35: monitorexit
    //   36: return
    //   37: astore_1
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Exception table:
    //   from	to	target	type
    //   2	18	37	finally
    //   22	34	37	finally
  }
  
  public void execute(Runnable paramRunnable) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Ljava/util/ArrayDeque;
    //   6: new gnm
    //   9: dup
    //   10: aload_0
    //   11: aload_1
    //   12: invokespecial <init> : (Lgnl;Ljava/lang/Runnable;)V
    //   15: invokevirtual offer : (Ljava/lang/Object;)Z
    //   18: pop
    //   19: aload_0
    //   20: getfield b : Ljava/lang/Runnable;
    //   23: ifnonnull -> 30
    //   26: aload_0
    //   27: invokevirtual a : ()V
    //   30: aload_0
    //   31: monitorexit
    //   32: return
    //   33: astore_1
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_1
    //   37: athrow
    // Exception table:
    //   from	to	target	type
    //   2	30	33	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gnl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */