import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class del extends Handler {
  public del(dej paramdej, Looper paramLooper) {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage) {
    // Byte code:
    //   0: aload_1
    //   1: getfield what : I
    //   4: tableswitch default -> 28, 0 -> 61, 1 -> 153
    //   28: aload_1
    //   29: getfield what : I
    //   32: istore_2
    //   33: ldc 'TransformedResultImpl'
    //   35: new java/lang/StringBuilder
    //   38: dup
    //   39: bipush #70
    //   41: invokespecial <init> : (I)V
    //   44: ldc 'TransformationResultHandler received unknown message type: '
    //   46: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: iload_2
    //   50: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   53: invokevirtual toString : ()Ljava/lang/String;
    //   56: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   59: pop
    //   60: return
    //   61: aload_1
    //   62: getfield obj : Ljava/lang/Object;
    //   65: checkcast cpy
    //   68: astore_3
    //   69: aload_0
    //   70: getfield a : Ldej;
    //   73: invokestatic d : (Ldej;)Ljava/lang/Object;
    //   76: astore_1
    //   77: aload_1
    //   78: monitorenter
    //   79: aload_3
    //   80: ifnonnull -> 112
    //   83: aload_0
    //   84: getfield a : Ldej;
    //   87: invokestatic e : (Ldej;)Ldej;
    //   90: new com/google/android/gms/common/api/Status
    //   93: dup
    //   94: bipush #13
    //   96: ldc 'Transform returned null'
    //   98: invokespecial <init> : (ILjava/lang/String;)V
    //   101: invokestatic a : (Ldej;Lcom/google/android/gms/common/api/Status;)V
    //   104: aload_1
    //   105: monitorexit
    //   106: return
    //   107: astore_3
    //   108: aload_1
    //   109: monitorexit
    //   110: aload_3
    //   111: athrow
    //   112: aload_3
    //   113: instanceof ddy
    //   116: ifeq -> 139
    //   119: aload_0
    //   120: getfield a : Ldej;
    //   123: invokestatic e : (Ldej;)Ldej;
    //   126: aload_3
    //   127: checkcast ddy
    //   130: invokevirtual b : ()Lcom/google/android/gms/common/api/Status;
    //   133: invokestatic a : (Ldej;Lcom/google/android/gms/common/api/Status;)V
    //   136: goto -> 104
    //   139: aload_0
    //   140: getfield a : Ldej;
    //   143: invokestatic e : (Ldej;)Ldej;
    //   146: aload_3
    //   147: invokevirtual a : (Lcpy;)V
    //   150: goto -> 104
    //   153: aload_1
    //   154: getfield obj : Ljava/lang/Object;
    //   157: checkcast java/lang/RuntimeException
    //   160: astore_3
    //   161: aload_3
    //   162: invokevirtual getMessage : ()Ljava/lang/String;
    //   165: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   168: astore_1
    //   169: aload_1
    //   170: invokevirtual length : ()I
    //   173: ifeq -> 192
    //   176: ldc 'Runtime exception on the transformation worker thread: '
    //   178: aload_1
    //   179: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   182: astore_1
    //   183: ldc 'TransformedResultImpl'
    //   185: aload_1
    //   186: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   189: pop
    //   190: aload_3
    //   191: athrow
    //   192: new java/lang/String
    //   195: dup
    //   196: ldc 'Runtime exception on the transformation worker thread: '
    //   198: invokespecial <init> : (Ljava/lang/String;)V
    //   201: astore_1
    //   202: goto -> 183
    // Exception table:
    //   from	to	target	type
    //   83	104	107	finally
    //   104	106	107	finally
    //   108	110	107	finally
    //   112	136	107	finally
    //   139	150	107	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\del.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */