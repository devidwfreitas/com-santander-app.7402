import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

public class bhj extends BroadcastReceiver {
  protected void a(String paramString1, String paramString2, Bundle paramBundle) {}
  
  protected void b(String paramString1, String paramString2, Bundle paramBundle) {}
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    Bundle bundle;
    String str1 = paramIntent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
    String str2 = paramIntent.getStringExtra("com.facebook.platform.protocol.PROTOCOL_ACTION");
    if (str1 != null && str2 != null) {
      bundle = paramIntent.getExtras();
      if (bqa.f(paramIntent)) {
        b(str1, str2, bundle);
        return;
      } 
    } else {
      return;
    } 
    a(str1, str2, bundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bhj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */