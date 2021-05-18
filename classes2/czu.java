import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

class czu extends BroadcastReceiver {
  czu(czs paramczs) {}
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    if (Log.isLoggable("InstanceID", 3)) {
      paramIntent.getStringExtra("registration_id");
      String str = String.valueOf(paramIntent.getExtras());
      Log.d("InstanceID", (new StringBuilder(String.valueOf(str).length() + 46)).append("Received GSF callback using dynamic receiver: ").append(str).toString());
    } 
    this.a.zzn(paramIntent);
    this.a.stop();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */