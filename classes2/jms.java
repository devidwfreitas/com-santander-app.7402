import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class jms extends BroadcastReceiver {
  jms(jmn paramjmn) {}
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    if (paramIntent.getAction().equals("android.location.PROVIDERS_CHANGED"))
      this.a.d(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jms.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */