import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.Profile;

public abstract class bjh {
  private final BroadcastReceiver a;
  
  private final LocalBroadcastManager b;
  
  private boolean c = false;
  
  public bjh() {
    bqx.b();
    this.a = new bjj(this, null);
    this.b = LocalBroadcastManager.getInstance(bhv.h());
    a();
  }
  
  private void d() {
    IntentFilter intentFilter = new IntentFilter();
    intentFilter.addAction("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
    this.b.registerReceiver(this.a, intentFilter);
  }
  
  public void a() {
    if (this.c)
      return; 
    d();
    this.c = true;
  }
  
  protected abstract void a(Profile paramProfile1, Profile paramProfile2);
  
  public void b() {
    if (!this.c)
      return; 
    this.b.unregisterReceiver(this.a);
    this.c = false;
  }
  
  public boolean c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bjh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */