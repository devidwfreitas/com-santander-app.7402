import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.santander.app.transfergolden.service.TransferGoldenService;

public class mwd extends BroadcastReceiver {
  private static final String a = "BootReceiver";
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    Log.d("BootReceiver", "onReceive");
    paramContext.startService(new Intent(paramContext, TransferGoldenService.class));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */