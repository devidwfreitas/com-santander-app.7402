import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.iid.MessengerCompat;

class eip extends Handler {
  eip(eio parameio, Looper paramLooper) {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage) {
    int i = MessengerCompat.a(paramMessage);
    eiu.a((Context)this.a);
    this.a.getPackageManager();
    if (i != eiu.c && i != eiu.b) {
      int j = eiu.b;
      int k = eiu.c;
      Log.w("FirebaseInstanceId", (new StringBuilder(77)).append("Message from unexpected caller ").append(i).append(" mine=").append(j).append(" appid=").append(k).toString());
      return;
    } 
    this.a.b((Intent)paramMessage.obj);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eip.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */