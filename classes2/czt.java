import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.iid.MessengerCompat;

class czt extends Handler {
  czt(czs paramczs, Looper paramLooper) {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage) {
    czs.zza(this.a, paramMessage, MessengerCompat.a(paramMessage));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */