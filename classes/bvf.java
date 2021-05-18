import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class bvf extends BroadcastReceiver {
  private bvf(bvd parambvd) {}
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    if (paramIntent != null && "android.net.wifi.SCAN_RESULTS".equals(paramIntent.getAction()))
      synchronized (bvd.a(this.a)) {
        bvd.a(this.a).notify();
        bvd.b(this.a);
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bvf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */