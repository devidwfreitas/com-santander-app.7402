import java.util.ArrayList;
import java.util.List;

class dsn {
  public static final boolean a = dsm.b;
  
  private final List<dso> b = new ArrayList<dso>();
  
  private boolean c = false;
  
  private long a() {
    if (this.b.size() == 0)
      return 0L; 
    long l = ((dso)this.b.get(0)).c;
    return ((dso)this.b.get(this.b.size() - 1)).c - l;
  }
  
  public void a(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield c : Z
    //   7: aload_0
    //   8: invokespecial a : ()J
    //   11: lstore #4
    //   13: lload #4
    //   15: lconst_0
    //   16: lcmp
    //   17: ifgt -> 23
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: aload_0
    //   24: getfield b : Ljava/util/List;
    //   27: iconst_0
    //   28: invokeinterface get : (I)Ljava/lang/Object;
    //   33: checkcast dso
    //   36: getfield c : J
    //   39: lstore_2
    //   40: ldc '(%-4d ms) %s'
    //   42: iconst_2
    //   43: anewarray java/lang/Object
    //   46: dup
    //   47: iconst_0
    //   48: lload #4
    //   50: invokestatic valueOf : (J)Ljava/lang/Long;
    //   53: aastore
    //   54: dup
    //   55: iconst_1
    //   56: aload_1
    //   57: aastore
    //   58: invokestatic b : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   61: aload_0
    //   62: getfield b : Ljava/util/List;
    //   65: invokeinterface iterator : ()Ljava/util/Iterator;
    //   70: astore_1
    //   71: aload_1
    //   72: invokeinterface hasNext : ()Z
    //   77: ifeq -> 20
    //   80: aload_1
    //   81: invokeinterface next : ()Ljava/lang/Object;
    //   86: checkcast dso
    //   89: astore #6
    //   91: aload #6
    //   93: getfield c : J
    //   96: lstore #4
    //   98: ldc '(+%-4d) [%2d] %s'
    //   100: iconst_3
    //   101: anewarray java/lang/Object
    //   104: dup
    //   105: iconst_0
    //   106: lload #4
    //   108: lload_2
    //   109: lsub
    //   110: invokestatic valueOf : (J)Ljava/lang/Long;
    //   113: aastore
    //   114: dup
    //   115: iconst_1
    //   116: aload #6
    //   118: getfield b : J
    //   121: invokestatic valueOf : (J)Ljava/lang/Long;
    //   124: aastore
    //   125: dup
    //   126: iconst_2
    //   127: aload #6
    //   129: getfield a : Ljava/lang/String;
    //   132: aastore
    //   133: invokestatic b : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   136: lload #4
    //   138: lstore_2
    //   139: goto -> 71
    //   142: astore_1
    //   143: aload_0
    //   144: monitorexit
    //   145: aload_1
    //   146: athrow
    // Exception table:
    //   from	to	target	type
    //   2	13	142	finally
    //   23	71	142	finally
    //   71	136	142	finally
  }
  
  public void a(String paramString, long paramLong) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield c : Z
    //   6: ifeq -> 24
    //   9: new java/lang/IllegalStateException
    //   12: dup
    //   13: ldc 'Marker added to finished log'
    //   15: invokespecial <init> : (Ljava/lang/String;)V
    //   18: athrow
    //   19: astore_1
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_1
    //   23: athrow
    //   24: aload_0
    //   25: getfield b : Ljava/util/List;
    //   28: new dso
    //   31: dup
    //   32: aload_1
    //   33: lload_2
    //   34: invokestatic elapsedRealtime : ()J
    //   37: invokespecial <init> : (Ljava/lang/String;JJ)V
    //   40: invokeinterface add : (Ljava/lang/Object;)Z
    //   45: pop
    //   46: aload_0
    //   47: monitorexit
    //   48: return
    // Exception table:
    //   from	to	target	type
    //   2	19	19	finally
    //   24	46	19	finally
  }
  
  protected void finalize() {
    if (!this.c) {
      a("Request on the loose");
      dsm.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dsn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */