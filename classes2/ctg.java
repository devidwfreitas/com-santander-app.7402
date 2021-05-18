public abstract class ctg<TListener> {
  private TListener a;
  
  private boolean b;
  
  public ctg(ctb paramctb, TListener paramTListener) {
    this.a = paramTListener;
    this.b = false;
  }
  
  protected abstract void a(TListener paramTListener);
  
  public void b() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Ljava/lang/Object;
    //   6: astore_1
    //   7: aload_0
    //   8: getfield b : Z
    //   11: ifeq -> 59
    //   14: aload_0
    //   15: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   18: astore_2
    //   19: ldc 'GmsClient'
    //   21: new java/lang/StringBuilder
    //   24: dup
    //   25: aload_2
    //   26: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   29: invokevirtual length : ()I
    //   32: bipush #47
    //   34: iadd
    //   35: invokespecial <init> : (I)V
    //   38: ldc 'Callback proxy '
    //   40: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: aload_2
    //   44: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc ' being reused. This is not safe.'
    //   49: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual toString : ()Ljava/lang/String;
    //   55: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   58: pop
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_1
    //   62: ifnull -> 70
    //   65: aload_0
    //   66: aload_1
    //   67: invokevirtual a : (Ljava/lang/Object;)V
    //   70: aload_0
    //   71: monitorenter
    //   72: aload_0
    //   73: iconst_1
    //   74: putfield b : Z
    //   77: aload_0
    //   78: monitorexit
    //   79: aload_0
    //   80: invokevirtual c : ()V
    //   83: return
    //   84: astore_1
    //   85: aload_0
    //   86: monitorexit
    //   87: aload_1
    //   88: athrow
    //   89: astore_1
    //   90: aload_1
    //   91: athrow
    //   92: astore_1
    //   93: aload_0
    //   94: monitorexit
    //   95: aload_1
    //   96: athrow
    // Exception table:
    //   from	to	target	type
    //   2	59	84	finally
    //   59	61	84	finally
    //   65	70	89	java/lang/RuntimeException
    //   72	79	92	finally
    //   85	87	84	finally
    //   93	95	92	finally
  }
  
  public void c() {
    d();
    synchronized (ctb.c(this.d)) {
      ctb.c(this.d).remove(this);
      return;
    } 
  }
  
  public void d() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aconst_null
    //   4: putfield a : Ljava/lang/Object;
    //   7: aload_0
    //   8: monitorexit
    //   9: return
    //   10: astore_1
    //   11: aload_0
    //   12: monitorexit
    //   13: aload_1
    //   14: athrow
    // Exception table:
    //   from	to	target	type
    //   2	9	10	finally
    //   11	13	10	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ctg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */