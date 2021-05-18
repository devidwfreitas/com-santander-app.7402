import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

final class fs implements fa<Object, Void> {
  fs(Object paramObject, ArrayList paramArrayList, AtomicBoolean paramAtomicBoolean, AtomicInteger paramAtomicInteger, fw paramfw) {}
  
  public Void a(fd<Object> paramfd) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual e : ()Z
    //   4: ifeq -> 28
    //   7: aload_0
    //   8: getfield a : Ljava/lang/Object;
    //   11: astore_2
    //   12: aload_2
    //   13: monitorenter
    //   14: aload_0
    //   15: getfield b : Ljava/util/ArrayList;
    //   18: aload_1
    //   19: invokevirtual g : ()Ljava/lang/Exception;
    //   22: invokevirtual add : (Ljava/lang/Object;)Z
    //   25: pop
    //   26: aload_2
    //   27: monitorexit
    //   28: aload_1
    //   29: invokevirtual d : ()Z
    //   32: ifeq -> 43
    //   35: aload_0
    //   36: getfield c : Ljava/util/concurrent/atomic/AtomicBoolean;
    //   39: iconst_1
    //   40: invokevirtual set : (Z)V
    //   43: aload_0
    //   44: getfield d : Ljava/util/concurrent/atomic/AtomicInteger;
    //   47: invokevirtual decrementAndGet : ()I
    //   50: ifne -> 92
    //   53: aload_0
    //   54: getfield b : Ljava/util/ArrayList;
    //   57: invokevirtual size : ()I
    //   60: ifeq -> 143
    //   63: aload_0
    //   64: getfield b : Ljava/util/ArrayList;
    //   67: invokevirtual size : ()I
    //   70: iconst_1
    //   71: if_icmpne -> 99
    //   74: aload_0
    //   75: getfield e : Lfw;
    //   78: aload_0
    //   79: getfield b : Ljava/util/ArrayList;
    //   82: iconst_0
    //   83: invokevirtual get : (I)Ljava/lang/Object;
    //   86: checkcast java/lang/Exception
    //   89: invokevirtual b : (Ljava/lang/Exception;)V
    //   92: aconst_null
    //   93: areturn
    //   94: astore_1
    //   95: aload_2
    //   96: monitorexit
    //   97: aload_1
    //   98: athrow
    //   99: new eg
    //   102: dup
    //   103: ldc 'There were %d exceptions.'
    //   105: iconst_1
    //   106: anewarray java/lang/Object
    //   109: dup
    //   110: iconst_0
    //   111: aload_0
    //   112: getfield b : Ljava/util/ArrayList;
    //   115: invokevirtual size : ()I
    //   118: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   121: aastore
    //   122: invokestatic format : (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   125: aload_0
    //   126: getfield b : Ljava/util/ArrayList;
    //   129: invokespecial <init> : (Ljava/lang/String;Ljava/util/List;)V
    //   132: astore_1
    //   133: aload_0
    //   134: getfield e : Lfw;
    //   137: aload_1
    //   138: invokevirtual b : (Ljava/lang/Exception;)V
    //   141: aconst_null
    //   142: areturn
    //   143: aload_0
    //   144: getfield c : Ljava/util/concurrent/atomic/AtomicBoolean;
    //   147: invokevirtual get : ()Z
    //   150: ifeq -> 162
    //   153: aload_0
    //   154: getfield e : Lfw;
    //   157: invokevirtual c : ()V
    //   160: aconst_null
    //   161: areturn
    //   162: aload_0
    //   163: getfield e : Lfw;
    //   166: aconst_null
    //   167: invokevirtual b : (Ljava/lang/Object;)V
    //   170: aconst_null
    //   171: areturn
    // Exception table:
    //   from	to	target	type
    //   14	28	94	finally
    //   95	97	94	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */