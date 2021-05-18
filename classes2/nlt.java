public final class nlt<T> implements nlh<T>, nne<T> {
  private static final Object b = new Object();
  
  private volatile nne<T> c;
  
  private volatile Object d = b;
  
  private nlt(nne<T> paramnne) {
    if (!a && paramnne == null)
      throw new AssertionError(); 
    this.c = paramnne;
  }
  
  public static <T> nne<T> a(nne<T> paramnne) {
    nmd.a(paramnne);
    return (paramnne instanceof nlt) ? paramnne : new nlt<T>(paramnne);
  }
  
  public static <T> nlh<T> b(nne<T> paramnne) {
    return (paramnne instanceof nlh) ? (nlh<T>)paramnne : new nlt<T>(nmd.<nne<T>>a(paramnne));
  }
  
  public T b() {
    // Byte code:
    //   0: aload_0
    //   1: getfield d : Ljava/lang/Object;
    //   4: astore_2
    //   5: aload_2
    //   6: astore_1
    //   7: aload_2
    //   8: getstatic nlt.b : Ljava/lang/Object;
    //   11: if_acmpne -> 110
    //   14: aload_0
    //   15: monitorenter
    //   16: aload_0
    //   17: getfield d : Ljava/lang/Object;
    //   20: astore_2
    //   21: aload_2
    //   22: astore_1
    //   23: aload_2
    //   24: getstatic nlt.b : Ljava/lang/Object;
    //   27: if_acmpne -> 108
    //   30: aload_0
    //   31: getfield c : Lnne;
    //   34: invokeinterface b : ()Ljava/lang/Object;
    //   39: astore_1
    //   40: aload_0
    //   41: getfield d : Ljava/lang/Object;
    //   44: astore_2
    //   45: aload_2
    //   46: getstatic nlt.b : Ljava/lang/Object;
    //   49: if_acmpeq -> 98
    //   52: aload_2
    //   53: aload_1
    //   54: if_acmpeq -> 98
    //   57: new java/lang/IllegalStateException
    //   60: dup
    //   61: new java/lang/StringBuilder
    //   64: dup
    //   65: invokespecial <init> : ()V
    //   68: ldc 'Scoped provider was invoked recursively returning different results: '
    //   70: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: aload_2
    //   74: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   77: ldc ' & '
    //   79: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: aload_1
    //   83: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   86: invokevirtual toString : ()Ljava/lang/String;
    //   89: invokespecial <init> : (Ljava/lang/String;)V
    //   92: athrow
    //   93: astore_1
    //   94: aload_0
    //   95: monitorexit
    //   96: aload_1
    //   97: athrow
    //   98: aload_0
    //   99: aload_1
    //   100: putfield d : Ljava/lang/Object;
    //   103: aload_0
    //   104: aconst_null
    //   105: putfield c : Lnne;
    //   108: aload_0
    //   109: monitorexit
    //   110: aload_1
    //   111: areturn
    // Exception table:
    //   from	to	target	type
    //   16	21	93	finally
    //   23	52	93	finally
    //   57	93	93	finally
    //   94	96	93	finally
    //   98	108	93	finally
    //   108	110	93	finally
  }
  
  static {
    boolean bool;
    if (!nlt.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    a = bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nlt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */