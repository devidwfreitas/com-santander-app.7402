import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;

public final class fdy {
  private static final String a = fdy.class.getSimpleName();
  
  private static final long b = 2000L;
  
  private static final Collection<String> i = new ArrayList<String>(2);
  
  private boolean c;
  
  private boolean d;
  
  private final boolean e;
  
  private final Camera f;
  
  private Handler g = new Handler(this.j);
  
  private int h = 1;
  
  private final Handler.Callback j = new fdz(this);
  
  private final Camera.AutoFocusCallback k = new fea(this);
  
  static {
    i.add("auto");
    i.add("macro");
  }
  
  public fdy(Camera paramCamera, fel paramfel) {
    this.f = paramCamera;
    String str = paramCamera.getParameters().getFocusMode();
    if (!paramfel.f() || !i.contains(str))
      bool = false; 
    this.e = bool;
    Log.i(a, "Current focus mode '" + str + "'; use auto focus? " + this.e);
    a();
  }
  
  private void c() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield c : Z
    //   6: ifne -> 45
    //   9: aload_0
    //   10: getfield g : Landroid/os/Handler;
    //   13: aload_0
    //   14: getfield h : I
    //   17: invokevirtual hasMessages : (I)Z
    //   20: ifne -> 45
    //   23: aload_0
    //   24: getfield g : Landroid/os/Handler;
    //   27: aload_0
    //   28: getfield g : Landroid/os/Handler;
    //   31: aload_0
    //   32: getfield h : I
    //   35: invokevirtual obtainMessage : (I)Landroid/os/Message;
    //   38: ldc2_w 2000
    //   41: invokevirtual sendMessageDelayed : (Landroid/os/Message;J)Z
    //   44: pop
    //   45: aload_0
    //   46: monitorexit
    //   47: return
    //   48: astore_1
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_1
    //   52: athrow
    // Exception table:
    //   from	to	target	type
    //   2	45	48	finally
  }
  
  private void d() {
    if (this.e && !this.c && !this.d)
      try {
        this.f.autoFocus(this.k);
        this.d = true;
        return;
      } catch (RuntimeException runtimeException) {
        Log.w(a, "Unexpected exception while focusing", runtimeException);
        c();
        return;
      }  
  }
  
  private void e() {
    this.g.removeMessages(this.h);
  }
  
  public void a() {
    this.c = false;
    d();
  }
  
  public void b() {
    this.c = true;
    this.d = false;
    e();
    if (this.e)
      try {
        this.f.cancelAutoFocus();
        return;
      } catch (RuntimeException runtimeException) {
        Log.w(a, "Unexpected exception while cancelling focusing", runtimeException);
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fdy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */