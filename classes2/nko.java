import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;

final class nko implements nja, nji {
  private final BroadcastReceiver a;
  
  private final Context b;
  
  private volatile int c;
  
  private volatile boolean d;
  
  private volatile boolean e;
  
  nko(Context paramContext, nhp paramnhp) {
    if (paramContext == null)
      throw new IllegalArgumentException(); 
    this.b = paramContext.getApplicationContext();
    this.a = a(paramnhp);
    this.a.onReceive(this.b, this.b.registerReceiver(this.a, new IntentFilter("android.intent.action.BATTERY_CHANGED")));
  }
  
  private BroadcastReceiver a(nhp paramnhp) {
    if (paramnhp == null)
      throw new IllegalArgumentException(); 
    return new nkp(this, paramnhp);
  }
  
  public void a(nil paramnil) {
    if (this.c != -1)
      paramnil.a("device_battery_percent", this.c + ""); 
    paramnil.a("device_ischarging", this.d + "");
  }
  
  public void a(nkg paramnkg) {
    this.b.unregisterReceiver(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nko.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */