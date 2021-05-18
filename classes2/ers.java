import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class ers extends BroadcastReceiver {
  private ers(erq paramerq) {}
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    if ("android.intent.action.BATTERY_CHANGED".equals(paramIntent.getAction())) {
      boolean bool;
      if (paramIntent.getIntExtra("plugged", -1) <= 0) {
        bool = true;
      } else {
        bool = false;
      } 
      erq.a(this.a).post(new ert(this, bool));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ers.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */