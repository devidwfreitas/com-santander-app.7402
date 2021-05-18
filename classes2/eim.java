import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.firebase.iid.FirebaseInstanceIdService;

public class eim extends BroadcastReceiver {
  public eim(FirebaseInstanceIdService paramFirebaseInstanceIdService, int paramInt) {}
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    if (FirebaseInstanceIdService.b(paramContext)) {
      if (FirebaseInstanceIdService.a(this.b))
        Log.d("FirebaseInstanceId", "connectivity changed. starting background sync."); 
      this.b.getApplicationContext().unregisterReceiver(this);
      eiy.a().a(paramContext, FirebaseInstanceIdService.a(this.a));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eim.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */