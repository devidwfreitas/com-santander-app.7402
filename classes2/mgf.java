import android.os.Handler;
import android.os.SystemClock;

public abstract class mgf {
  private static final int g = 1;
  
  private final long a;
  
  private final long b;
  
  private long c;
  
  private long d;
  
  private boolean e = false;
  
  private boolean f = false;
  
  private Handler h = new mgg(this);
  
  public mgf(long paramLong1, long paramLong2) {
    this.a = paramLong1;
    this.b = paramLong2;
  }
  
  public abstract void a();
  
  public abstract void a(long paramLong);
  
  public final void b() {
    this.h.removeMessages(1);
    this.e = true;
  }
  
  public final mgf c() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : J
    //   6: lconst_0
    //   7: lcmp
    //   8: ifgt -> 19
    //   11: aload_0
    //   12: invokevirtual a : ()V
    //   15: aload_0
    //   16: monitorexit
    //   17: aload_0
    //   18: areturn
    //   19: aload_0
    //   20: invokestatic elapsedRealtime : ()J
    //   23: aload_0
    //   24: getfield a : J
    //   27: ladd
    //   28: putfield c : J
    //   31: aload_0
    //   32: getfield h : Landroid/os/Handler;
    //   35: aload_0
    //   36: getfield h : Landroid/os/Handler;
    //   39: iconst_1
    //   40: invokevirtual obtainMessage : (I)Landroid/os/Message;
    //   43: invokevirtual sendMessage : (Landroid/os/Message;)Z
    //   46: pop
    //   47: aload_0
    //   48: iconst_0
    //   49: putfield e : Z
    //   52: aload_0
    //   53: iconst_0
    //   54: putfield f : Z
    //   57: goto -> 15
    //   60: astore_1
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_1
    //   64: athrow
    // Exception table:
    //   from	to	target	type
    //   2	15	60	finally
    //   19	57	60	finally
  }
  
  public long d() {
    this.d = this.c - SystemClock.elapsedRealtime();
    this.f = true;
    return this.d;
  }
  
  public long e() {
    this.c = this.d + SystemClock.elapsedRealtime();
    this.f = false;
    this.h.sendMessage(this.h.obtainMessage(1));
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */