import java.util.concurrent.Executor;

public class bri {
  public static final int a = 8;
  
  private final Object c = new Object();
  
  private brl d;
  
  private final int e;
  
  private final Executor f;
  
  private brl g = null;
  
  private int h = 0;
  
  static {
    boolean bool;
    if (!bri.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    b = bool;
  }
  
  public bri() {
    this(8);
  }
  
  public bri(int paramInt) {
    this(paramInt, bhv.f());
  }
  
  public bri(int paramInt, Executor paramExecutor) {
    this.e = paramInt;
    this.f = paramExecutor;
  }
  
  private void a(brl parambrl) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield c : Ljava/lang/Object;
    //   6: astore_3
    //   7: aload_3
    //   8: monitorenter
    //   9: aload_1
    //   10: ifnull -> 35
    //   13: aload_0
    //   14: aload_1
    //   15: aload_0
    //   16: getfield g : Lbrl;
    //   19: invokevirtual a : (Lbrl;)Lbrl;
    //   22: putfield g : Lbrl;
    //   25: aload_0
    //   26: aload_0
    //   27: getfield h : I
    //   30: iconst_1
    //   31: isub
    //   32: putfield h : I
    //   35: aload_2
    //   36: astore_1
    //   37: aload_0
    //   38: getfield h : I
    //   41: aload_0
    //   42: getfield e : I
    //   45: if_icmpge -> 101
    //   48: aload_0
    //   49: getfield d : Lbrl;
    //   52: astore_2
    //   53: aload_2
    //   54: astore_1
    //   55: aload_2
    //   56: ifnull -> 101
    //   59: aload_0
    //   60: aload_2
    //   61: aload_0
    //   62: getfield d : Lbrl;
    //   65: invokevirtual a : (Lbrl;)Lbrl;
    //   68: putfield d : Lbrl;
    //   71: aload_0
    //   72: aload_2
    //   73: aload_0
    //   74: getfield g : Lbrl;
    //   77: iconst_0
    //   78: invokevirtual a : (Lbrl;Z)Lbrl;
    //   81: putfield g : Lbrl;
    //   84: aload_0
    //   85: aload_0
    //   86: getfield h : I
    //   89: iconst_1
    //   90: iadd
    //   91: putfield h : I
    //   94: aload_2
    //   95: iconst_1
    //   96: invokevirtual a : (Z)V
    //   99: aload_2
    //   100: astore_1
    //   101: aload_3
    //   102: monitorexit
    //   103: aload_1
    //   104: ifnull -> 112
    //   107: aload_0
    //   108: aload_1
    //   109: invokespecial b : (Lbrl;)V
    //   112: return
    //   113: astore_1
    //   114: aload_3
    //   115: monitorexit
    //   116: aload_1
    //   117: athrow
    // Exception table:
    //   from	to	target	type
    //   13	35	113	finally
    //   37	53	113	finally
    //   59	99	113	finally
    //   101	103	113	finally
    //   114	116	113	finally
  }
  
  private void b() {
    a((brl)null);
  }
  
  private void b(brl parambrl) {
    this.f.execute(new brj(this, parambrl));
  }
  
  public brk a(Runnable paramRunnable) {
    return a(paramRunnable, true);
  }
  
  public brk a(Runnable paramRunnable, boolean paramBoolean) {
    null = new brl(this, paramRunnable);
    synchronized (this.c) {
      this.d = null.a(this.d, paramBoolean);
      b();
      return null;
    } 
  }
  
  public void a() {
    // Byte code:
    //   0: aload_0
    //   1: getfield c : Ljava/lang/Object;
    //   4: astore #5
    //   6: aload #5
    //   8: monitorenter
    //   9: iconst_0
    //   10: istore_2
    //   11: iconst_0
    //   12: istore_1
    //   13: aload_0
    //   14: getfield g : Lbrl;
    //   17: ifnull -> 54
    //   20: aload_0
    //   21: getfield g : Lbrl;
    //   24: astore_3
    //   25: aload_3
    //   26: iconst_1
    //   27: invokevirtual b : (Z)V
    //   30: iload_1
    //   31: iconst_1
    //   32: iadd
    //   33: istore_2
    //   34: aload_3
    //   35: invokevirtual e : ()Lbrl;
    //   38: astore #4
    //   40: iload_2
    //   41: istore_1
    //   42: aload #4
    //   44: astore_3
    //   45: aload #4
    //   47: aload_0
    //   48: getfield g : Lbrl;
    //   51: if_acmpne -> 25
    //   54: getstatic bri.b : Z
    //   57: ifne -> 82
    //   60: aload_0
    //   61: getfield h : I
    //   64: iload_2
    //   65: if_icmpeq -> 82
    //   68: new java/lang/AssertionError
    //   71: dup
    //   72: invokespecial <init> : ()V
    //   75: athrow
    //   76: astore_3
    //   77: aload #5
    //   79: monitorexit
    //   80: aload_3
    //   81: athrow
    //   82: aload #5
    //   84: monitorexit
    //   85: return
    // Exception table:
    //   from	to	target	type
    //   13	25	76	finally
    //   25	30	76	finally
    //   34	40	76	finally
    //   45	54	76	finally
    //   54	76	76	finally
    //   77	80	76	finally
    //   82	85	76	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bri.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */