import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;

public final class erq {
  private static final String a = erq.class.getSimpleName();
  
  private static final long b = 300000L;
  
  private final Context c;
  
  private final BroadcastReceiver d;
  
  private boolean e = false;
  
  private Handler f;
  
  private Runnable g;
  
  private boolean h;
  
  public erq(Context paramContext, Runnable paramRunnable) {
    this.c = paramContext;
    this.g = paramRunnable;
    this.d = new ers(this, null);
    this.f = new Handler();
  }
  
  private void a(boolean paramBoolean) {
    this.h = paramBoolean;
    if (this.e)
      a(); 
  }
  
  private void d() {
    if (this.e) {
      this.c.unregisterReceiver(this.d);
      this.e = false;
    } 
  }
  
  private void e() {
    if (!this.e) {
      this.c.registerReceiver(this.d, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
      this.e = true;
    } 
  }
  
  private void f() {
    this.f.removeCallbacksAndMessages(null);
  }
  
  public void a() {
    f();
    if (this.h)
      this.f.postDelayed(this.g, 300000L); 
  }
  
  public void b() {
    e();
    a();
  }
  
  public void c() {
    f();
    d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\erq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */