import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

class cze extends Handler {
  cze(czd paramczd, Looper paramLooper) {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage) {
    if (paramMessage == null || !(paramMessage.obj instanceof Intent))
      Log.w("GCM", "Dropping invalid message"); 
    Intent intent = (Intent)paramMessage.obj;
    if ("com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction())) {
      czd.a(this.a).add(intent);
      return;
    } 
    if (!czd.a(this.a, intent)) {
      intent.setPackage(czd.b(this.a).getPackageName());
      czd.b(this.a).sendBroadcast(intent);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cze.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */