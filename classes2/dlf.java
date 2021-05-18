import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.MainThread;
import android.support.annotation.WorkerThread;

class dlf extends BroadcastReceiver {
  static final String a = dlf.class.getName();
  
  private final dlv b;
  
  private boolean c;
  
  private boolean d;
  
  dlf(dlv paramdlv) {
    csp.a(paramdlv);
    this.b = paramdlv;
  }
  
  private Context d() {
    return this.b.s();
  }
  
  private dkw e() {
    return this.b.f();
  }
  
  @WorkerThread
  public void a() {
    this.b.a();
    this.b.C();
    if (this.c)
      return; 
    d().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    this.d = this.b.r().x();
    e().D().a("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.d));
    this.c = true;
  }
  
  @WorkerThread
  public void b() {
    this.b.a();
    this.b.C();
    if (!c())
      return; 
    e().D().a("Unregistering connectivity change receiver");
    this.c = false;
    this.d = false;
    Context context = d();
    try {
      context.unregisterReceiver(this);
      return;
    } catch (IllegalArgumentException illegalArgumentException) {
      e().x().a("Failed to unregister the network broadcast receiver", illegalArgumentException);
      return;
    } 
  }
  
  @WorkerThread
  public boolean c() {
    this.b.C();
    return this.c;
  }
  
  @MainThread
  public void onReceive(Context paramContext, Intent paramIntent) {
    this.b.a();
    String str = paramIntent.getAction();
    e().D().a("NetworkBroadcastReceiver received action", str);
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(str)) {
      boolean bool = this.b.r().x();
      if (this.d != bool) {
        this.d = bool;
        this.b.h().a(new dlg(this, bool));
      } 
      return;
    } 
    e().z().a("NetworkBroadcastReceiver received unknown action", str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dlf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */