import java.lang.ref.WeakReference;

abstract class cwr extends cwp {
  private static final WeakReference<byte[]> b = (WeakReference)new WeakReference<byte>(null);
  
  private WeakReference<byte[]> a = b;
  
  cwr(byte[] paramArrayOfbyte) {
    super(paramArrayOfbyte);
  }
  
  byte[] c() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Ljava/lang/ref/WeakReference;
    //   6: invokevirtual get : ()Ljava/lang/Object;
    //   9: checkcast [B
    //   12: astore_2
    //   13: aload_2
    //   14: astore_1
    //   15: aload_2
    //   16: ifnonnull -> 36
    //   19: aload_0
    //   20: invokevirtual d : ()[B
    //   23: astore_1
    //   24: aload_0
    //   25: new java/lang/ref/WeakReference
    //   28: dup
    //   29: aload_1
    //   30: invokespecial <init> : (Ljava/lang/Object;)V
    //   33: putfield a : Ljava/lang/ref/WeakReference;
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_1
    //   39: areturn
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    // Exception table:
    //   from	to	target	type
    //   2	13	40	finally
    //   19	36	40	finally
    //   36	38	40	finally
    //   41	43	40	finally
  }
  
  protected abstract byte[] d();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */