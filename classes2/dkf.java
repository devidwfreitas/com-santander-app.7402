import android.os.Handler;

abstract class dkf {
  private static volatile Handler b;
  
  private final dlv a;
  
  private final Runnable c;
  
  private volatile long d;
  
  private boolean e;
  
  dkf(dlv paramdlv) {
    csp.a(paramdlv);
    this.a = paramdlv;
    this.e = true;
    this.c = new dkg(this);
  }
  
  private Handler d() {
    // Byte code:
    //   0: getstatic dkf.b : Landroid/os/Handler;
    //   3: ifnull -> 10
    //   6: getstatic dkf.b : Landroid/os/Handler;
    //   9: areturn
    //   10: ldc dkf
    //   12: monitorenter
    //   13: getstatic dkf.b : Landroid/os/Handler;
    //   16: ifnonnull -> 39
    //   19: new android/os/Handler
    //   22: dup
    //   23: aload_0
    //   24: getfield a : Ldlv;
    //   27: invokevirtual s : ()Landroid/content/Context;
    //   30: invokevirtual getMainLooper : ()Landroid/os/Looper;
    //   33: invokespecial <init> : (Landroid/os/Looper;)V
    //   36: putstatic dkf.b : Landroid/os/Handler;
    //   39: getstatic dkf.b : Landroid/os/Handler;
    //   42: astore_1
    //   43: ldc dkf
    //   45: monitorexit
    //   46: aload_1
    //   47: areturn
    //   48: astore_1
    //   49: ldc dkf
    //   51: monitorexit
    //   52: aload_1
    //   53: athrow
    // Exception table:
    //   from	to	target	type
    //   13	39	48	finally
    //   39	46	48	finally
    //   49	52	48	finally
  }
  
  public abstract void a();
  
  public void a(long paramLong) {
    c();
    if (paramLong >= 0L) {
      this.d = this.a.t().a();
      if (!d().postDelayed(this.c, paramLong))
        this.a.f().x().a("Failed to schedule delayed post. time", Long.valueOf(paramLong)); 
    } 
  }
  
  public boolean b() {
    return (this.d != 0L);
  }
  
  public void c() {
    this.d = 0L;
    d().removeCallbacks(this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dkf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */