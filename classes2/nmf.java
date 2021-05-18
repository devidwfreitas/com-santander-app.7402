import java.lang.ref.WeakReference;

@nlv
public final class nmf<T> implements nne<T> {
  private static final Object b = new Object();
  
  private final nne<T> c;
  
  private volatile Object d;
  
  private volatile WeakReference<T> e;
  
  private nmf(nne<T> paramnne) {
    if (!a && paramnne == null)
      throw new AssertionError(); 
    this.c = paramnne;
  }
  
  public static <T> nmf<T> a(nne<T> paramnne, nmg paramnmg) {
    paramnne = new nmf<T>(nmd.<nne<T>>a(paramnne));
    paramnmg.a((nmf<?>)paramnne);
    return (nmf<T>)paramnne;
  }
  
  private Object d() {
    Object object = this.d;
    return (object != null) ? object : (Object)((this.e != null) ? this.e.get() : null);
  }
  
  public void a() {
    // Byte code:
    //   0: aload_0
    //   1: getfield d : Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnull -> 43
    //   9: aload_1
    //   10: getstatic nmf.b : Ljava/lang/Object;
    //   13: if_acmpeq -> 43
    //   16: aload_0
    //   17: monitorenter
    //   18: aload_0
    //   19: new java/lang/ref/WeakReference
    //   22: dup
    //   23: aload_1
    //   24: invokespecial <init> : (Ljava/lang/Object;)V
    //   27: putfield e : Ljava/lang/ref/WeakReference;
    //   30: aload_0
    //   31: aconst_null
    //   32: putfield d : Ljava/lang/Object;
    //   35: aload_0
    //   36: monitorexit
    //   37: return
    //   38: astore_1
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_1
    //   42: athrow
    //   43: return
    // Exception table:
    //   from	to	target	type
    //   18	37	38	finally
    //   39	41	38	finally
  }
  
  public T b() {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial d : ()Ljava/lang/Object;
    //   4: astore_2
    //   5: aload_2
    //   6: astore_1
    //   7: aload_2
    //   8: ifnonnull -> 51
    //   11: aload_0
    //   12: monitorenter
    //   13: aload_0
    //   14: invokespecial d : ()Ljava/lang/Object;
    //   17: astore_2
    //   18: aload_2
    //   19: astore_1
    //   20: aload_2
    //   21: ifnonnull -> 49
    //   24: aload_0
    //   25: getfield c : Lnne;
    //   28: invokeinterface b : ()Ljava/lang/Object;
    //   33: astore_2
    //   34: aload_2
    //   35: astore_1
    //   36: aload_2
    //   37: ifnonnull -> 44
    //   40: getstatic nmf.b : Ljava/lang/Object;
    //   43: astore_1
    //   44: aload_0
    //   45: aload_1
    //   46: putfield d : Ljava/lang/Object;
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_1
    //   52: astore_2
    //   53: aload_1
    //   54: getstatic nmf.b : Ljava/lang/Object;
    //   57: if_acmpne -> 62
    //   60: aconst_null
    //   61: astore_2
    //   62: aload_2
    //   63: areturn
    //   64: astore_1
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_1
    //   68: athrow
    // Exception table:
    //   from	to	target	type
    //   13	18	64	finally
    //   24	34	64	finally
    //   40	44	64	finally
    //   44	49	64	finally
    //   49	51	64	finally
    //   65	67	64	finally
  }
  
  public void c() {
    // Byte code:
    //   0: aload_0
    //   1: getfield d : Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_0
    //   6: getfield e : Ljava/lang/ref/WeakReference;
    //   9: ifnull -> 64
    //   12: aload_1
    //   13: ifnonnull -> 64
    //   16: aload_0
    //   17: monitorenter
    //   18: aload_0
    //   19: getfield d : Ljava/lang/Object;
    //   22: astore_1
    //   23: aload_0
    //   24: getfield e : Ljava/lang/ref/WeakReference;
    //   27: ifnull -> 56
    //   30: aload_1
    //   31: ifnonnull -> 56
    //   34: aload_0
    //   35: getfield e : Ljava/lang/ref/WeakReference;
    //   38: invokevirtual get : ()Ljava/lang/Object;
    //   41: astore_1
    //   42: aload_1
    //   43: ifnull -> 56
    //   46: aload_0
    //   47: aload_1
    //   48: putfield d : Ljava/lang/Object;
    //   51: aload_0
    //   52: aconst_null
    //   53: putfield e : Ljava/lang/ref/WeakReference;
    //   56: aload_0
    //   57: monitorexit
    //   58: return
    //   59: astore_1
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_1
    //   63: athrow
    //   64: return
    // Exception table:
    //   from	to	target	type
    //   18	30	59	finally
    //   34	42	59	finally
    //   46	56	59	finally
    //   56	58	59	finally
    //   60	62	59	finally
  }
  
  static {
    boolean bool;
    if (!nmf.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    a = bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nmf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */